;=====================================================================
;NAME:
;  gcompile_astrolib
;
;PURPOSE:
;  Initialize the 'astrolib' package.
;
;DEPENDENCIES:
;  gcompile (https://github.com/gcalderone/gcompile)
;
;PARAMETERS:
;  PATH (input, a scalar string)
;    Path to the astrolib directory.  If this parameter is not given the path
;    where this routine is stored will be considered.
;
;NOTES:
;  To initialize the 'astrolib' package you should copy the gcompile_astrolib.pro file
;  in a directory listed in the IDL_PATH environment variable.
;
;  This file has been automatically generated with the command:
;    gcompile_makepkg 'astrolib' '/home/gcalderone/my/work/software/IDL/Contrib/astrolib_20150427'
;
PRO gcompile_astrolib, path
  COMPILE_OPT IDL2
  ON_ERROR, 0

  ;;If path is not given consider the path of current file
  IF (N_PARAMS() EQ 0) THEN BEGIN
     path = ROUTINE_FILEPATH()
     path = STRMID(path, 0, (STRSPLIT(path, PATH_SEP()))[-1])
  ENDIF

  PRINT, 'GCOMPILE astrolib : ' + path

  ;;Forward declaration of functions
  FORWARD_FUNCTION adstring
  FORWARD_FUNCTION asinh
  FORWARD_FUNCTION AVG
  FORWARD_FUNCTION BIWEIGHT_MEAN
  FORWARD_FUNCTION boxave
  FORWARD_FUNCTION Bsort
  FORWARD_FUNCTION cic
  FORWARD_FUNCTION compare_struct
  FORWARD_FUNCTION concat_dir
  FORWARD_FUNCTION CONS_DEC
  FORWARD_FUNCTION CONS_RA
  FORWARD_FUNCTION convolve
  FORWARD_FUNCTION co_refract_forward
  FORWARD_FUNCTION co_refract
  FORWARD_FUNCTION correl_images
  FORWARD_FUNCTION cspline
  FORWARD_FUNCTION DAO_VALUE
  FORWARD_FUNCTION date_conv
  FORWARD_FUNCTION DATE
  FORWARD_FUNCTION dbcircle
  FORWARD_FUNCTION dbfind
  FORWARD_FUNCTION dbget
  FORWARD_FUNCTION dbindex_blk
  FORWARD_FUNCTION db_info
  FORWARD_FUNCTION db_item_info
  FORWARD_FUNCTION dbmatch
  FORWARD_FUNCTION db_or
  FORWARD_FUNCTION dbsort
  FORWARD_FUNCTION dbtarget
  FORWARD_FUNCTION dbtitle
  FORWARD_FUNCTION dbval
  FORWARD_FUNCTION dbxval
  FORWARD_FUNCTION eci2geo
  FORWARD_FUNCTION f_format
  FORWARD_FUNCTION filter_image
  FORWARD_FUNCTION chisq_fitexy
  FORWARD_FUNCTION fits_ascii_encode
  FORWARD_FUNCTION flegendre
  FORWARD_FUNCTION flux2mag
  FORWARD_FUNCTION frebin
  FORWARD_FUNCTION ftget
  FORWARD_FUNCTION FXMOVE
  FORWARD_FUNCTION dtdz
  FORWARD_FUNCTION galage
  FORWARD_FUNCTION GAL_FLAT
  FORWARD_FUNCTION gaussian
  FORWARD_FUNCTION geo2eci
  FORWARD_FUNCTION geo2geodetic
  FORWARD_FUNCTION geo2mag
  FORWARD_FUNCTION geodetic2geo
  FORWARD_FUNCTION GET_EQUINOX
  FORWARD_FUNCTION getopt
  FORWARD_FUNCTION gettok
  FORWARD_FUNCTION HEADFITS
  FORWARD_FUNCTION helio_jd
  FORWARD_FUNCTION helio_rv
  FORWARD_FUNCTION hermite
  FORWARD_FUNCTION imf
  FORWARD_FUNCTION is_ieee_big
  FORWARD_FUNCTION ismeuv
  FORWARD_FUNCTION jplephpar
  FORWARD_FUNCTION jplephval
  FORWARD_FUNCTION linmix_atanh
  FORWARD_FUNCTION linmix_robsig
  FORWARD_FUNCTION loglik_mixerr
  FORWARD_FUNCTION logprior_mixerr
  FORWARD_FUNCTION linmix_metro_update
  FORWARD_FUNCTION mag2flux
  FORWARD_FUNCTION mag2geo
  FORWARD_FUNCTION MEDSMOOTH
  FORWARD_FUNCTION call_func_deriv
  FORWARD_FUNCTION minmax
  FORWARD_FUNCTION mlinmix_chol_invert
  FORWARD_FUNCTION month_cnv
  FORWARD_FUNCTION mrandomn
  FORWARD_FUNCTION mrd_dofn
  FORWARD_FUNCTION mrd_chkfn
  FORWARD_FUNCTION mrd_unsigned_offset
  FORWARD_FUNCTION mrd_chkunsigned
  FORWARD_FUNCTION mrd_unsignedtype
  FORWARD_FUNCTION mrd_version
  FORWARD_FUNCTION mrdfits
  FORWARD_FUNCTION mrd_struct
  FORWARD_FUNCTION multinom
  FORWARD_FUNCTION mwr_version
  FORWARD_FUNCTION mwr_unsigned_offset
  FORWARD_FUNCTION mwr_checktype
  FORWARD_FUNCTION mwr_validptr
  FORWARD_FUNCTION mwr_retable
  FORWARD_FUNCTION mwr_writeheap
  FORWARD_FUNCTION N_bytes
  FORWARD_FUNCTION ngp
  FORWARD_FUNCTION nint
  FORWARD_FUNCTION nulltrim
  FORWARD_FUNCTION ordinal
  FORWARD_FUNCTION PERMUTE
  FORWARD_FUNCTION Arc
  FORWARD_FUNCTION Chord
  FORWARD_FUNCTION Oneside
  FORWARD_FUNCTION Intarea
  FORWARD_FUNCTION Pixwt
  FORWARD_FUNCTION planck
  FORWARD_FUNCTION poidev
  FORWARD_FUNCTION polyleg
  FORWARD_FUNCTION poly_smooth
  FORWARD_FUNCTION positivity
  FORWARD_FUNCTION premat
  FORWARD_FUNCTION psf_gaussian
  FORWARD_FUNCTION qget_string
  FORWARD_FUNCTION Querygsc
  FORWARD_FUNCTION query_irsa_cat
  FORWARD_FUNCTION Queryvizier
  FORWARD_FUNCTION randomchi
  FORWARD_FUNCTION randomdir
  FORWARD_FUNCTION randomgam
  FORWARD_FUNCTION randomwish
  FORWARD_FUNCTION READFITS
  FORWARD_FUNCTION read_fmr
  FORWARD_FUNCTION read_ipac_table
  FORWARD_FUNCTION read_ipac_var
  FORWARD_FUNCTION read_key
  FORWARD_FUNCTION rem_dup
  FORWARD_FUNCTION repstr
  FORWARD_FUNCTION RHOTHETA
  FORWARD_FUNCTION RINTER
  FORWARD_FUNCTION ROB_CHECKFIT
  FORWARD_FUNCTION ROBUST_LINEFIT
  FORWARD_FUNCTION ROBUST_POLY_FIT
  FORWARD_FUNCTION ROBUST_SIGMA
  FORWARD_FUNCTION errtype
  FORWARD_FUNCTION generate_data
  FORWARD_FUNCTION safe_correlate
  FORWARD_FUNCTION sigma_filter
  FORWARD_FUNCTION sip_eval
  FORWARD_FUNCTION xi_solve_tpv
  FORWARD_FUNCTION eta_solve_tpv
  FORWARD_FUNCTION eta_solve_tnx
  FORWARD_FUNCTION xi_solve_tnx
  FORWARD_FUNCTION solve_astro
  FORWARD_FUNCTION spec_dir
  FORWARD_FUNCTION strcompress2
  FORWARD_FUNCTION STR_INDEX
  FORWARD_FUNCTION strn
  FORWARD_FUNCTION strnumber
  FORWARD_FUNCTION sunsymbol
  FORWARD_FUNCTION sxgpar
  FORWARD_FUNCTION sxgread
  FORWARD_FUNCTION SXPAR
  FORWARD_FUNCTION sxread
  FORWARD_FUNCTION tag_exist
  FORWARD_FUNCTION tbget
  FORWARD_FUNCTION tdb2tdt_calc
  FORWARD_FUNCTION tdb2tdt
  FORWARD_FUNCTION TNX_eval
  FORWARD_FUNCTION TO_HEX
  FORWARD_FUNCTION TPV_eval
  FORWARD_FUNCTION transform_coeff
  FORWARD_FUNCTION tsc
  FORWARD_FUNCTION TSUM
  FORWARD_FUNCTION valid_num
  FORWARD_FUNCTION VECT
  FORWARD_FUNCTION webget
  FORWARD_FUNCTION where_Tag
  FORWARD_FUNCTION zang
  FORWARD_FUNCTION ZBRENT

  ;;List of .pro files to be compiled
  ;;The .pro files below are listed in alphabetical order, except for
  ;;the first four files, in order to avoid compilation errors.
  gcompile, path + 'pro/fxbintable.pro'
  gcompile, path + 'pro/list_with_path.pro'
  gcompile, path + 'pro/fxparpos.pro'
  gcompile, path + 'pro/is_ieee_big.pro'

  gcompile, path + 'pro/ad2xy.pro'
  gcompile, path + 'pro/add_distort.pro'
  gcompile, path + 'pro/adstring.pro'
  gcompile, path + 'pro/adxy.pro'
  gcompile, path + 'pro/airtovac.pro'
  gcompile, path + 'pro/aitoff_grid.pro'
  gcompile, path + 'pro/aitoff.pro'
  gcompile, path + 'pro/al_legend.pro'
  gcompile, path + 'pro/al_legendtest.pro'
  gcompile, path + 'pro/altaz2hadec.pro'
  gcompile, path + 'pro/aper.pro'
  gcompile, path + 'pro/arcbar.pro'
  gcompile, path + 'pro/arrows.pro'
  gcompile, path + 'pro/asinh.pro'
  gcompile, path + 'pro/astdisp.pro'
  gcompile, path + 'pro/astrolib.pro'
  gcompile, path + 'pro/astro.pro'
  gcompile, path + 'pro/autohist.pro'
  gcompile, path + 'pro/avg.pro'
  gcompile, path + 'pro/baryvel.pro'
  gcompile, path + 'pro/biweight_mean.pro'
  gcompile, path + 'pro/blink.pro'
  gcompile, path + 'pro/blkshift.pro'
  gcompile, path + 'pro/boost_array.pro'
  gcompile, path + 'pro/boxave.pro'
  gcompile, path + 'pro/bprecess.pro'
  gcompile, path + 'pro/break_path.pro'
  gcompile, path + 'pro/bsort.pro'
  gcompile, path + 'pro/calz_unred.pro'
  gcompile, path + 'pro/ccm_unred.pro'
  gcompile, path + 'pro/check_fits.pro'
  gcompile, path + 'pro/checksum32.pro'
  gcompile, path + 'pro/cic.pro'
  gcompile, path + 'pro/cirrange.pro'
  gcompile, path + 'pro/cleanplot.pro'
  gcompile, path + 'pro/cntrd.pro'
  gcompile, path + 'pro/co_aberration.pro'
  gcompile, path + 'pro/compare_struct.pro'
  gcompile, path + 'pro/concat_dir.pro'
  gcompile, path + 'pro/cons_dec.pro'
  gcompile, path + 'pro/cons_ra.pro'
  gcompile, path + 'pro/co_nutate.pro'
  gcompile, path + 'pro/convolve.pro'
  gcompile, path + 'pro/copy_struct_inx.pro'
  gcompile, path + 'pro/copy_struct.pro'
  gcompile, path + 'pro/co_refract.pro'
  gcompile, path + 'pro/correl_images.pro'
  gcompile, path + 'pro/correl_optimize.pro'
  gcompile, path + 'pro/corrmat_analyze.pro'
  gcompile, path + 'pro/cosmo_param.pro'
  gcompile, path + 'pro/create_struct.pro'
  gcompile, path + 'pro/cr_reject.pro'
  gcompile, path + 'pro/cspline.pro'
  gcompile, path + 'pro/ct2lst.pro'
  ;;gcompile, path + 'pro/curs.pro' ;;This one depends on the obsolete SCR_CURMOV routine
  gcompile, path + 'pro/curval.pro'
  gcompile, path + 'pro/daoerf.pro'
  gcompile, path + 'pro/dao_value.pro'
  gcompile, path + 'pro/date_conv.pro'
  gcompile, path + 'pro/date.pro'
  gcompile, path + 'pro/daycnv.pro'
  gcompile, path + 'pro/dbbuild.pro'
  gcompile, path + 'pro/dbcircle.pro'
  gcompile, path + 'pro/dbclose.pro'
  gcompile, path + 'pro/dbcompare.pro'
  gcompile, path + 'pro/dbcreate.pro'
  gcompile, path + 'pro/dbdelete.pro'
  gcompile, path + 'pro/dbedit_basic.pro'
  gcompile, path + 'pro/dbedit.pro'
  gcompile, path + 'pro/db_ent2ext.pro'
  gcompile, path + 'pro/db_ent2host.pro'
  gcompile, path + 'pro/dbext_dbf.pro'
  gcompile, path + 'pro/dbext_ind.pro'
  gcompile, path + 'pro/dbext.pro'
  gcompile, path + 'pro/dbfind_entry.pro'
  gcompile, path + 'pro/dbfind.pro'
  gcompile, path + 'pro/dbfind_sort.pro'
  gcompile, path + 'pro/dbfparse.pro'
  gcompile, path + 'pro/dbget.pro'
  gcompile, path + 'pro/dbhelp.pro'
  gcompile, path + 'pro/dbindex_blk.pro'
  gcompile, path + 'pro/dbindex.pro'
  gcompile, path + 'pro/db_info.pro'
  gcompile, path + 'pro/db_item_info.pro'
  gcompile, path + 'pro/db_item.pro'
  gcompile, path + 'pro/dbmatch.pro'
  gcompile, path + 'pro/dbopen.pro'
  gcompile, path + 'pro/db_or.pro'
  gcompile, path + 'pro/dbprint.pro'
  gcompile, path + 'pro/dbput.pro'
  gcompile, path + 'pro/dbrd.pro'
  gcompile, path + 'pro/dbsearch.pro'
  gcompile, path + 'pro/dbsort.pro'
  gcompile, path + 'pro/dbtarget.pro'
  gcompile, path + 'pro/dbtitle.pro'
  gcompile, path + 'pro/db_titles.pro'
  gcompile, path + 'pro/dbupdate.pro'
  gcompile, path + 'pro/dbval.pro'
  gcompile, path + 'pro/dbwrt.pro'
  gcompile, path + 'pro/dbxput.pro'
  gcompile, path + 'pro/dbxval.pro'
  gcompile, path + 'pro/delvarx.pro'
  gcompile, path + 'pro/deredd.pro'
  gcompile, path + 'pro/detabify.pro'
  gcompile, path + 'pro/dist_circle.pro'
  gcompile, path + 'pro/dist_ellipse.pro'
  gcompile, path + 'pro/eci2geo.pro'
  gcompile, path + 'pro/eq2hor.pro'
  gcompile, path + 'pro/eqpole_grid.pro'
  gcompile, path + 'pro/eqpole.pro'
  gcompile, path + 'pro/euler.pro'
  gcompile, path + 'pro/expand_tilde.pro'
  gcompile, path + 'pro/extast.pro'
  gcompile, path + 'pro/extgrp.pro'
  gcompile, path + 'pro/factor.pro'
  gcompile, path + 'pro/fdecomp.pro'
  gcompile, path + 'pro/f_format.pro'
  gcompile, path + 'pro/filter_image.pro'
  gcompile, path + 'pro/find_all_dir.pro'
  gcompile, path + 'pro/find.pro'
  gcompile, path + 'pro/findpro.pro'
  gcompile, path + 'pro/find_with_def.pro'
  gcompile, path + 'pro/fitexy.pro'
  gcompile, path + 'pro/fits_add_checksum.pro'
  gcompile, path + 'pro/fits_ascii_encode.pro'
  gcompile, path + 'pro/fits_cd_fix.pro'
  gcompile, path + 'pro/fits_close.pro'
  gcompile, path + 'pro/fitsdir.pro'
  gcompile, path + 'pro/fits_help.pro'
  gcompile, path + 'pro/fits_info.pro'
  gcompile, path + 'pro/fits_open.pro'
  gcompile, path + 'pro/fits_read.pro'
  gcompile, path + 'pro/fitsrgb_to_tiff.pro'
  gcompile, path + 'pro/fits_test_checksum.pro'
  gcompile, path + 'pro/fits_write.pro'
  gcompile, path + 'pro/flegendre.pro'
  gcompile, path + 'pro/flux2mag.pro'
  gcompile, path + 'pro/fm_unred.pro'
  gcompile, path + 'pro/forprint.pro'
  gcompile, path + 'pro/frebin.pro'
  gcompile, path + 'pro/ftab_delrow.pro'
  gcompile, path + 'pro/ftab_ext.pro'
  gcompile, path + 'pro/ftab_help.pro'
  gcompile, path + 'pro/ftab_print.pro'
  gcompile, path + 'pro/ftaddcol.pro'
  gcompile, path + 'pro/ftcreate.pro'
  gcompile, path + 'pro/ftdelcol.pro'
  gcompile, path + 'pro/ftdelrow.pro'
  gcompile, path + 'pro/ftget.pro'
  gcompile, path + 'pro/fthelp.pro'
  gcompile, path + 'pro/fthmod.pro'
  gcompile, path + 'pro/ftinfo.pro'
  gcompile, path + 'pro/ftkeeprow.pro'
  gcompile, path + 'pro/ftprint.pro'
  gcompile, path + 'pro/ftput.pro'
  gcompile, path + 'pro/ftsize.pro'
  gcompile, path + 'pro/ftsort.pro'
  gcompile, path + 'pro/fxaddpar.pro'
  gcompile, path + 'pro/fxbaddcol.pro'
  gcompile, path + 'pro/fxbclose.pro'
  gcompile, path + 'pro/fxbcolnum.pro'
  gcompile, path + 'pro/fxbcreate.pro'
  gcompile, path + 'pro/fxbdimen.pro'
  gcompile, path + 'pro/fxbfindlun.pro'
  gcompile, path + 'pro/fxbfind.pro'
  gcompile, path + 'pro/fxbfinish.pro'
  gcompile, path + 'pro/fxbgrow.pro'
  gcompile, path + 'pro/fxbheader.pro'
  gcompile, path + 'pro/fxbhelp.pro'
  gcompile, path + 'pro/fxbhmake.pro'
  gcompile, path + 'pro/fxbintable.pro'
  gcompile, path + 'pro/fxbisopen.pro'
  gcompile, path + 'pro/fxbopen.pro'
  gcompile, path + 'pro/fxbparse.pro'
  gcompile, path + 'pro/fxbreadm.pro'
  gcompile, path + 'pro/fxbread.pro'
  gcompile, path + 'pro/fxbstate.pro'
  gcompile, path + 'pro/fxbtdim.pro'
  gcompile, path + 'pro/fxbtform.pro'
  gcompile, path + 'pro/fxbwrite.pro'
  gcompile, path + 'pro/fxbwritm.pro'
  gcompile, path + 'pro/fxfindend.pro'
  gcompile, path + 'pro/fxhclean.pro'
  gcompile, path + 'pro/fxhmake.pro'
  gcompile, path + 'pro/fxhmodify.pro'
  gcompile, path + 'pro/fxhread.pro'
  gcompile, path + 'pro/fxmove.pro'
  gcompile, path + 'pro/fxparpos.pro'
  gcompile, path + 'pro/fxpar.pro'
  gcompile, path + 'pro/fxposit.pro'
  gcompile, path + 'pro/fxread.pro'
  gcompile, path + 'pro/fxwrite.pro'
  gcompile, path + 'pro/galage.pro'
  gcompile, path + 'pro/gal_flat.pro'
  gcompile, path + 'pro/gal_uvw.pro'
  gcompile, path + 'pro/gaussian.pro'
  gcompile, path + 'pro/gcirc.pro'
  gcompile, path + 'pro/gcntrd.pro'
  gcompile, path + 'pro/geo2eci.pro'
  gcompile, path + 'pro/geo2geodetic.pro'
  gcompile, path + 'pro/geo2mag.pro'
  gcompile, path + 'pro/geodetic2geo.pro'
  gcompile, path + 'pro/get_coords.pro'
  gcompile, path + 'pro/get_date.pro'
  gcompile, path + 'pro/get_equinox.pro'
  gcompile, path + 'pro/get_juldate.pro'
  gcompile, path + 'pro/getopt.pro'
  gcompile, path + 'pro/get_pipe_filesize.pro'
  gcompile, path + 'pro/getpro.pro'
  gcompile, path + 'pro/getpsf.pro'
  gcompile, path + 'pro/getrot.pro'
  gcompile, path + 'pro/gettok.pro'
  gcompile, path + 'pro/getwrd.pro'
  gcompile, path + 'pro/glactc_pm.pro'
  gcompile, path + 'pro/glactc.pro'
  gcompile, path + 'pro/group.pro'
  gcompile, path + 'pro/gsssadxy.pro'
  gcompile, path + 'pro/gsssextast.pro'
  gcompile, path + 'pro/gsss_stdast.pro'
  gcompile, path + 'pro/gsssxyad.pro'
  gcompile, path + 'pro/hadec2altaz.pro'
  gcompile, path + 'pro/hastrom.pro'
  gcompile, path + 'pro/hboxave.pro'
  gcompile, path + 'pro/hcongrid.pro'
  gcompile, path + 'pro/headfits.pro'
  gcompile, path + 'pro/helio_jd.pro'
  gcompile, path + 'pro/helio.pro'
  gcompile, path + 'pro/helio_rv.pro'
  gcompile, path + 'pro/hermite.pro'
  gcompile, path + 'pro/heuler.pro'
  gcompile, path + 'pro/hextract.pro'
  gcompile, path + 'pro/hgrep.pro'
  gcompile, path + 'pro/histogauss.pro'
  gcompile, path + 'pro/hor2eq.pro'
  gcompile, path + 'pro/host_to_ieee.pro'
  gcompile, path + 'pro/hprecess.pro'
  gcompile, path + 'pro/hprint.pro'
  gcompile, path + 'pro/hrebin.pro'
  gcompile, path + 'pro/hreverse.pro'
  gcompile, path + 'pro/hrotate.pro'
  gcompile, path + 'pro/hrot.pro'
  gcompile, path + 'pro/ieee_to_host.pro'
  gcompile, path + 'pro/imcontour.pro'
  gcompile, path + 'pro/imdbase.pro'
  gcompile, path + 'pro/imf.pro'
  gcompile, path + 'pro/imlist.pro'
  gcompile, path + 'pro/irafdir.pro'
  gcompile, path + 'pro/irafrd.pro'
  gcompile, path + 'pro/irafwrt.pro'
  gcompile, path + 'pro/isarray.pro'
  gcompile, path + 'pro/is_ieee_big.pro'
  gcompile, path + 'pro/ismeuv.pro'
  gcompile, path + 'pro/jdcnv.pro'
  gcompile, path + 'pro/jplephinterp.pro'
  gcompile, path + 'pro/jplephread.pro'
  gcompile, path + 'pro/jplephtest.pro'
  gcompile, path + 'pro/jprecess.pro'
  gcompile, path + 'pro/juldate.pro'
  gcompile, path + 'pro/ksone.pro'
  gcompile, path + 'pro/kstwo.pro'
  gcompile, path + 'pro/kuiperone.pro'
  gcompile, path + 'pro/kuipertwo.pro'
  gcompile, path + 'pro/lineid_plot.pro'
  gcompile, path + 'pro/linmix_err.pro'
  gcompile, path + 'pro/linterp.pro'
  gcompile, path + 'pro/list_with_path.pro'
  gcompile, path + 'pro/lsf_rotate.pro'
  gcompile, path + 'pro/lumdist.pro'
  gcompile, path + 'pro/mag2flux.pro'
  gcompile, path + 'pro/mag2geo.pro'
  gcompile, path + 'pro/make_2d.pro'
  gcompile, path + 'pro/make_astr.pro'
  gcompile, path + 'pro/match2.pro'
  gcompile, path + 'pro/match.pro'
  gcompile, path + 'pro/max_entropy.pro'
  gcompile, path + 'pro/max_likelihood.pro'
  gcompile, path + 'pro/meanclip.pro'
  gcompile, path + 'pro/medarr.pro'
  gcompile, path + 'pro/medsmooth.pro'
  gcompile, path + 'pro/minf_bracket.pro'
  gcompile, path + 'pro/minf_conj_grad.pro'
  gcompile, path + 'pro/minf_parabol_d.pro'
  gcompile, path + 'pro/minf_parabolic.pro'
  gcompile, path + 'pro/minmax.pro'
  gcompile, path + 'pro/mkhdr.pro'
  gcompile, path + 'pro/mlinmix_err.pro'
  gcompile, path + 'pro/mmm.pro'
  gcompile, path + 'pro/modfits.pro'
  gcompile, path + 'pro/month_cnv.pro'
  gcompile, path + 'pro/moonpos.pro'
  gcompile, path + 'pro/mphase.pro'
  gcompile, path + 'pro/mrandomn.pro'
  gcompile, path + 'pro/mrdfits.pro'
  gcompile, path + 'pro/mrd_hread.pro'
  gcompile, path + 'pro/mrd_skip.pro'
  gcompile, path + 'pro/mrd_struct.pro'
  gcompile, path + 'pro/multinom.pro'
  gcompile, path + 'pro/multiplot.pro'
  gcompile, path + 'pro/mwrfits.pro'
  gcompile, path + 'pro/n_bytes.pro'
  gcompile, path + 'pro/ngp.pro'
  gcompile, path + 'pro/nint.pro'
  gcompile, path + 'pro/nstar.pro'
  gcompile, path + 'pro/nulltrim.pro'
  gcompile, path + 'pro/nutate.pro'
  gcompile, path + 'pro/observatory.pro'
  gcompile, path + 'pro/one_arrow.pro'
  gcompile, path + 'pro/one_ray.pro'
  gcompile, path + 'pro/oploterror.pro'
  gcompile, path + 'pro/ordinal.pro'
  gcompile, path + 'pro/partvelvec.pro'
  gcompile, path + 'pro/pca.pro'
  gcompile, path + 'pro/pent.pro'
  gcompile, path + 'pro/permute.pro'
  gcompile, path + 'pro/pixcolor.pro'
  gcompile, path + 'pro/pixwt.pro'
  gcompile, path + 'pro/pkfit.pro'
  gcompile, path + 'pro/planck.pro'
  gcompile, path + 'pro/planet_coords.pro'
  gcompile, path + 'pro/ploterror.pro'
  gcompile, path + 'pro/plothist.pro'
  gcompile, path + 'pro/plotsym.pro'
  gcompile, path + 'pro/poidev.pro'
  gcompile, path + 'pro/polint.pro'
  gcompile, path + 'pro/polrec.pro'
  gcompile, path + 'pro/polyleg.pro'
  gcompile, path + 'pro/poly_smooth.pro'
  gcompile, path + 'pro/posang.pro'
  gcompile, path + 'pro/positivity.pro'
  gcompile, path + 'pro/precess_cd.pro'
  gcompile, path + 'pro/precess.pro'
  gcompile, path + 'pro/precess_xyz.pro'
  gcompile, path + 'pro/premat.pro'
  gcompile, path + 'pro/prime.pro'
  gcompile, path + 'pro/print_struct.pro'
  gcompile, path + 'pro/prob_ks.pro'
  gcompile, path + 'pro/prob_kuiper.pro'
  gcompile, path + 'pro/psf_gaussian.pro'
  gcompile, path + 'pro/putast.pro'
  gcompile, path + 'pro/qdcb_grid.pro'
  gcompile, path + 'pro/qget_string.pro'
  gcompile, path + 'pro/qsimp.pro'
  gcompile, path + 'pro/qtrap.pro'
  gcompile, path + 'pro/quadterp.pro'
  gcompile, path + 'pro/querydss.pro'
  gcompile, path + 'pro/querygsc.pro'
  gcompile, path + 'pro/query_irsa_cat.pro'
  gcompile, path + 'pro/querysimbad.pro'
  gcompile, path + 'pro/queryvizier.pro'
  gcompile, path + 'pro/radec.pro'
  gcompile, path + 'pro/randomchi.pro'
  gcompile, path + 'pro/randomdir.pro'
  gcompile, path + 'pro/randomgam.pro'
  gcompile, path + 'pro/randomp.pro'
  gcompile, path + 'pro/randomwish.pro'
  gcompile, path + 'pro/rdfits_struct.pro'
  gcompile, path + 'pro/rdfloat.pro'
  gcompile, path + 'pro/rdplot.pro'
  gcompile, path + 'pro/rdpsf.pro'
  gcompile, path + 'pro/readcol.pro'
  gcompile, path + 'pro/readfits.pro'
  gcompile, path + 'pro/read_fmr.pro'
  gcompile, path + 'pro/readfmt.pro'
  gcompile, path + 'pro/read_ipac_table.pro'
  gcompile, path + 'pro/read_ipac_var.pro'
  gcompile, path + 'pro/read_key.pro'
  gcompile, path + 'pro/recpol.pro'
  gcompile, path + 'pro/remchar.pro'
  gcompile, path + 'pro/rem_dup.pro'
  gcompile, path + 'pro/remove.pro'
  gcompile, path + 'pro/repchr.pro'
  gcompile, path + 'pro/repstr.pro'
  gcompile, path + 'pro/resistant_mean.pro'
  gcompile, path + 'pro/rhotheta.pro'
  gcompile, path + 'pro/rinter.pro'
  gcompile, path + 'pro/rob_checkfit.pro'
  gcompile, path + 'pro/robust_linefit.pro'
  gcompile, path + 'pro/robust_poly_fit.pro'
  gcompile, path + 'pro/robust_sigma.pro'
  gcompile, path + 'pro/safe_correlate.pro'
  gcompile, path + 'pro/select_w.pro'
  gcompile, path + 'pro/sigma_filter.pro'
  gcompile, path + 'pro/sigrange.pro'
  gcompile, path + 'pro/sip_eval.pro'
  gcompile, path + 'pro/sixlin.pro'
  gcompile, path + 'pro/sixty.pro'
  gcompile, path + 'pro/skyadj_cube.pro'
  gcompile, path + 'pro/sky.pro'
  gcompile, path + 'pro/solve_astro.pro'
  gcompile, path + 'pro/spec_dir.pro'
  gcompile, path + 'pro/sphdist.pro'
  gcompile, path + 'pro/srcor.pro'
  gcompile, path + 'pro/starast.pro'
  ;gcompile, path + 'pro/st_diskread.pro' ;;This one depends on the obsolete TAB_CREATE, TAB_PUT and TAB_WRITE routines
  gcompile, path + 'pro/store_array.pro'
  gcompile, path + 'pro/strcompress2.pro'
  gcompile, path + 'pro/str_index.pro'
  gcompile, path + 'pro/strn.pro'
  gcompile, path + 'pro/strnumber.pro'
  gcompile, path + 'pro/substar.pro'
  gcompile, path + 'pro/sunpos.pro'
  gcompile, path + 'pro/sunsymbol.pro'
  gcompile, path + 'pro/sxaddhist.pro'
  gcompile, path + 'pro/sxaddpar.pro'
  gcompile, path + 'pro/sxdelpar.pro'
  gcompile, path + 'pro/sxginfo.pro'
  gcompile, path + 'pro/sxgpar.pro'
  gcompile, path + 'pro/sxgread.pro'
  gcompile, path + 'pro/sxhcopy.pro'
  gcompile, path + 'pro/sxhmake.pro'
  gcompile, path + 'pro/sxhread.pro'
  gcompile, path + 'pro/sxhwrite.pro'
  gcompile, path + 'pro/sxmake.pro'
  gcompile, path + 'pro/sxopen.pro'
  gcompile, path + 'pro/sxpar.pro'
  gcompile, path + 'pro/sxread.pro'
  gcompile, path + 'pro/sxwrite.pro'
  gcompile, path + 'pro/tabinv.pro'
  gcompile, path + 'pro/tag_exist.pro'
  gcompile, path + 'pro/t_aper.pro'
  gcompile, path + 'pro/tbdelcol.pro'
  gcompile, path + 'pro/tbdelrow.pro'
  gcompile, path + 'pro/tbget.pro'
  gcompile, path + 'pro/tbhelp.pro'
  gcompile, path + 'pro/tbinfo.pro'
  gcompile, path + 'pro/tbprint.pro'
  gcompile, path + 'pro/tbsize.pro'
  gcompile, path + 'pro/tdb2tdt.pro'
  gcompile, path + 'pro/ten.pro'
  gcompile, path + 'pro/tenv.pro'
  gcompile, path + 'pro/textclose.pro'
  gcompile, path + 'pro/textopen.pro'
  gcompile, path + 'pro/t_find.pro'
  gcompile, path + 'pro/t_getpsf.pro'
  gcompile, path + 'pro/t_group.pro'
  gcompile, path + 'pro/ticlabels.pro'
  gcompile, path + 'pro/tic_one.pro'
  gcompile, path + 'pro/ticpos.pro'
  gcompile, path + 'pro/tics.pro'
  gcompile, path + 'pro/t_nstar.pro'
  gcompile, path + 'pro/tnx_eval.pro'
  gcompile, path + 'pro/to_hex.pro'
  gcompile, path + 'pro/tpv_eval.pro'
  gcompile, path + 'pro/transform_coeff.pro'
  gcompile, path + 'pro/trapzd.pro'
  gcompile, path + 'pro/tsc.pro'
  gcompile, path + 'pro/t_substar.pro'
  gcompile, path + 'pro/tsum.pro'
  gcompile, path + 'pro/tvbox.pro'
  gcompile, path + 'pro/tvcircle.pro'
  gcompile, path + 'pro/tvellipse.pro'
  gcompile, path + 'pro/tvlaser.pro'
  gcompile, path + 'pro/tvlist.pro'
  gcompile, path + 'pro/unzoom_xy.pro'
  gcompile, path + 'pro/update_distort.pro'
  gcompile, path + 'pro/uvbybeta.pro'
  gcompile, path + 'pro/vactoair.pro'
  gcompile, path + 'pro/valid_num.pro'
  gcompile, path + 'pro/vect.pro'
  gcompile, path + 'pro/vsym.pro'
  gcompile, path + 'pro/wcs_check_ctype.pro'
  gcompile, path + 'pro/wcs_demo.pro'
  gcompile, path + 'pro/wcs_getpole.pro'
  gcompile, path + 'pro/wcs_rotate.pro'
  gcompile, path + 'pro/wcssph2xy.pro'
  gcompile, path + 'pro/wcsxy2sph.pro'
  gcompile, path + 'pro/webget.pro'
  gcompile, path + 'pro/wfpc2_metric.pro'
  gcompile, path + 'pro/wfpc2_read.pro'
  gcompile, path + 'pro/wherenan.pro'
  gcompile, path + 'pro/where_tag.pro'
  gcompile, path + 'pro/writefits.pro'
  gcompile, path + 'pro/write_ipac_table.pro'
  gcompile, path + 'pro/xdispstr.pro'
  gcompile, path + 'pro/xmedsky.pro'
  gcompile, path + 'pro/xy2ad.pro'
  gcompile, path + 'pro/xyad.pro'
  gcompile, path + 'pro/xyxy.pro'
  gcompile, path + 'pro/xyz.pro'
  gcompile, path + 'pro/ydn2md.pro'
  gcompile, path + 'pro/ymd2dn.pro'
  gcompile, path + 'pro/zang.pro'
  gcompile, path + 'pro/zbrent.pro'
  gcompile, path + 'pro/zenpos.pro'
  gcompile, path + 'pro/zoom_xy.pro'
  gcompile, path + 'pro/zparcheck.pro'

  ;;Compile the package
  gcompile

  ;;Initialize non-standard system variables
  astrolib

  ;;Set environment variable
  SETENV, 'ASTRO_DATA=' + path + 'data/'
END
