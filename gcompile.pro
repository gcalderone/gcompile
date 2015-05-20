;; *******************************************************************
;; gcompile: a runtime compiler for IDL
;;
;; Copyright (C) 2015 Giorgio Calderone
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public icense
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.
;;
;; *******************************************************************


;=====================================================================
;NAME:
;  gcompile
;
;PURPOSE:
;  This routine provides a replacement for the .COMPILE executive
;  command: it allows to compile a .PRO file within IDL programs.
;
PRO $
   gcompile $
   , filepro                   $ ;;IN,String|Path to the ".pro" file to be compiled
   , CLEAR=clear               $ ;;KW       |Clear list of compiled files
   , PACKAGE=package           $ ;;KW       |file is a package initialization procedure, to be executed after compilation
   , SKIP_RESOLVE=skipResolve  $ ;;KW       |Skip call to RESOLVE_ALL at the end
   , _EXTRA=extra                ;;OPT      |Keywords passed to the package initialization procedure
  COMPILE_OPT IDL2
  ON_ERROR, 2

  COMMON COM_GCOMPILE, compiledFiles
  IF (N_ELEMENTS(compiledFiles) EQ 0) THEN $
     compiledFiles = []

  IF (KEYWORD_SET(clear)) THEN BEGIN
     compiledFIles = []
     RETURN
  ENDIF


  ;;Check input parameter
  IF (SIZE(filepro, /tname) NE 'STRING') THEN $
     MESSAGE, 'Input parameter is supposed to be a string'

  IF (N_ELEMENTS(filepro) NE 1) THEN $
     MESSAGE, 'Input parameter must be a scalar'

  ;;Check if file has already been compiled
  i = WHERE(compiledFiles EQ filepro)
  IF (i[0] NE -1) THEN RETURN

  ;;Check file exists, is not a directory and is a .pro file
  fi = FILE_INFO(filepro)
  IF (~fi.exists) THEN $
     MESSAGE, 'File ' + filepro + ' does not exists'

  IF (fi.directory) THEN $
     MESSAGE, filepro + ' is a directory, while a .pro file was expected'

  IF (STRUPCASE(STRMID(filepro, 3, 4, /reverse)) NE '.PRO') THEN $
     MESSAGE, filepro + ' is a not a .pro file'


  ;;Extract the absolute path and the routine name
  tmp = STRSPLIT(FILE_EXPAND_PATH(filepro), '/\', /preserve_null, /extract)
  path = STRJOIN(tmp[0:-2], '/') + '/'
  procName = tmp[-1]
  procName = STRMID(procName, 0, STRLEN(procName)-4)


  ;:Compile source code in filepro
  backup_quiet = !QUIET
  !QUIET = 1
  tmpFile = 'gcompile_tmp'
  OPENW, lun, tmpFile + '.pro', /get_lun
  PRINTF, lun, '@' + filepro
  PRINTF, lun, 'PRO ' + tmpFile
  PRINTF, lun, 'END'
  FREE_LUN, lun
  RESOLVE_ROUTINE, tmpFile, /COMPILE  ;_ILE
  FILE_DELETE, tmpFile + '.pro', /allow
  !QUIET = backup_quiet


  ;;Add filepro to the list of compiled files
  compiledFiles = [compiledFiles, filepro]

  ;;If we are not compiling a package our job ends here
  IF (~KEYWORD_SET(package)) THEN RETURN

  ;;Call the package initialization procedure, pass the absolute
  ;;package path and the _EXTRA keywords
  MESSAGE, /info, '--> ' + filepro
  if (KEYWORD_SET(extra)) THEN CALL_PROCEDURE, procName, path, _EXTRA=extra $
  ELSE                         CALL_PROCEDURE, procName, path

  ;;Now call RESOLVE_ALL to check for undefined procedure/functions.
  IF (KEYWORD_SET(skipResolve)) THEN RETURN
  backup_quiet = !QUIET
  !QUIET = 1
  RESOLVE_ALL, /CONTINUE_ON_ERROR, UNRESOLVED=unresolved
  !QUIET = backup_quiet
END
