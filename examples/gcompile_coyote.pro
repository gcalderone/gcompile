@gcompile
;;
;;This file has been automatically generated with the command:
;;  gcompile_makepkg 'coyote' '/home/gcalderone/my/work/software/IDL/Contrib/coyote_astron_20150325'
;;
;;To initialize the 'coyote' package you should copy the gcompile_coyote.pro file
;;in a directory listed in the IDL_PATH environment variable, and then call
;;  gcompile_coyote, '<path_to_the_package_directory>'
;;
PRO gcompile_coyote, path
  COMPILE_OPT IDL2
  ON_ERROR, 2

  PRINT, 'GCOMPILE coyote : ' + path

  ;;Forward declaration of functions
  FORWARD_FUNCTION ASPECT
  FORWARD_FUNCTION cgAspect
  FORWARD_FUNCTION cgBitGet
  FORWARD_FUNCTION cgCheckForSymbols
  FORWARD_FUNCTION cgCmdWindow::Init
  FORWARD_FUNCTION cgWindow_Command::Copy
  FORWARD_FUNCTION cgWindow_Command::Get_Keywords
  FORWARD_FUNCTION cgWindow_Command::EvaluateKeywords
  FORWARD_FUNCTION cgWindow_Command::ReplaceEscapeSequences
  FORWARD_FUNCTION cgWindow_Command::INIT
  FORWARD_FUNCTION cgCmdWindow::GetCommandKeyword
  FORWARD_FUNCTION cgCmdWindow::PackageCommand
  FORWARD_FUNCTION cgCOLOR24
  FORWARD_FUNCTION cgColor
  FORWARD_FUNCTION cgCoyoteGraphic
  FORWARD_FUNCTION cgDBLTOSTR
  FORWARD_FUNCTION cgDefaultColor
  FORWARD_FUNCTION cgDefCharSize
  FORWARD_FUNCTION cgErrorMsg
  FORWARD_FUNCTION cgGetColorState
  FORWARD_FUNCTION cgGreek
  FORWARD_FUNCTION cgHasImageMagick
  FORWARD_FUNCTION cgLayout
  FORWARD_FUNCTION cgPickColorName
  FORWARD_FUNCTION cgPickfile
  FORWARD_FUNCTION cgPS_Config
  FORWARD_FUNCTION cgPSDims
  FORWARD_FUNCTION cgPSWINDOW_ASPECT
  FORWARD_FUNCTION cgPSWINDOW
  FORWARD_FUNCTION cgQuery
  FORWARD_FUNCTION cgRootName
  FORWARD_FUNCTION cgScaleVector
  FORWARD_FUNCTION cgSnapshot
  FORWARD_FUNCTION cgSourceDir
  FORWARD_FUNCTION cgSymbol
  FORWARD_FUNCTION cgSymCat
  FORWARD_FUNCTION ColorsAreIdentical
  FORWARD_FUNCTION Convert_To_Type
  FORWARD_FUNCTION FPUFIX
  FORWARD_FUNCTION FSC_Droplist::EventHandler
  FORWARD_FUNCTION FSC_Droplist_Events
  FORWARD_FUNCTION FSC_Droplist::GetIndex
  FORWARD_FUNCTION FSC_Droplist::GetSelection
  FORWARD_FUNCTION FSC_Droplist::GetValues
  FORWARD_FUNCTION FSC_Droplist::GetUValue
  FORWARD_FUNCTION FSC_Droplist::GetID
  FORWARD_FUNCTION FSC_Droplist::INIT
  FORWARD_FUNCTION FSC_Droplist
  FORWARD_FUNCTION FSC_Field_WidgetFont
  FORWARD_FUNCTION FSC_Field::GetLabelSize
  FORWARD_FUNCTION FSC_Field::GetTextSize
  FORWARD_FUNCTION FSC_Field::GetTextID
  FORWARD_FUNCTION FSC_Field::GetID
  FORWARD_FUNCTION FSC_Field::Geometry
  FORWARD_FUNCTION FSC_Field::Get_Value
  FORWARD_FUNCTION FSC_Field::Validate
  FORWARD_FUNCTION FSC_Field::ReturnValue
  FORWARD_FUNCTION FSC_Field::TextEvents
  FORWARD_FUNCTION FSC_Field::INIT
  FORWARD_FUNCTION FSC_Field_Event_Handler
  FORWARD_FUNCTION FSC_Field_Get_Compound_Widget_Value
  FORWARD_FUNCTION FSC_FIELD
  FORWARD_FUNCTION FSC_Fileselect_WidgetFont
  FORWARD_FUNCTION FSC_FileSelect::GetFilename
  FORWARD_FUNCTION FSC_FileSelect::GetNoMaxSize
  FORWARD_FUNCTION FSC_FileSelect::GetTLB
  FORWARD_FUNCTION FSC_FileSelect::Inspect_DirectoryName
  FORWARD_FUNCTION FSC_FileSelect::Inspect_Filename
  FORWARD_FUNCTION FSC_FileSelect_RStrPos
  FORWARD_FUNCTION FSC_FileSelect::INIT
  FORWARD_FUNCTION FSC_FileSelect_Get_Value
  FORWARD_FUNCTION FSC_FileSelect_Event_Handler
  FORWARD_FUNCTION FSC_FileSelect
  FORWARD_FUNCTION FSC_PLOTWINDOW_Normalize
  FORWARD_FUNCTION FSC_PLOTWINDOW::GetUValue
  FORWARD_FUNCTION FSC_PLOTWINDOW::GetPagePixels
  FORWARD_FUNCTION FSC_PLOTWINDOW::GetPosition
  FORWARD_FUNCTION FSC_PLOTWINDOW::WhichButtonReleased
  FORWARD_FUNCTION FSC_PLOTWINDOW::WhichButtonPressed
  FORWARD_FUNCTION FSC_PLOTWINDOW::InTarget
  FORWARD_FUNCTION FSC_PLOTWINDOW::INIT
  FORWARD_FUNCTION FSC_PLOTWINDOW
  FORWARD_FUNCTION FSC_PSCONFIG_RStrPos
  FORWARD_FUNCTION FSC_PSCONFIG_Normalize
  FORWARD_FUNCTION FSC_PSCONFIG::Construct_Full_Filename
  FORWARD_FUNCTION FSC_PSCONFIG::DefaultList
  FORWARD_FUNCTION FSC_PSCONFIG::GetKeywords
  FORWARD_FUNCTION FSC_PSConfig::GetName
  FORWARD_FUNCTION FSC_PSCONFIG::GetSizes
  FORWARD_FUNCTION FSC_PSCONFIG::PageDimensions
  FORWARD_FUNCTION FSC_PSCONFIG::INIT
  FORWARD_FUNCTION GetPrimaryScreenSize
  FORWARD_FUNCTION Image_Dimensions
  FORWARD_FUNCTION LINKEDLIST::GET_COUNT
  FORWARD_FUNCTION LINKEDLIST::GET_ITEM
  FORWARD_FUNCTION LINKEDLIST::GET_NODE
  FORWARD_FUNCTION LINKEDLIST::GET_VALUE
  FORWARD_FUNCTION LINKEDLIST::HAVE_ITEM
  FORWARD_FUNCTION LINKEDLIST::INIT
  FORWARD_FUNCTION STR_SIZE
  FORWARD_FUNCTION WindowAvailable

  ;;List of .pro files to be compiled
  gcompile, /hold, path + 'pro/coyote/aspect.pro'
  gcompile, /hold, path + 'pro/coyote/cgaspect.pro'
  gcompile, /hold, path + 'pro/coyote/cgaxis.pro'
  gcompile, /hold, path + 'pro/coyote/cgbitget.pro'
  gcompile, /hold, path + 'pro/coyote/cgcentertlb.pro'
  gcompile, /hold, path + 'pro/coyote/cgcheckforsymbols.pro'
  gcompile, /hold, path + 'pro/coyote/cgcmdwindow__define.pro'
  gcompile, /hold, path + 'pro/coyote/cgcolor24.pro'
  gcompile, /hold, path + 'pro/coyote/cgcolorfill.pro'
  gcompile, /hold, path + 'pro/coyote/cgcolor.pro'
  gcompile, /hold, path + 'pro/coyote/cgcontour.pro'
  gcompile, /hold, path + 'pro/coyote/cgcontrol.pro'
  gcompile, /hold, path + 'pro/coyote/cgcoyotegraphic.pro'
  gcompile, /hold, path + 'pro/coyote/cgdbltostr.pro'
  gcompile, /hold, path + 'pro/coyote/cgdefaultcolor.pro'
  gcompile, /hold, path + 'pro/coyote/cgdefcharsize.pro'
  gcompile, /hold, path + 'pro/coyote/cgdisplay.pro'
  gcompile, /hold, path + 'pro/coyote/cgerase.pro'
  gcompile, /hold, path + 'pro/coyote/cgerrormsg.pro'
  gcompile, /hold, path + 'pro/coyote/cgfixps.pro'
  gcompile, /hold, path + 'pro/coyote/cggetcolorstate.pro'
  gcompile, /hold, path + 'pro/coyote/cggreek.pro'
  gcompile, /hold, path + 'pro/coyote/cghasimagemagick.pro'
  gcompile, /hold, path + 'pro/coyote/cgimageinfodescribevalues.pro'
  gcompile, /hold, path + 'pro/coyote/cglayout.pro'
  gcompile, /hold, path + 'pro/coyote/cgpickcolorname.pro'
  gcompile, /hold, path + 'pro/coyote/cgpickfile.pro'
  gcompile, /hold, path + 'pro/coyote/cgplot.pro'
  gcompile, /hold, path + 'pro/coyote/cgplots.pro'
  gcompile, /hold, path + 'pro/coyote/cgpolygon.pro'
  gcompile, /hold, path + 'pro/coyote/cgps2pdf.pro'
  gcompile, /hold, path + 'pro/coyote/cgps2raster.pro'
  gcompile, /hold, path + 'pro/coyote/cgps_close.pro'
  gcompile, /hold, path + 'pro/coyote/cgps_config.pro'
  gcompile, /hold, path + 'pro/coyote/cgpsdims.pro'
  gcompile, /hold, path + 'pro/coyote/cgps_open.pro'
  gcompile, /hold, path + 'pro/coyote/cgpswindow.pro'
  gcompile, /hold, path + 'pro/coyote/cgquery.pro'
  gcompile, /hold, path + 'pro/coyote/cgrootname.pro'
  gcompile, /hold, path + 'pro/coyote/cgscalevector.pro'
  gcompile, /hold, path + 'pro/coyote/cgsetcolorstate.pro'
  gcompile, /hold, path + 'pro/coyote/cgset.pro'
  gcompile, /hold, path + 'pro/coyote/cgshow.pro'
  gcompile, /hold, path + 'pro/coyote/cgsnapshot.pro'
  gcompile, /hold, path + 'pro/coyote/cgsourcedir.pro'
  gcompile, /hold, path + 'pro/coyote/cgsymbol.pro'
  gcompile, /hold, path + 'pro/coyote/cgsymcat.pro'
  gcompile, /hold, path + 'pro/coyote/cgtext.pro'
  gcompile, /hold, path + 'pro/coyote/cgwindow_getdefs.pro'
  gcompile, /hold, path + 'pro/coyote/cgwindow.pro'
  gcompile, /hold, path + 'pro/coyote/cgwindow_setdefs.pro'
  gcompile, /hold, path + 'pro/coyote/colorsareidentical.pro'
  gcompile, /hold, path + 'pro/coyote/convert_to_type.pro'
  gcompile, /hold, path + 'pro/coyote/fpufix.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_droplist.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_field.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_fileselect.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_plotwindow.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_psconfig__define.pro'
  gcompile, /hold, path + 'pro/coyote/fsc_ps_setup__define.pro'
  gcompile, /hold, path + 'pro/coyote/getprimaryscreensize.pro'
  gcompile, /hold, path + 'pro/coyote/image_dimensions.pro'
  gcompile, /hold, path + 'pro/coyote/linkedlist__define.pro'
  gcompile, /hold, path + 'pro/coyote/ps_background.pro'
  gcompile, /hold, path + 'pro/coyote/setdefaultvalue.pro'
  gcompile, /hold, path + 'pro/coyote/str_size.pro'
  gcompile, /hold, path + 'pro/coyote/undefine.pro'
  gcompile, /hold, path + 'pro/coyote/windowavailable.pro'

  ;;Compile the package
  gcompile
END
