@gcompile
;;
;;This file has been automatically generated with the command:
;;  gcompile_makepkg 'astrolib' '/home/gcalderone/my/work/software/IDL/Contrib/astrolib_20150427'
;;
;;To initialize the 'astrolib' package you should copy the gcompile_astrolib.pro file
;;in a directory listed in the IDL_PATH environment variable, and then call
;;  gcompile_astrolib, '<path_to_the_package_directory>'
;;
PRO gcompile_astrolib, path
  COMPILE_OPT IDL2
  ON_ERROR, 2

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
  gcompile, /hold, path + 'pro/fxbintable.pro'
  gcompile, /hold, path + 'pro/list_with_path.pro'
  gcompile, /hold, path + 'pro/fxparpos.pro'
  gcompile, /hold, path + 'pro/is_ieee_big.pro'

  gcompile, /hold, path + 'pro/ad2xy.pro'
  gcompile, /hold, path + 'pro/add_distort.pro'
  gcompile, /hold, path + 'pro/adstring.pro'
  gcompile, /hold, path + 'pro/adxy.pro'
  gcompile, /hold, path + 'pro/airtovac.pro'
  gcompile, /hold, path + 'pro/aitoff_grid.pro'
  gcompile, /hold, path + 'pro/aitoff.pro'
  gcompile, /hold, path + 'pro/al_legend.pro'
  gcompile, /hold, path + 'pro/al_legendtest.pro'
  gcompile, /hold, path + 'pro/altaz2hadec.pro'
  gcompile, /hold, path + 'pro/aper.pro'
  gcompile, /hold, path + 'pro/arcbar.pro'
  gcompile, /hold, path + 'pro/arrows.pro'
  gcompile, /hold, path + 'pro/asinh.pro'
  gcompile, /hold, path + 'pro/astdisp.pro'
  gcompile, /hold, path + 'pro/astrolib.pro'
  gcompile, /hold, path + 'pro/astro.pro'
  gcompile, /hold, path + 'pro/autohist.pro'
  gcompile, /hold, path + 'pro/avg.pro'
  gcompile, /hold, path + 'pro/baryvel.pro'
  gcompile, /hold, path + 'pro/biweight_mean.pro'
  gcompile, /hold, path + 'pro/blink.pro'
  gcompile, /hold, path + 'pro/blkshift.pro'
  gcompile, /hold, path + 'pro/boost_array.pro'
  gcompile, /hold, path + 'pro/boxave.pro'
  gcompile, /hold, path + 'pro/bprecess.pro'
  gcompile, /hold, path + 'pro/break_path.pro'
  gcompile, /hold, path + 'pro/bsort.pro'
  gcompile, /hold, path + 'pro/calz_unred.pro'
  gcompile, /hold, path + 'pro/ccm_unred.pro'
  gcompile, /hold, path + 'pro/check_fits.pro'
  gcompile, /hold, path + 'pro/checksum32.pro'
  gcompile, /hold, path + 'pro/cic.pro'
  gcompile, /hold, path + 'pro/cirrange.pro'
  gcompile, /hold, path + 'pro/cleanplot.pro'
  gcompile, /hold, path + 'pro/cntrd.pro'
  gcompile, /hold, path + 'pro/co_aberration.pro'
  gcompile, /hold, path + 'pro/compare_struct.pro'
  gcompile, /hold, path + 'pro/concat_dir.pro'
  gcompile, /hold, path + 'pro/cons_dec.pro'
  gcompile, /hold, path + 'pro/cons_ra.pro'
  gcompile, /hold, path + 'pro/co_nutate.pro'
  gcompile, /hold, path + 'pro/convolve.pro'
  gcompile, /hold, path + 'pro/copy_struct_inx.pro'
  gcompile, /hold, path + 'pro/copy_struct.pro'
  gcompile, /hold, path + 'pro/co_refract.pro'
  gcompile, /hold, path + 'pro/correl_images.pro'
  gcompile, /hold, path + 'pro/correl_optimize.pro'
  gcompile, /hold, path + 'pro/corrmat_analyze.pro'
  gcompile, /hold, path + 'pro/cosmo_param.pro'
  gcompile, /hold, path + 'pro/create_struct.pro'
  gcompile, /hold, path + 'pro/cr_reject.pro'
  gcompile, /hold, path + 'pro/cspline.pro'
  gcompile, /hold, path + 'pro/ct2lst.pro'
  ;;gcompile, /hold, path + 'pro/curs.pro' ;;This one depends on the obsolete SCR_CURMOV routine
  gcompile, /hold, path + 'pro/curval.pro'
  gcompile, /hold, path + 'pro/daoerf.pro'
  gcompile, /hold, path + 'pro/dao_value.pro'
  gcompile, /hold, path + 'pro/date_conv.pro'
  gcompile, /hold, path + 'pro/date.pro'
  gcompile, /hold, path + 'pro/daycnv.pro'
  gcompile, /hold, path + 'pro/dbbuild.pro'
  gcompile, /hold, path + 'pro/dbcircle.pro'
  gcompile, /hold, path + 'pro/dbclose.pro'
  gcompile, /hold, path + 'pro/dbcompare.pro'
  gcompile, /hold, path + 'pro/dbcreate.pro'
  gcompile, /hold, path + 'pro/dbdelete.pro'
  gcompile, /hold, path + 'pro/dbedit_basic.pro'
  gcompile, /hold, path + 'pro/dbedit.pro'
  gcompile, /hold, path + 'pro/db_ent2ext.pro'
  gcompile, /hold, path + 'pro/db_ent2host.pro'
  gcompile, /hold, path + 'pro/dbext_dbf.pro'
  gcompile, /hold, path + 'pro/dbext_ind.pro'
  gcompile, /hold, path + 'pro/dbext.pro'
  gcompile, /hold, path + 'pro/dbfind_entry.pro'
  gcompile, /hold, path + 'pro/dbfind.pro'
  gcompile, /hold, path + 'pro/dbfind_sort.pro'
  gcompile, /hold, path + 'pro/dbfparse.pro'
  gcompile, /hold, path + 'pro/dbget.pro'
  gcompile, /hold, path + 'pro/dbhelp.pro'
  gcompile, /hold, path + 'pro/dbindex_blk.pro'
  gcompile, /hold, path + 'pro/dbindex.pro'
  gcompile, /hold, path + 'pro/db_info.pro'
  gcompile, /hold, path + 'pro/db_item_info.pro'
  gcompile, /hold, path + 'pro/db_item.pro'
  gcompile, /hold, path + 'pro/dbmatch.pro'
  gcompile, /hold, path + 'pro/dbopen.pro'
  gcompile, /hold, path + 'pro/db_or.pro'
  gcompile, /hold, path + 'pro/dbprint.pro'
  gcompile, /hold, path + 'pro/dbput.pro'
  gcompile, /hold, path + 'pro/dbrd.pro'
  gcompile, /hold, path + 'pro/dbsearch.pro'
  gcompile, /hold, path + 'pro/dbsort.pro'
  gcompile, /hold, path + 'pro/dbtarget.pro'
  gcompile, /hold, path + 'pro/dbtitle.pro'
  gcompile, /hold, path + 'pro/db_titles.pro'
  gcompile, /hold, path + 'pro/dbupdate.pro'
  gcompile, /hold, path + 'pro/dbval.pro'
  gcompile, /hold, path + 'pro/dbwrt.pro'
  gcompile, /hold, path + 'pro/dbxput.pro'
  gcompile, /hold, path + 'pro/dbxval.pro'
  gcompile, /hold, path + 'pro/delvarx.pro'
  gcompile, /hold, path + 'pro/deredd.pro'
  gcompile, /hold, path + 'pro/detabify.pro'
  gcompile, /hold, path + 'pro/dist_circle.pro'
  gcompile, /hold, path + 'pro/dist_ellipse.pro'
  gcompile, /hold, path + 'pro/eci2geo.pro'
  gcompile, /hold, path + 'pro/eq2hor.pro'
  gcompile, /hold, path + 'pro/eqpole_grid.pro'
  gcompile, /hold, path + 'pro/eqpole.pro'
  gcompile, /hold, path + 'pro/euler.pro'
  gcompile, /hold, path + 'pro/expand_tilde.pro'
  gcompile, /hold, path + 'pro/extast.pro'
  gcompile, /hold, path + 'pro/extgrp.pro'
  gcompile, /hold, path + 'pro/factor.pro'
  gcompile, /hold, path + 'pro/fdecomp.pro'
  gcompile, /hold, path + 'pro/f_format.pro'
  gcompile, /hold, path + 'pro/filter_image.pro'
  gcompile, /hold, path + 'pro/find_all_dir.pro'
  gcompile, /hold, path + 'pro/find.pro'
  gcompile, /hold, path + 'pro/findpro.pro'
  gcompile, /hold, path + 'pro/find_with_def.pro'
  gcompile, /hold, path + 'pro/fitexy.pro'
  gcompile, /hold, path + 'pro/fits_add_checksum.pro'
  gcompile, /hold, path + 'pro/fits_ascii_encode.pro'
  gcompile, /hold, path + 'pro/fits_cd_fix.pro'
  gcompile, /hold, path + 'pro/fits_close.pro'
  gcompile, /hold, path + 'pro/fitsdir.pro'
  gcompile, /hold, path + 'pro/fits_help.pro'
  gcompile, /hold, path + 'pro/fits_info.pro'
  gcompile, /hold, path + 'pro/fits_open.pro'
  gcompile, /hold, path + 'pro/fits_read.pro'
  gcompile, /hold, path + 'pro/fitsrgb_to_tiff.pro'
  gcompile, /hold, path + 'pro/fits_test_checksum.pro'
  gcompile, /hold, path + 'pro/fits_write.pro'
  gcompile, /hold, path + 'pro/flegendre.pro'
  gcompile, /hold, path + 'pro/flux2mag.pro'
  gcompile, /hold, path + 'pro/fm_unred.pro'
  gcompile, /hold, path + 'pro/forprint.pro'
  gcompile, /hold, path + 'pro/frebin.pro'
  gcompile, /hold, path + 'pro/ftab_delrow.pro'
  gcompile, /hold, path + 'pro/ftab_ext.pro'
  gcompile, /hold, path + 'pro/ftab_help.pro'
  gcompile, /hold, path + 'pro/ftab_print.pro'
  gcompile, /hold, path + 'pro/ftaddcol.pro'
  gcompile, /hold, path + 'pro/ftcreate.pro'
  gcompile, /hold, path + 'pro/ftdelcol.pro'
  gcompile, /hold, path + 'pro/ftdelrow.pro'
  gcompile, /hold, path + 'pro/ftget.pro'
  gcompile, /hold, path + 'pro/fthelp.pro'
  gcompile, /hold, path + 'pro/fthmod.pro'
  gcompile, /hold, path + 'pro/ftinfo.pro'
  gcompile, /hold, path + 'pro/ftkeeprow.pro'
  gcompile, /hold, path + 'pro/ftprint.pro'
  gcompile, /hold, path + 'pro/ftput.pro'
  gcompile, /hold, path + 'pro/ftsize.pro'
  gcompile, /hold, path + 'pro/ftsort.pro'
  gcompile, /hold, path + 'pro/fxaddpar.pro'
  gcompile, /hold, path + 'pro/fxbaddcol.pro'
  gcompile, /hold, path + 'pro/fxbclose.pro'
  gcompile, /hold, path + 'pro/fxbcolnum.pro'
  gcompile, /hold, path + 'pro/fxbcreate.pro'
  gcompile, /hold, path + 'pro/fxbdimen.pro'
  gcompile, /hold, path + 'pro/fxbfindlun.pro'
  gcompile, /hold, path + 'pro/fxbfind.pro'
  gcompile, /hold, path + 'pro/fxbfinish.pro'
  gcompile, /hold, path + 'pro/fxbgrow.pro'
  gcompile, /hold, path + 'pro/fxbheader.pro'
  gcompile, /hold, path + 'pro/fxbhelp.pro'
  gcompile, /hold, path + 'pro/fxbhmake.pro'
  gcompile, /hold, path + 'pro/fxbintable.pro'
  gcompile, /hold, path + 'pro/fxbisopen.pro'
  gcompile, /hold, path + 'pro/fxbopen.pro'
  gcompile, /hold, path + 'pro/fxbparse.pro'
  gcompile, /hold, path + 'pro/fxbreadm.pro'
  gcompile, /hold, path + 'pro/fxbread.pro'
  gcompile, /hold, path + 'pro/fxbstate.pro'
  gcompile, /hold, path + 'pro/fxbtdim.pro'
  gcompile, /hold, path + 'pro/fxbtform.pro'
  gcompile, /hold, path + 'pro/fxbwrite.pro'
  gcompile, /hold, path + 'pro/fxbwritm.pro'
  gcompile, /hold, path + 'pro/fxfindend.pro'
  gcompile, /hold, path + 'pro/fxhclean.pro'
  gcompile, /hold, path + 'pro/fxhmake.pro'
  gcompile, /hold, path + 'pro/fxhmodify.pro'
  gcompile, /hold, path + 'pro/fxhread.pro'
  gcompile, /hold, path + 'pro/fxmove.pro'
  gcompile, /hold, path + 'pro/fxparpos.pro'
  gcompile, /hold, path + 'pro/fxpar.pro'
  gcompile, /hold, path + 'pro/fxposit.pro'
  gcompile, /hold, path + 'pro/fxread.pro'
  gcompile, /hold, path + 'pro/fxwrite.pro'
  gcompile, /hold, path + 'pro/galage.pro'
  gcompile, /hold, path + 'pro/gal_flat.pro'
  gcompile, /hold, path + 'pro/gal_uvw.pro'
  gcompile, /hold, path + 'pro/gaussian.pro'
  gcompile, /hold, path + 'pro/gcirc.pro'
  gcompile, /hold, path + 'pro/gcntrd.pro'
  gcompile, /hold, path + 'pro/geo2eci.pro'
  gcompile, /hold, path + 'pro/geo2geodetic.pro'
  gcompile, /hold, path + 'pro/geo2mag.pro'
  gcompile, /hold, path + 'pro/geodetic2geo.pro'
  gcompile, /hold, path + 'pro/get_coords.pro'
  gcompile, /hold, path + 'pro/get_date.pro'
  gcompile, /hold, path + 'pro/get_equinox.pro'
  gcompile, /hold, path + 'pro/get_juldate.pro'
  gcompile, /hold, path + 'pro/getopt.pro'
  gcompile, /hold, path + 'pro/get_pipe_filesize.pro'
  gcompile, /hold, path + 'pro/getpro.pro'
  gcompile, /hold, path + 'pro/getpsf.pro'
  gcompile, /hold, path + 'pro/getrot.pro'
  gcompile, /hold, path + 'pro/gettok.pro'
  gcompile, /hold, path + 'pro/getwrd.pro'
  gcompile, /hold, path + 'pro/glactc_pm.pro'
  gcompile, /hold, path + 'pro/glactc.pro'
  gcompile, /hold, path + 'pro/group.pro'
  gcompile, /hold, path + 'pro/gsssadxy.pro'
  gcompile, /hold, path + 'pro/gsssextast.pro'
  gcompile, /hold, path + 'pro/gsss_stdast.pro'
  gcompile, /hold, path + 'pro/gsssxyad.pro'
  gcompile, /hold, path + 'pro/hadec2altaz.pro'
  gcompile, /hold, path + 'pro/hastrom.pro'
  gcompile, /hold, path + 'pro/hboxave.pro'
  gcompile, /hold, path + 'pro/hcongrid.pro'
  gcompile, /hold, path + 'pro/headfits.pro'
  gcompile, /hold, path + 'pro/helio_jd.pro'
  gcompile, /hold, path + 'pro/helio.pro'
  gcompile, /hold, path + 'pro/helio_rv.pro'
  gcompile, /hold, path + 'pro/hermite.pro'
  gcompile, /hold, path + 'pro/heuler.pro'
  gcompile, /hold, path + 'pro/hextract.pro'
  gcompile, /hold, path + 'pro/hgrep.pro'
  gcompile, /hold, path + 'pro/histogauss.pro'
  gcompile, /hold, path + 'pro/hor2eq.pro'
  gcompile, /hold, path + 'pro/host_to_ieee.pro'
  gcompile, /hold, path + 'pro/hprecess.pro'
  gcompile, /hold, path + 'pro/hprint.pro'
  gcompile, /hold, path + 'pro/hrebin.pro'
  gcompile, /hold, path + 'pro/hreverse.pro'
  gcompile, /hold, path + 'pro/hrotate.pro'
  gcompile, /hold, path + 'pro/hrot.pro'
  gcompile, /hold, path + 'pro/ieee_to_host.pro'
  gcompile, /hold, path + 'pro/imcontour.pro'
  gcompile, /hold, path + 'pro/imdbase.pro'
  gcompile, /hold, path + 'pro/imf.pro'
  gcompile, /hold, path + 'pro/imlist.pro'
  gcompile, /hold, path + 'pro/irafdir.pro'
  gcompile, /hold, path + 'pro/irafrd.pro'
  gcompile, /hold, path + 'pro/irafwrt.pro'
  gcompile, /hold, path + 'pro/isarray.pro'
  gcompile, /hold, path + 'pro/is_ieee_big.pro'
  gcompile, /hold, path + 'pro/ismeuv.pro'
  gcompile, /hold, path + 'pro/jdcnv.pro'
  gcompile, /hold, path + 'pro/jplephinterp.pro'
  gcompile, /hold, path + 'pro/jplephread.pro'
  gcompile, /hold, path + 'pro/jplephtest.pro'
  gcompile, /hold, path + 'pro/jprecess.pro'
  gcompile, /hold, path + 'pro/juldate.pro'
  gcompile, /hold, path + 'pro/ksone.pro'
  gcompile, /hold, path + 'pro/kstwo.pro'
  gcompile, /hold, path + 'pro/kuiperone.pro'
  gcompile, /hold, path + 'pro/kuipertwo.pro'
  gcompile, /hold, path + 'pro/lineid_plot.pro'
  gcompile, /hold, path + 'pro/linmix_err.pro'
  gcompile, /hold, path + 'pro/linterp.pro'
  gcompile, /hold, path + 'pro/list_with_path.pro'
  gcompile, /hold, path + 'pro/lsf_rotate.pro'
  gcompile, /hold, path + 'pro/lumdist.pro'
  gcompile, /hold, path + 'pro/mag2flux.pro'
  gcompile, /hold, path + 'pro/mag2geo.pro'
  gcompile, /hold, path + 'pro/make_2d.pro'
  gcompile, /hold, path + 'pro/make_astr.pro'
  gcompile, /hold, path + 'pro/match2.pro'
  gcompile, /hold, path + 'pro/match.pro'
  gcompile, /hold, path + 'pro/max_entropy.pro'
  gcompile, /hold, path + 'pro/max_likelihood.pro'
  gcompile, /hold, path + 'pro/meanclip.pro'
  gcompile, /hold, path + 'pro/medarr.pro'
  gcompile, /hold, path + 'pro/medsmooth.pro'
  gcompile, /hold, path + 'pro/minf_bracket.pro'
  gcompile, /hold, path + 'pro/minf_conj_grad.pro'
  gcompile, /hold, path + 'pro/minf_parabol_d.pro'
  gcompile, /hold, path + 'pro/minf_parabolic.pro'
  gcompile, /hold, path + 'pro/minmax.pro'
  gcompile, /hold, path + 'pro/mkhdr.pro'
  gcompile, /hold, path + 'pro/mlinmix_err.pro'
  gcompile, /hold, path + 'pro/mmm.pro'
  gcompile, /hold, path + 'pro/modfits.pro'
  gcompile, /hold, path + 'pro/month_cnv.pro'
  gcompile, /hold, path + 'pro/moonpos.pro'
  gcompile, /hold, path + 'pro/mphase.pro'
  gcompile, /hold, path + 'pro/mrandomn.pro'
  gcompile, /hold, path + 'pro/mrdfits.pro'
  gcompile, /hold, path + 'pro/mrd_hread.pro'
  gcompile, /hold, path + 'pro/mrd_skip.pro'
  gcompile, /hold, path + 'pro/mrd_struct.pro'
  gcompile, /hold, path + 'pro/multinom.pro'
  gcompile, /hold, path + 'pro/multiplot.pro'
  gcompile, /hold, path + 'pro/mwrfits.pro'
  gcompile, /hold, path + 'pro/n_bytes.pro'
  gcompile, /hold, path + 'pro/ngp.pro'
  gcompile, /hold, path + 'pro/nint.pro'
  gcompile, /hold, path + 'pro/nstar.pro'
  gcompile, /hold, path + 'pro/nulltrim.pro'
  gcompile, /hold, path + 'pro/nutate.pro'
  gcompile, /hold, path + 'pro/observatory.pro'
  gcompile, /hold, path + 'pro/one_arrow.pro'
  gcompile, /hold, path + 'pro/one_ray.pro'
  gcompile, /hold, path + 'pro/oploterror.pro'
  gcompile, /hold, path + 'pro/ordinal.pro'
  gcompile, /hold, path + 'pro/partvelvec.pro'
  gcompile, /hold, path + 'pro/pca.pro'
  gcompile, /hold, path + 'pro/pent.pro'
  gcompile, /hold, path + 'pro/permute.pro'
  gcompile, /hold, path + 'pro/pixcolor.pro'
  gcompile, /hold, path + 'pro/pixwt.pro'
  gcompile, /hold, path + 'pro/pkfit.pro'
  gcompile, /hold, path + 'pro/planck.pro'
  gcompile, /hold, path + 'pro/planet_coords.pro'
  gcompile, /hold, path + 'pro/ploterror.pro'
  gcompile, /hold, path + 'pro/plothist.pro'
  gcompile, /hold, path + 'pro/plotsym.pro'
  gcompile, /hold, path + 'pro/poidev.pro'
  gcompile, /hold, path + 'pro/polint.pro'
  gcompile, /hold, path + 'pro/polrec.pro'
  gcompile, /hold, path + 'pro/polyleg.pro'
  gcompile, /hold, path + 'pro/poly_smooth.pro'
  gcompile, /hold, path + 'pro/posang.pro'
  gcompile, /hold, path + 'pro/positivity.pro'
  gcompile, /hold, path + 'pro/precess_cd.pro'
  gcompile, /hold, path + 'pro/precess.pro'
  gcompile, /hold, path + 'pro/precess_xyz.pro'
  gcompile, /hold, path + 'pro/premat.pro'
  gcompile, /hold, path + 'pro/prime.pro'
  gcompile, /hold, path + 'pro/print_struct.pro'
  gcompile, /hold, path + 'pro/prob_ks.pro'
  gcompile, /hold, path + 'pro/prob_kuiper.pro'
  gcompile, /hold, path + 'pro/psf_gaussian.pro'
  gcompile, /hold, path + 'pro/putast.pro'
  gcompile, /hold, path + 'pro/qdcb_grid.pro'
  gcompile, /hold, path + 'pro/qget_string.pro'
  gcompile, /hold, path + 'pro/qsimp.pro'
  gcompile, /hold, path + 'pro/qtrap.pro'
  gcompile, /hold, path + 'pro/quadterp.pro'
  gcompile, /hold, path + 'pro/querydss.pro'
  gcompile, /hold, path + 'pro/querygsc.pro'
  gcompile, /hold, path + 'pro/query_irsa_cat.pro'
  gcompile, /hold, path + 'pro/querysimbad.pro'
  gcompile, /hold, path + 'pro/queryvizier.pro'
  gcompile, /hold, path + 'pro/radec.pro'
  gcompile, /hold, path + 'pro/randomchi.pro'
  gcompile, /hold, path + 'pro/randomdir.pro'
  gcompile, /hold, path + 'pro/randomgam.pro'
  gcompile, /hold, path + 'pro/randomp.pro'
  gcompile, /hold, path + 'pro/randomwish.pro'
  gcompile, /hold, path + 'pro/rdfits_struct.pro'
  gcompile, /hold, path + 'pro/rdfloat.pro'
  gcompile, /hold, path + 'pro/rdplot.pro'
  gcompile, /hold, path + 'pro/rdpsf.pro'
  gcompile, /hold, path + 'pro/readcol.pro'
  gcompile, /hold, path + 'pro/readfits.pro'
  gcompile, /hold, path + 'pro/read_fmr.pro'
  gcompile, /hold, path + 'pro/readfmt.pro'
  gcompile, /hold, path + 'pro/read_ipac_table.pro'
  gcompile, /hold, path + 'pro/read_ipac_var.pro'
  gcompile, /hold, path + 'pro/read_key.pro'
  gcompile, /hold, path + 'pro/recpol.pro'
  gcompile, /hold, path + 'pro/remchar.pro'
  gcompile, /hold, path + 'pro/rem_dup.pro'
  gcompile, /hold, path + 'pro/remove.pro'
  gcompile, /hold, path + 'pro/repchr.pro'
  gcompile, /hold, path + 'pro/repstr.pro'
  gcompile, /hold, path + 'pro/resistant_mean.pro'
  gcompile, /hold, path + 'pro/rhotheta.pro'
  gcompile, /hold, path + 'pro/rinter.pro'
  gcompile, /hold, path + 'pro/rob_checkfit.pro'
  gcompile, /hold, path + 'pro/robust_linefit.pro'
  gcompile, /hold, path + 'pro/robust_poly_fit.pro'
  gcompile, /hold, path + 'pro/robust_sigma.pro'
  gcompile, /hold, path + 'pro/safe_correlate.pro'
  gcompile, /hold, path + 'pro/select_w.pro'
  gcompile, /hold, path + 'pro/sigma_filter.pro'
  gcompile, /hold, path + 'pro/sigrange.pro'
  gcompile, /hold, path + 'pro/sip_eval.pro'
  gcompile, /hold, path + 'pro/sixlin.pro'
  gcompile, /hold, path + 'pro/sixty.pro'
  gcompile, /hold, path + 'pro/skyadj_cube.pro'
  gcompile, /hold, path + 'pro/sky.pro'
  gcompile, /hold, path + 'pro/solve_astro.pro'
  gcompile, /hold, path + 'pro/spec_dir.pro'
  gcompile, /hold, path + 'pro/sphdist.pro'
  gcompile, /hold, path + 'pro/srcor.pro'
  gcompile, /hold, path + 'pro/starast.pro'
  ;gcompile, /hold, path + 'pro/st_diskread.pro' ;;This one depends on the obsolete TAB_CREATE, TAB_PUT and TAB_WRITE routines
  gcompile, /hold, path + 'pro/store_array.pro'
  gcompile, /hold, path + 'pro/strcompress2.pro'
  gcompile, /hold, path + 'pro/str_index.pro'
  gcompile, /hold, path + 'pro/strn.pro'
  gcompile, /hold, path + 'pro/strnumber.pro'
  gcompile, /hold, path + 'pro/substar.pro'
  gcompile, /hold, path + 'pro/sunpos.pro'
  gcompile, /hold, path + 'pro/sunsymbol.pro'
  gcompile, /hold, path + 'pro/sxaddhist.pro'
  gcompile, /hold, path + 'pro/sxaddpar.pro'
  gcompile, /hold, path + 'pro/sxdelpar.pro'
  gcompile, /hold, path + 'pro/sxginfo.pro'
  gcompile, /hold, path + 'pro/sxgpar.pro'
  gcompile, /hold, path + 'pro/sxgread.pro'
  gcompile, /hold, path + 'pro/sxhcopy.pro'
  gcompile, /hold, path + 'pro/sxhmake.pro'
  gcompile, /hold, path + 'pro/sxhread.pro'
  gcompile, /hold, path + 'pro/sxhwrite.pro'
  gcompile, /hold, path + 'pro/sxmake.pro'
  gcompile, /hold, path + 'pro/sxopen.pro'
  gcompile, /hold, path + 'pro/sxpar.pro'
  gcompile, /hold, path + 'pro/sxread.pro'
  gcompile, /hold, path + 'pro/sxwrite.pro'
  gcompile, /hold, path + 'pro/tabinv.pro'
  gcompile, /hold, path + 'pro/tag_exist.pro'
  gcompile, /hold, path + 'pro/t_aper.pro'
  gcompile, /hold, path + 'pro/tbdelcol.pro'
  gcompile, /hold, path + 'pro/tbdelrow.pro'
  gcompile, /hold, path + 'pro/tbget.pro'
  gcompile, /hold, path + 'pro/tbhelp.pro'
  gcompile, /hold, path + 'pro/tbinfo.pro'
  gcompile, /hold, path + 'pro/tbprint.pro'
  gcompile, /hold, path + 'pro/tbsize.pro'
  gcompile, /hold, path + 'pro/tdb2tdt.pro'
  gcompile, /hold, path + 'pro/ten.pro'
  gcompile, /hold, path + 'pro/tenv.pro'
  gcompile, /hold, path + 'pro/textclose.pro'
  gcompile, /hold, path + 'pro/textopen.pro'
  gcompile, /hold, path + 'pro/t_find.pro'
  gcompile, /hold, path + 'pro/t_getpsf.pro'
  gcompile, /hold, path + 'pro/t_group.pro'
  gcompile, /hold, path + 'pro/ticlabels.pro'
  gcompile, /hold, path + 'pro/tic_one.pro'
  gcompile, /hold, path + 'pro/ticpos.pro'
  gcompile, /hold, path + 'pro/tics.pro'
  gcompile, /hold, path + 'pro/t_nstar.pro'
  gcompile, /hold, path + 'pro/tnx_eval.pro'
  gcompile, /hold, path + 'pro/to_hex.pro'
  gcompile, /hold, path + 'pro/tpv_eval.pro'
  gcompile, /hold, path + 'pro/transform_coeff.pro'
  gcompile, /hold, path + 'pro/trapzd.pro'
  gcompile, /hold, path + 'pro/tsc.pro'
  gcompile, /hold, path + 'pro/t_substar.pro'
  gcompile, /hold, path + 'pro/tsum.pro'
  gcompile, /hold, path + 'pro/tvbox.pro'
  gcompile, /hold, path + 'pro/tvcircle.pro'
  gcompile, /hold, path + 'pro/tvellipse.pro'
  gcompile, /hold, path + 'pro/tvlaser.pro'
  gcompile, /hold, path + 'pro/tvlist.pro'
  gcompile, /hold, path + 'pro/unzoom_xy.pro'
  gcompile, /hold, path + 'pro/update_distort.pro'
  gcompile, /hold, path + 'pro/uvbybeta.pro'
  gcompile, /hold, path + 'pro/vactoair.pro'
  gcompile, /hold, path + 'pro/valid_num.pro'
  gcompile, /hold, path + 'pro/vect.pro'
  gcompile, /hold, path + 'pro/vsym.pro'
  gcompile, /hold, path + 'pro/wcs_check_ctype.pro'
  gcompile, /hold, path + 'pro/wcs_demo.pro'
  gcompile, /hold, path + 'pro/wcs_getpole.pro'
  gcompile, /hold, path + 'pro/wcs_rotate.pro'
  gcompile, /hold, path + 'pro/wcssph2xy.pro'
  gcompile, /hold, path + 'pro/wcsxy2sph.pro'
  gcompile, /hold, path + 'pro/webget.pro'
  gcompile, /hold, path + 'pro/wfpc2_metric.pro'
  gcompile, /hold, path + 'pro/wfpc2_read.pro'
  gcompile, /hold, path + 'pro/wherenan.pro'
  gcompile, /hold, path + 'pro/where_tag.pro'
  gcompile, /hold, path + 'pro/writefits.pro'
  gcompile, /hold, path + 'pro/write_ipac_table.pro'
  gcompile, /hold, path + 'pro/xdispstr.pro'
  gcompile, /hold, path + 'pro/xmedsky.pro'
  gcompile, /hold, path + 'pro/xy2ad.pro'
  gcompile, /hold, path + 'pro/xyad.pro'
  gcompile, /hold, path + 'pro/xyxy.pro'
  gcompile, /hold, path + 'pro/xyz.pro'
  gcompile, /hold, path + 'pro/ydn2md.pro'
  gcompile, /hold, path + 'pro/ymd2dn.pro'
  gcompile, /hold, path + 'pro/zang.pro'
  gcompile, /hold, path + 'pro/zbrent.pro'
  gcompile, /hold, path + 'pro/zenpos.pro'
  gcompile, /hold, path + 'pro/zoom_xy.pro'
  gcompile, /hold, path + 'pro/zparcheck.pro'

  ;;Compile the package
  gcompile

  ;;Initialize non-standard system variables
  astrolib

  ;;Set environment variable
  SETENV, 'ASTRO_DATA=' + path + 'data/'
END
