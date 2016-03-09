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
   gcompile    $
   , filepro   $  ;;IN,String|Path to the ".pro" file to be compiled
   , HOLD=hold    ;;KW       |Postpone compilation until "gcompile" is called without "/hold"
  COMPILE_OPT IDL2
  ON_ERROR, 2

  hold = KEYWORD_SET(hold) 

  IF (N_PARAMS() EQ 1) THEN BEGIN
     ;;Check input parameter
     IF (SIZE(filepro, /tname) NE 'STRING') THEN $
        MESSAGE, 'Input parameter is supposed to be a string'

     IF (N_ELEMENTS(filepro) NE 1) THEN $
        MESSAGE, 'Input parameter must be a scalar'

     ;;Check that file exists, it is not a directory and it is a .pro file
     fi = FILE_INFO(filepro)
     IF (~fi.exists) THEN $
        MESSAGE, 'File ' + _filepro + ' does not exists'
     
     IF (fi.directory) THEN $
        MESSAGE, filepro + ' is a directory, while a .pro file was expected'
     
     IF (STRUPCASE(STRMID(filepro, 3, 4, /reverse)) NE '.PRO') THEN $
        MESSAGE, filepro + ' is a not a .pro file'
  ENDIF


  ;;Compile source code in filepro
  procName = 'gcompile_tmp'
  tmpDir   = GETENV('IDL_TMPDIR') 
  tmpFile  = tmpDir + procName + '.pro'

  OPENW, lun, tmpFile, /get_lun, /append

  IF (N_PARAMS() EQ 1) THEN $
     PRINTF, lun, '@' + FILE_EXPAND_PATH(filepro)

  IF (~hold) THEN BEGIN
     PRINTF, lun, 'PRO ' + procName
     PRINTF, lun, 'END'
  ENDIF

  FREE_LUN, lun

  IF (~hold) THEN BEGIN
     backup_quiet = !QUIET
     !QUIET = 1
     CD, tmpDir, CURRENT=current
     RESOLVE_ROUTINE, procName, /compile_full_file     
     CD, current
     !QUIET = backup_quiet

     FILE_DELETE, tmpFile, /allow
  ENDIF
END
