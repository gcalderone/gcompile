;=====================================================================
;NAME:
;  gcompile_mpfit
;
;PURPOSE:
;  Initialize the 'mpfit' package.
;
;DEPENDENCIES:
;  gcompile (https://github.com/gcalderone/gcompile)
;
;PARAMETERS:
;  PATH (input, a scalar string)
;    Path to the mpfit directory.  If this parameter is not given the path
;    where this routine is stored will be considered.
;
;NOTES:
;  To initialize the 'mpfit' package you should copy the gcompile_mpfit.pro file
;  in a directory listed in the IDL_PATH environment variable.
;
;  This file has been automatically generated with the command:
;    gcompile_makepkg 'mpfit' '/home/gcalderone/my/work/software/IDL/Contrib/mpfit_20130814'
;
PRO gcompile_mpfit, path
  COMPILE_OPT IDL2
  ON_ERROR, 0

  ;;If path is not given consider the path of current file
  IF (N_PARAMS() EQ 0) THEN BEGIN
     path = ROUTINE_FILEPATH()
     path = STRMID(path, 0, (STRSPLIT(path, PATH_SEP()))[-1])
  ENDIF

  PRINT, 'GCOMPILE mpfit : ' + path

  ;;Forward declaration of functions
  FORWARD_FUNCTION gauss1
  FORWARD_FUNCTION gauss2
  FORWARD_FUNCTION linfitex
  FORWARD_FUNCTION cephes_polevl
  FORWARD_FUNCTION cephes_ndtri
  FORWARD_FUNCTION cephes_igam
  FORWARD_FUNCTION cephes_igamc
  FORWARD_FUNCTION cephes_igami
  FORWARD_FUNCTION mpchilim
  FORWARD_FUNCTION cephes_igam
  FORWARD_FUNCTION cephes_igamc
  FORWARD_FUNCTION mpchitest
  FORWARD_FUNCTION mpcurvefit_eval
  FORWARD_FUNCTION mpcurvefit
  FORWARD_FUNCTION mpfit2dfun_eval
  FORWARD_FUNCTION mpfit2dfun
  FORWARD_FUNCTION mpfit2dpeak_u
  FORWARD_FUNCTION mpfit2dpeak_gauss
  FORWARD_FUNCTION mpfit2dpeak_lorentz
  FORWARD_FUNCTION mpfit2dpeak_moffat
  FORWARD_FUNCTION mpfit2dpeak
  FORWARD_FUNCTION mpfitellipse_u
  FORWARD_FUNCTION mpfitellipse_eval
  FORWARD_FUNCTION mpfitellipse
  FORWARD_FUNCTION mpevalexpr
  FORWARD_FUNCTION mpfitexpr_eval
  FORWARD_FUNCTION mpfitexpr
  FORWARD_FUNCTION mpfitfun_eval
  FORWARD_FUNCTION mpfitfun
  FORWARD_FUNCTION mpfitpeak_u
  FORWARD_FUNCTION mpfitpeak_gauss
  FORWARD_FUNCTION mpfitpeak_lorentz
  FORWARD_FUNCTION mpfitpeak_moffat
  FORWARD_FUNCTION mpfitpeak_est
  FORWARD_FUNCTION mpfitpeak
  FORWARD_FUNCTION mpfit_call_func_noextra
  FORWARD_FUNCTION mpfit_call_func_extra
  FORWARD_FUNCTION mpfit_call_pro_noextra
  FORWARD_FUNCTION mpfit_call_pro_extra
  FORWARD_FUNCTION mpfit_call
  FORWARD_FUNCTION mpfit_fdjac2
  FORWARD_FUNCTION mpfit_enorm
  FORWARD_FUNCTION mpfit_lmpar
  FORWARD_FUNCTION mpfit_covar
  FORWARD_FUNCTION mpfit_revision
  FORWARD_FUNCTION mpfit_parse_version
  FORWARD_FUNCTION mpfit_min_version
  FORWARD_FUNCTION mpfit
  FORWARD_FUNCTION cephes_incbet
  FORWARD_FUNCTION cephes_incbcf
  FORWARD_FUNCTION cephes_incbd
  FORWARD_FUNCTION cephes_pseries
  FORWARD_FUNCTION mpftest
  FORWARD_FUNCTION cephes_polevl
  FORWARD_FUNCTION cephes_ndtri
  FORWARD_FUNCTION mpnormlim
  FORWARD_FUNCTION cephes_polevl
  FORWARD_FUNCTION cephes_erfc
  FORWARD_FUNCTION cephes_erf
  FORWARD_FUNCTION mpnormtest
  FORWARD_FUNCTION mpproperr
  FORWARD_FUNCTION SetFitParm
  FORWARD_FUNCTION tnmin_autoder
  FORWARD_FUNCTION tnmin_call
  FORWARD_FUNCTION tnmin_enorm
  FORWARD_FUNCTION tnmin_step1
  FORWARD_FUNCTION tnmin

  ;;List of .pro files to be compiled
  gcompile, /hold, path + 'gauss1p.pro'
  gcompile, /hold, path + 'gauss1.pro'
  gcompile, /hold, path + 'gauss2.pro'
  gcompile, /hold, path + 'linfitex.pro'
  gcompile, /hold, path + 'mpchilim.pro'
  gcompile, /hold, path + 'mpchitest.pro'
  gcompile, /hold, path + 'mpcurvefit.pro'
  gcompile, /hold, path + 'mpfit2dfun.pro'
  gcompile, /hold, path + 'mpfit2dpeak.pro'
  gcompile, /hold, path + 'mpfitellipse.pro'
  gcompile, /hold, path + 'mpfitexpr.pro'
  gcompile, /hold, path + 'mpfitfun.pro'
  gcompile, /hold, path + 'mpfitpeak.pro'
  gcompile, /hold, path + 'mpfit.pro'
  gcompile, /hold, path + 'mpftest.pro'
  gcompile, /hold, path + 'mpnormlim.pro'
  gcompile, /hold, path + 'mpnormtest.pro'
  gcompile, /hold, path + 'mpproperr.pro'
  gcompile, /hold, path + 'setfitparm.pro'
  gcompile, /hold, path + 'tnmin.pro'

  ;;Compile the package
  gcompile
END
