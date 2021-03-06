//
//  ViewController.swift
//  GoogleMaterialIconFont
//
//  Created by kitasuke on 09/23/2015.
//  Copyright (c) 2015 kitasuke. All rights reserved.
//

import UIKit
import GoogleMaterialIconFont

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!
    let icons = [
        MaterialIconFont.ThreeDRotation,
        MaterialIconFont.AccessAlarm,
        MaterialIconFont.AccessAlarms,
        MaterialIconFont.AccessTime,
        MaterialIconFont.Accessibility,
        MaterialIconFont.AccountBalanceWallet,
        MaterialIconFont.AccountBalance,
        MaterialIconFont.AccountBox,
        MaterialIconFont.AccountCircle,
        MaterialIconFont.Adb,
        MaterialIconFont.AddAlarm,
        MaterialIconFont.AddAlert,
        MaterialIconFont.AddBox,
        MaterialIconFont.AddCircleOutline,
        MaterialIconFont.AddCircle,
        MaterialIconFont.AddShoppingCart,
        MaterialIconFont.AddToPhotos,
        MaterialIconFont.Add,
        MaterialIconFont.Adjust,
        MaterialIconFont.AirlineSeatFlatAngled,
        MaterialIconFont.AirlineSeatFlat,
        MaterialIconFont.AirlineSeatIndividualSuite,
        MaterialIconFont.AirlineSeatLegroomExtra,
        MaterialIconFont.AirlineSeatLegroomNormal,
        MaterialIconFont.AirlineSeatLegroomReduced,
        MaterialIconFont.AirlineSeatReclineExtra,
        MaterialIconFont.AirlineSeatReclineNormal,
        MaterialIconFont.AirplanemodeActive,
        MaterialIconFont.AirplanemodeInactive,
        MaterialIconFont.Airplay,
        MaterialIconFont.AlarmAdd,
        MaterialIconFont.AlarmOff,
        MaterialIconFont.AlarmOn,
        MaterialIconFont.Alarm,
        MaterialIconFont.Album,
        MaterialIconFont.Android,
        MaterialIconFont.Announcement,
        MaterialIconFont.Apps,
        MaterialIconFont.Archive,
        MaterialIconFont.ArrowBack,
        MaterialIconFont.ArrowDropDownCircle,
        MaterialIconFont.ArrowDropDown,
        MaterialIconFont.ArrowDropUp,
        MaterialIconFont.ArrowForward,
        MaterialIconFont.AspectRatio,
        MaterialIconFont.Assessment,
        MaterialIconFont.AssignmentInd,
        MaterialIconFont.AssignmentLate,
        MaterialIconFont.AssignmentReturn,
        MaterialIconFont.AssignmentReturned,
        MaterialIconFont.AssignmentTurnedIn,
        MaterialIconFont.Assignment,
        MaterialIconFont.AssistantPhoto,
        MaterialIconFont.Assistant,
        MaterialIconFont.AttachFile,
        MaterialIconFont.AttachMoney,
        MaterialIconFont.Attachment,
        MaterialIconFont.Audiotrack,
        MaterialIconFont.Autorenew,
        MaterialIconFont.AvTimer,
        MaterialIconFont.Backspace,
        MaterialIconFont.Backup,
        MaterialIconFont.Battery20,
        MaterialIconFont.Battery30,
        MaterialIconFont.Battery50,
        MaterialIconFont.Battery60,
        MaterialIconFont.Battery80,
        MaterialIconFont.Battery90,
        MaterialIconFont.BatteryAlert,
        MaterialIconFont.BatteryCharging20,
        MaterialIconFont.BatteryCharging30,
        MaterialIconFont.BatteryCharging50,
        MaterialIconFont.BatteryCharging60,
        MaterialIconFont.BatteryCharging80,
        MaterialIconFont.BatteryCharging90,
        MaterialIconFont.BatteryChargingFull,
        MaterialIconFont.BatteryFull,
        MaterialIconFont.BatteryStd,
        MaterialIconFont.BatteryUnknown,
        MaterialIconFont.Beenhere,
        MaterialIconFont.Block,
        MaterialIconFont.BluetoothAudio,
        MaterialIconFont.BluetoothConnected,
        MaterialIconFont.BluetoothDisabled,
        MaterialIconFont.BluetoothSearching,
        MaterialIconFont.Bluetooth,
        MaterialIconFont.BlurCircular,
        MaterialIconFont.BlurLinear,
        MaterialIconFont.BlurOff,
        MaterialIconFont.BlurOn,
        MaterialIconFont.Book,
        MaterialIconFont.BookmarkBorder,
        MaterialIconFont.Bookmark,
        MaterialIconFont.BorderAll,
        MaterialIconFont.BorderBottom,
        MaterialIconFont.BorderClear,
        MaterialIconFont.BorderColor,
        MaterialIconFont.BorderHorizontal,
        MaterialIconFont.BorderInner,
        MaterialIconFont.BorderLeft,
        MaterialIconFont.BorderOuter,
        MaterialIconFont.BorderRight,
        MaterialIconFont.BorderStyle,
        MaterialIconFont.BorderTop,
        MaterialIconFont.BorderVertical,
        MaterialIconFont.Brightness1,
        MaterialIconFont.Brightness2,
        MaterialIconFont.Brightness3,
        MaterialIconFont.Brightness4,
        MaterialIconFont.Brightness5,
        MaterialIconFont.Brightness6,
        MaterialIconFont.Brightness7,
        MaterialIconFont.BrightnessAuto,
        MaterialIconFont.BrightnessHigh,
        MaterialIconFont.BrightnessLow,
        MaterialIconFont.BrightnessMedium,
        MaterialIconFont.BrokenImage,
        MaterialIconFont.Brush,
        MaterialIconFont.BugReport,
        MaterialIconFont.Build,
        MaterialIconFont.Business,
        MaterialIconFont.Cached,
        MaterialIconFont.Cake,
        MaterialIconFont.Call,
        MaterialIconFont.CallEnd,
        MaterialIconFont.CallMade,
        MaterialIconFont.CallMerge,
        MaterialIconFont.CallMissed,
        MaterialIconFont.CallReceived,
        MaterialIconFont.CallSplit,
        MaterialIconFont.CameraAlt,
        MaterialIconFont.CameraEnhance,
        MaterialIconFont.CameraFront,
        MaterialIconFont.CameraRear,
        MaterialIconFont.CameraRoll,
        MaterialIconFont.Camera,
        MaterialIconFont.Cancel,
        MaterialIconFont.CardGiftcard,
        MaterialIconFont.CardMembership,
        MaterialIconFont.CardTravel,
        MaterialIconFont.CastConnected,
        MaterialIconFont.Cast,
        MaterialIconFont.CenterFocusStrong,
        MaterialIconFont.CenterFocusWeak,
        MaterialIconFont.ChangeHistory,
        MaterialIconFont.ChatBubble,
        MaterialIconFont.ChatBubbleOutline,
        MaterialIconFont.Chat,
        MaterialIconFont.CheckBox,
        MaterialIconFont.CheckBoxOutlineBlank,
        MaterialIconFont.CheckCircle,
        MaterialIconFont.Check,
        MaterialIconFont.ChevronLeft,
        MaterialIconFont.ChevronRight,
        MaterialIconFont.ChromeReaderMode,
        MaterialIconFont.Class,
        MaterialIconFont.ClearAll,
        MaterialIconFont.Clear,
        MaterialIconFont.ClosedCaption,
        MaterialIconFont.Close,
        MaterialIconFont.CloudCircle,
        MaterialIconFont.CloudDone,
        MaterialIconFont.CloudDownload,
        MaterialIconFont.CloudOff,
        MaterialIconFont.CloudQueue,
        MaterialIconFont.CloudUpload,
        MaterialIconFont.Cloud,
        MaterialIconFont.Code,
        MaterialIconFont.CollectionsBookmark,
        MaterialIconFont.Collections,
        MaterialIconFont.Colorize,
        MaterialIconFont.ColorLens,
        MaterialIconFont.Comment,
        MaterialIconFont.Compare,
        MaterialIconFont.Computer,
        MaterialIconFont.ConfirmationNumber,
        MaterialIconFont.ContactPhone,
        MaterialIconFont.Contacts,
        MaterialIconFont.ContentCopy,
        MaterialIconFont.ContentCut,
        MaterialIconFont.ContentPaste,
        MaterialIconFont.ControlPoint,
        MaterialIconFont.ControlPointDuplicate,
        MaterialIconFont.Create,
        MaterialIconFont.CreditCard,
        MaterialIconFont.Crop169,
        MaterialIconFont.Crop32,
        MaterialIconFont.Crop54,
        MaterialIconFont.Crop75,
        MaterialIconFont.CropDin,
        MaterialIconFont.CropFree,
        MaterialIconFont.CropLandscape,
        MaterialIconFont.CropOriginal,
        MaterialIconFont.CropPortrait,
        MaterialIconFont.CropSquare,
        MaterialIconFont.Crop,
        MaterialIconFont.Dashboard,
        MaterialIconFont.DataUsage,
        MaterialIconFont.Dehaze,
        MaterialIconFont.Delete,
        MaterialIconFont.Description,
        MaterialIconFont.DesktopMac,
        MaterialIconFont.DesktopWindows,
        MaterialIconFont.Details,
        MaterialIconFont.DeveloperBoard,
        MaterialIconFont.DeveloperMode,
        MaterialIconFont.DeviceHub,
        MaterialIconFont.Devices,
        MaterialIconFont.DialerSip,
        MaterialIconFont.Dialpad,
        MaterialIconFont.DirectionsBike,
        MaterialIconFont.DirectionsBoat,
        MaterialIconFont.DirectionsBus,
        MaterialIconFont.DirectionsCar,
        MaterialIconFont.DirectionsRailway,
        MaterialIconFont.DirectionsRun,
        MaterialIconFont.DirectionsSubway,
        MaterialIconFont.DirectionsTransit,
        MaterialIconFont.DirectionsWalk,
        MaterialIconFont.Directions,
        MaterialIconFont.DiscFull,
        MaterialIconFont.Dns,
        MaterialIconFont.Dock,
        MaterialIconFont.Domain,
        MaterialIconFont.Done,
        MaterialIconFont.DoneAll,
        MaterialIconFont.DoNotDisturbAlt,
        MaterialIconFont.DoNotDisturb,
        MaterialIconFont.Drafts,
        MaterialIconFont.DriveEta,
        MaterialIconFont.Dvr,
        MaterialIconFont.Edit,
        MaterialIconFont.Eject,
        MaterialIconFont.Email,
        MaterialIconFont.Equalizer,
        MaterialIconFont.ErrorOutline,
        MaterialIconFont.Error,
        MaterialIconFont.EventAvailable,
        MaterialIconFont.EventBusy,
        MaterialIconFont.EventNote,
        MaterialIconFont.EventSeat,
        MaterialIconFont.Event,
        MaterialIconFont.ExitToApp,
        MaterialIconFont.ExpandLess,
        MaterialIconFont.ExpandMore,
        MaterialIconFont.Explicit,
        MaterialIconFont.Explore,
        MaterialIconFont.ExposureNeg1,
        MaterialIconFont.ExposureNeg2,
        MaterialIconFont.ExposurePlus1,
        MaterialIconFont.ExposurePlus2,
        MaterialIconFont.ExposureZero,
        MaterialIconFont.Exposure,
        MaterialIconFont.Extension,
        MaterialIconFont.FastForward,
        MaterialIconFont.FastRewind,
        MaterialIconFont.Face,
        MaterialIconFont.FavoriteBorder,
        MaterialIconFont.Favorite,
        MaterialIconFont.Feedback,
        MaterialIconFont.FileDownload,
        MaterialIconFont.FileUpload,
        MaterialIconFont.Filter1,
        MaterialIconFont.Filter2,
        MaterialIconFont.Filter3,
        MaterialIconFont.Filter4,
        MaterialIconFont.Filter5,
        MaterialIconFont.Filter6,
        MaterialIconFont.Filter7,
        MaterialIconFont.Filter8,
        MaterialIconFont.Filter9,
        MaterialIconFont.Filter9Plus,
        MaterialIconFont.FilterBAndW,
        MaterialIconFont.FilterCenterFocus,
        MaterialIconFont.FilterDrama,
        MaterialIconFont.FilterFrames,
        MaterialIconFont.FilterHdr,
        MaterialIconFont.FilterList,
        MaterialIconFont.FilterNone,
        MaterialIconFont.FilterTiltShift,
        MaterialIconFont.FilterVintage,
        MaterialIconFont.Filter,
        MaterialIconFont.FindInPage,
        MaterialIconFont.FindReplace,
        MaterialIconFont.Flag,
        MaterialIconFont.Flare,
        MaterialIconFont.FlashAuto,
        MaterialIconFont.FlashOff,
        MaterialIconFont.FlashOn,
        MaterialIconFont.FlightLand,
        MaterialIconFont.FlightTakeoff,
        MaterialIconFont.Flight,
        MaterialIconFont.FlipToBack,
        MaterialIconFont.FlipToFront,
        MaterialIconFont.Flip,
        MaterialIconFont.FolderOpen,
        MaterialIconFont.FolderShared,
        MaterialIconFont.FolderSpecial,
        MaterialIconFont.Folder,
        MaterialIconFont.FontDownload,
        MaterialIconFont.FormatAlignCenter,
        MaterialIconFont.FormatAlignJustify,
        MaterialIconFont.FormatAlignLeft,
        MaterialIconFont.FormatAlignRight,
        MaterialIconFont.FormatBold,
        MaterialIconFont.FormatClear,
        MaterialIconFont.FormatColorFill,
        MaterialIconFont.FormatColorReset,
        MaterialIconFont.FormatColorText,
        MaterialIconFont.FormatIndentDecrease,
        MaterialIconFont.FormatIndentIncrease,
        MaterialIconFont.FormatItalic,
        MaterialIconFont.FormatLineSpacing,
        MaterialIconFont.FormatListBulleted,
        MaterialIconFont.FormatListNumbered,
        MaterialIconFont.FormatPaint,
        MaterialIconFont.FormatQuote,
        MaterialIconFont.FormatSize,
        MaterialIconFont.FormatStrikethrough,
        MaterialIconFont.FormatTextdirectionLToR,
        MaterialIconFont.FormatTextdirectionRToL,
        MaterialIconFont.FormatUnderlined,
        MaterialIconFont.Forum,
        MaterialIconFont.Forward10,
        MaterialIconFont.Forward30,
        MaterialIconFont.Forward5,
        MaterialIconFont.Forward,
        MaterialIconFont.Fullscreen,
        MaterialIconFont.FullscreenExit,
        MaterialIconFont.Functions,
        MaterialIconFont.Gamepad,
        MaterialIconFont.Games,
        MaterialIconFont.Gesture,
        MaterialIconFont.GetApp,
        MaterialIconFont.Gif,
        MaterialIconFont.GpsFixed,
        MaterialIconFont.GpsNotFixed,
        MaterialIconFont.GpsOff,
        MaterialIconFont.Grade,
        MaterialIconFont.Gradient,
        MaterialIconFont.Grain,
        MaterialIconFont.GraphicEq,
        MaterialIconFont.GridOff,
        MaterialIconFont.GridOn,
        MaterialIconFont.GroupAdd,
        MaterialIconFont.GroupWork,
        MaterialIconFont.Group,
        MaterialIconFont.Hd,
        MaterialIconFont.HdrOff,
        MaterialIconFont.HdrOn,
        MaterialIconFont.HdrStrong,
        MaterialIconFont.HdrWeak,
        MaterialIconFont.Headset,
        MaterialIconFont.HeadsetMic,
        MaterialIconFont.Healing,
        MaterialIconFont.Hearing,
        MaterialIconFont.HelpOutline,
        MaterialIconFont.Help,
        MaterialIconFont.HighlightOff,
        MaterialIconFont.HighQuality,
        MaterialIconFont.History,
        MaterialIconFont.Home,
        MaterialIconFont.Hotel,
        MaterialIconFont.HourglassEmpty,
        MaterialIconFont.HourglassFull,
        MaterialIconFont.Http,
        MaterialIconFont.Https,
        MaterialIconFont.ImageAspectRatio,
        MaterialIconFont.Image,
        MaterialIconFont.ImportExport,
        MaterialIconFont.Inbox,
        MaterialIconFont.IndeterminateCheckBox,
        MaterialIconFont.InfoOutline,
        MaterialIconFont.Info,
        MaterialIconFont.Input,
        MaterialIconFont.InsertChart,
        MaterialIconFont.InsertComment,
        MaterialIconFont.InsertDriveFile,
        MaterialIconFont.InsertEmoticon,
        MaterialIconFont.InsertInvitation,
        MaterialIconFont.InsertLink,
        MaterialIconFont.InsertPhoto,
        MaterialIconFont.InvertColors,
        MaterialIconFont.InvertColorsOff,
        MaterialIconFont.Iso,
        MaterialIconFont.KeyboardArrowDown,
        MaterialIconFont.KeyboardArrowLeft,
        MaterialIconFont.KeyboardArrowRight,
        MaterialIconFont.KeyboardArrowUp,
        MaterialIconFont.KeyboardBackspace,
        MaterialIconFont.KeyboardCapslock,
        MaterialIconFont.KeyboardHide,
        MaterialIconFont.KeyboardReturn,
        MaterialIconFont.KeyboardTab,
        MaterialIconFont.KeyboardVoice,
        MaterialIconFont.Keyboard,
        MaterialIconFont.LabelOutline,
        MaterialIconFont.Label,
        MaterialIconFont.Landscape,
        MaterialIconFont.Language,
        MaterialIconFont.LaptopChromebook,
        MaterialIconFont.Laptop,
        MaterialIconFont.LaptopMac,
        MaterialIconFont.LaptopWindows,
        MaterialIconFont.Launch,
        MaterialIconFont.Layers,
        MaterialIconFont.LayersClear,
        MaterialIconFont.LeakAdd,
        MaterialIconFont.LeakRemove,
        MaterialIconFont.Lens,
        MaterialIconFont.LibraryAdd,
        MaterialIconFont.LibraryBooks,
        MaterialIconFont.LibraryMusic,
        MaterialIconFont.Link,
        MaterialIconFont.List,
        MaterialIconFont.LiveHelp,
        MaterialIconFont.LiveTv,
        MaterialIconFont.LocalActivity,
        MaterialIconFont.LocalAirport,
        MaterialIconFont.LocalAtm,
        MaterialIconFont.LocalBar,
        MaterialIconFont.LocalCafe,
        MaterialIconFont.LocalCarWash,
        MaterialIconFont.LocalConvenienceStore,
        MaterialIconFont.LocalDining,
        MaterialIconFont.LocalDrink,
        MaterialIconFont.LocalFlorist,
        MaterialIconFont.LocalGasStation,
        MaterialIconFont.LocalGroceryStore,
        MaterialIconFont.LocalHospital,
        MaterialIconFont.LocalHotel,
        MaterialIconFont.LocalLaundryService,
        MaterialIconFont.LocalLibrary,
        MaterialIconFont.LocalMall,
        MaterialIconFont.LocalMovies,
        MaterialIconFont.LocalOffer,
        MaterialIconFont.LocalParking,
        MaterialIconFont.LocalPharmacy,
        MaterialIconFont.LocalPhone,
        MaterialIconFont.LocalPizza,
        MaterialIconFont.LocalPlay,
        MaterialIconFont.LocalPostOffice,
        MaterialIconFont.LocalPrintshop,
        MaterialIconFont.LocalSee,
        MaterialIconFont.LocalShipping,
        MaterialIconFont.LocalTaxi,
        MaterialIconFont.LocationCity,
        MaterialIconFont.LocationDisabled,
        MaterialIconFont.LocationOff,
        MaterialIconFont.LocationOn,
        MaterialIconFont.LocationSearching,
        MaterialIconFont.LockOpen,
        MaterialIconFont.LockOutline,
        MaterialIconFont.Lock,
        MaterialIconFont.Looks3,
        MaterialIconFont.Looks4,
        MaterialIconFont.Looks5,
        MaterialIconFont.Looks6,
        MaterialIconFont.LooksOne,
        MaterialIconFont.LooksTwo,
        MaterialIconFont.Looks,
        MaterialIconFont.Loop,
        MaterialIconFont.Loupe,
        MaterialIconFont.Loyalty,
        MaterialIconFont.Mail,
        MaterialIconFont.Map,
        MaterialIconFont.MarkunreadMailbox,
        MaterialIconFont.Markunread,
        MaterialIconFont.Memory,
        MaterialIconFont.Menu,
        MaterialIconFont.MergeType,
        MaterialIconFont.Message,
        MaterialIconFont.Mic,
        MaterialIconFont.MicNone,
        MaterialIconFont.MicOff,
        MaterialIconFont.Mms,
        MaterialIconFont.ModeComment,
        MaterialIconFont.ModeEdit,
        MaterialIconFont.MoneyOff,
        MaterialIconFont.MonochromePhotos,
        MaterialIconFont.MoodBad,
        MaterialIconFont.Mood,
        MaterialIconFont.MoreHoriz,
        MaterialIconFont.MoreVert,
        MaterialIconFont.More,
        MaterialIconFont.Mouse,
        MaterialIconFont.MovieCreation,
        MaterialIconFont.Movie,
        MaterialIconFont.MusicNote,
        MaterialIconFont.MyLocation,
        MaterialIconFont.NaturePeople,
        MaterialIconFont.Nature,
        MaterialIconFont.NavigateBefore,
        MaterialIconFont.NavigateNext,
        MaterialIconFont.Navigation,
        MaterialIconFont.NetworkCell,
        MaterialIconFont.NetworkLocked,
        MaterialIconFont.NetworkWifi,
        MaterialIconFont.NewReleases,
        MaterialIconFont.Nfc,
        MaterialIconFont.NoSim,
        MaterialIconFont.NotInterested,
        MaterialIconFont.NoteAdd,
        MaterialIconFont.NotificationsActive,
        MaterialIconFont.NotificationsNone,
        MaterialIconFont.NotificationsOff,
        MaterialIconFont.NotificationsPaused,
        MaterialIconFont.Notifications,
        MaterialIconFont.OfflinePin,
        MaterialIconFont.OndemandVideo,
        MaterialIconFont.OpenInBrowser,
        MaterialIconFont.OpenInNew,
        MaterialIconFont.OpenWith,
        MaterialIconFont.Pages,
        MaterialIconFont.Pageview,
        MaterialIconFont.Palette,
        MaterialIconFont.PanoramaFishEye,
        MaterialIconFont.PanoramaHorizontal,
        MaterialIconFont.PanoramaVertical,
        MaterialIconFont.PanoramaWideAngle,
        MaterialIconFont.Panorama,
        MaterialIconFont.PartyMode,
        MaterialIconFont.PauseCircleFilled,
        MaterialIconFont.PauseCircleOutline,
        MaterialIconFont.Pause,
        MaterialIconFont.Payment,
        MaterialIconFont.PeopleOutline,
        MaterialIconFont.People,
        MaterialIconFont.PermCameraMic,
        MaterialIconFont.PermContactCalendar,
        MaterialIconFont.PermDataSetting,
        MaterialIconFont.PermDeviceInformation,
        MaterialIconFont.PermIdentity,
        MaterialIconFont.PermMedia,
        MaterialIconFont.PermPhoneMsg,
        MaterialIconFont.PermScanWifi,
        MaterialIconFont.PersonAdd,
        MaterialIconFont.PersonalVideo,
        MaterialIconFont.PersonOutline,
        MaterialIconFont.PersonPin,
        MaterialIconFont.Person,
        MaterialIconFont.PhoneAndroid,
        MaterialIconFont.PhoneBluetoothSpeaker,
        MaterialIconFont.PhoneForwarded,
        MaterialIconFont.PhoneInTalk,
        MaterialIconFont.PhoneIphone,
        MaterialIconFont.Phonelink,
        MaterialIconFont.PhonelinkErase,
        MaterialIconFont.PhonelinkLock,
        MaterialIconFont.PhonelinkOff,
        MaterialIconFont.PhonelinkRing,
        MaterialIconFont.PhonelinkSetup,
        MaterialIconFont.PhoneLocked,
        MaterialIconFont.PhoneMissed,
        MaterialIconFont.PhonePaused,
        MaterialIconFont.Phone,
        MaterialIconFont.PhotoAlbum,
        MaterialIconFont.PhotoCamera,
        MaterialIconFont.PhotoLibrary,
        MaterialIconFont.PhotoSizeSelectActual,
        MaterialIconFont.PhotoSizeSelectLarge,
        MaterialIconFont.PhotoSizeSelectSmall,
        MaterialIconFont.Photo,
        MaterialIconFont.PictureAsPdf,
        MaterialIconFont.PictureInPicture,
        MaterialIconFont.PinDrop,
        MaterialIconFont.Place,
        MaterialIconFont.PlayArrow,
        MaterialIconFont.PlayCircleFilled,
        MaterialIconFont.PlayCircleOutline,
        MaterialIconFont.PlayForWork,
        MaterialIconFont.PlaylistAdd,
        MaterialIconFont.PlusOne,
        MaterialIconFont.Poll,
        MaterialIconFont.Polymer,
        MaterialIconFont.PortableWifiOff,
        MaterialIconFont.Portrait,
        MaterialIconFont.Power,
        MaterialIconFont.PowerInput,
        MaterialIconFont.PowerSettingsNew,
        MaterialIconFont.PresentToAll,
        MaterialIconFont.Print,
        MaterialIconFont.Public,
        MaterialIconFont.Publish,
        MaterialIconFont.QueryBuilder,
        MaterialIconFont.QuestionAnswer,
        MaterialIconFont.QueueMusic,
        MaterialIconFont.Queue,
        MaterialIconFont.RadioButtonChecked,
        MaterialIconFont.RadioButtonUnchecked,
        MaterialIconFont.Radio,
        MaterialIconFont.RateReview,
        MaterialIconFont.Receipt,
        MaterialIconFont.RecentActors,
        MaterialIconFont.Redeem,
        MaterialIconFont.Redo,
        MaterialIconFont.Refresh,
        MaterialIconFont.RemoveCircle,
        MaterialIconFont.RemoveCircleOutline,
        MaterialIconFont.RemoveRedEye,
        MaterialIconFont.Remove,
        MaterialIconFont.Reorder,
        MaterialIconFont.Repeat,
        MaterialIconFont.RepeatOne,
        MaterialIconFont.Replay10,
        MaterialIconFont.Replay30,
        MaterialIconFont.Replay5,
        MaterialIconFont.Replay,
        MaterialIconFont.ReplyAll,
        MaterialIconFont.Reply,
        MaterialIconFont.ReportProblem,
        MaterialIconFont.Report,
        MaterialIconFont.RestaurantMenu,
        MaterialIconFont.Restore,
        MaterialIconFont.RingVolume,
        MaterialIconFont.Room,
        MaterialIconFont.Rotate90DegreesCcw,
        MaterialIconFont.RotateLeft,
        MaterialIconFont.RotateRight,
        MaterialIconFont.Router,
        MaterialIconFont.Satellite,
        MaterialIconFont.Save,
        MaterialIconFont.Scanner,
        MaterialIconFont.Schedule,
        MaterialIconFont.School,
        MaterialIconFont.ScreenLockLandscape,
        MaterialIconFont.ScreenLockPortrait,
        MaterialIconFont.ScreenLockRotation,
        MaterialIconFont.ScreenRotation,
        MaterialIconFont.SdCard,
        MaterialIconFont.SdStorage,
        MaterialIconFont.Search,
        MaterialIconFont.Security,
        MaterialIconFont.SelectAll,
        MaterialIconFont.Send,
        MaterialIconFont.SettingsApplications,
        MaterialIconFont.SettingsBackupRestore,
        MaterialIconFont.SettingsBluetooth,
        MaterialIconFont.SettingsBrightness,
        MaterialIconFont.SettingsCell,
        MaterialIconFont.SettingsEthernet,
        MaterialIconFont.SettingsInputAntenna,
        MaterialIconFont.SettingsInputComponent,
        MaterialIconFont.SettingsInputComposite,
        MaterialIconFont.SettingsInputHdmi,
        MaterialIconFont.SettingsInputSvideo,
        MaterialIconFont.SettingsOverscan,
        MaterialIconFont.SettingsPhone,
        MaterialIconFont.SettingsPower,
        MaterialIconFont.SettingsRemote,
        MaterialIconFont.SettingsSystemDaydream,
        MaterialIconFont.SettingsVoice,
        MaterialIconFont.Settings,
        MaterialIconFont.Share,
        MaterialIconFont.Shop,
        MaterialIconFont.ShoppingBasket,
        MaterialIconFont.ShoppingCart,
        MaterialIconFont.ShopTwo,
        MaterialIconFont.Shuffle,
        MaterialIconFont.SignalCellular0Bar,
        MaterialIconFont.SignalCellular1Bar,
        MaterialIconFont.SignalCellular2Bar,
        MaterialIconFont.SignalCellular3Bar,
        MaterialIconFont.SignalCellular4Bar,
        MaterialIconFont.SignalCellularConnectedNoInternet0Bar,
        MaterialIconFont.SignalCellularConnectedNoInternet1Bar,
        MaterialIconFont.SignalCellularConnectedNoInternet2Bar,
        MaterialIconFont.SignalCellularConnectedNoInternet3Bar,
        MaterialIconFont.SignalCellularConnectedNoInternet4Bar,
        MaterialIconFont.SignalCellularNoSim,
        MaterialIconFont.SignalCellularNull,
        MaterialIconFont.SignalCellularOff,
        MaterialIconFont.SignalWifi0Bar,
        MaterialIconFont.SignalWifi1Bar,
        MaterialIconFont.SignalWifi1BarLock,
        MaterialIconFont.SignalWifi2Bar,
        MaterialIconFont.SignalWifi2BarLock,
        MaterialIconFont.SignalWifi3Bar,
        MaterialIconFont.SignalWifi3BarLock,
        MaterialIconFont.SignalWifi4Bar,
        MaterialIconFont.SignalWifi4BarLock,
        MaterialIconFont.SignalWifiOff,
        MaterialIconFont.SignalWifiStatusbar1Bar26,
        MaterialIconFont.SignalWifiStatusbar2Bar26,
        MaterialIconFont.SignalWifiStatusbar3Bar26,
        MaterialIconFont.SignalWifiStatusbar4Bar26,
        MaterialIconFont.SignalWifiStatusbarConnectedNoInternet126,
        MaterialIconFont.SignalWifiStatusbarConnectedNoInternet226,
        MaterialIconFont.SignalWifiStatusbarConnectedNoInternet26,
        MaterialIconFont.SignalWifiStatusbarConnectedNoInternet326,
        MaterialIconFont.SignalWifiStatusbarConnectedNoInternet426,
        MaterialIconFont.SignalWifiStatusbarNotConnected26,
        MaterialIconFont.SignalWifiStatusbarNull26,
        MaterialIconFont.SimCardAlert,
        MaterialIconFont.SimCard,
        MaterialIconFont.SkipNext,
        MaterialIconFont.SkipPrevious,
        MaterialIconFont.Slideshow,
        MaterialIconFont.Smartphone,
        MaterialIconFont.SmsFailed,
        MaterialIconFont.Sms,
        MaterialIconFont.Snooze,
        MaterialIconFont.SortByAlpha,
        MaterialIconFont.Sort,
        MaterialIconFont.SpaceBar,
        MaterialIconFont.Speaker,
        MaterialIconFont.SpeakerGroup,
        MaterialIconFont.SpeakerNotes,
        MaterialIconFont.SpeakerPhone,
        MaterialIconFont.Spellcheck,
        MaterialIconFont.StarBorder,
        MaterialIconFont.StarHalf,
        MaterialIconFont.Star,
        MaterialIconFont.Stars,
        MaterialIconFont.StayCurrentLandscape,
        MaterialIconFont.StayCurrentPortrait,
        MaterialIconFont.StayPrimaryLandscape,
        MaterialIconFont.StayPrimaryPortrait,
        MaterialIconFont.Stop,
        MaterialIconFont.Storage,
        MaterialIconFont.StoreMallDirectory,
        MaterialIconFont.Store,
        MaterialIconFont.Straighten,
        MaterialIconFont.StrikethroughS,
        MaterialIconFont.Style,
        MaterialIconFont.Subject,
        MaterialIconFont.Subtitles,
        MaterialIconFont.SupervisorAccount,
        MaterialIconFont.SurroundSound,
        MaterialIconFont.SwapCalls,
        MaterialIconFont.SwapHoriz,
        MaterialIconFont.SwapVert,
        MaterialIconFont.SwapVerticalCircle,
        MaterialIconFont.SwitchCamera,
        MaterialIconFont.SwitchVideo,
        MaterialIconFont.SyncDisabled,
        MaterialIconFont.SyncProblem,
        MaterialIconFont.Sync,
        MaterialIconFont.SystemUpdate,
        MaterialIconFont.SystemUpdateAlt,
        MaterialIconFont.Tab,
        MaterialIconFont.TabletAndroid,
        MaterialIconFont.TabletMac,
        MaterialIconFont.Tablet,
        MaterialIconFont.TabUnselected,
        MaterialIconFont.TactMail,
        MaterialIconFont.TagFaces,
        MaterialIconFont.TapAndPlay,
        MaterialIconFont.Terrain,
        MaterialIconFont.TextFormat,
        MaterialIconFont.Textsms,
        MaterialIconFont.Texture,
        MaterialIconFont.Theaters,
        MaterialIconFont.ThumbDown,
        MaterialIconFont.ThumbsUpDown,
        MaterialIconFont.ThumbUp,
        MaterialIconFont.Timelapse,
        MaterialIconFont.Timer10,
        MaterialIconFont.Timer3,
        MaterialIconFont.TimerOff,
        MaterialIconFont.Timer,
        MaterialIconFont.TimeToLeave,
        MaterialIconFont.Toc,
        MaterialIconFont.Today,
        MaterialIconFont.Toll,
        MaterialIconFont.Tonality,
        MaterialIconFont.Toys,
        MaterialIconFont.TrackChanges,
        MaterialIconFont.Traffic,
        MaterialIconFont.Transform,
        MaterialIconFont.Translate,
        MaterialIconFont.TrendingDown,
        MaterialIconFont.TrendingFlat,
        MaterialIconFont.TrendingUp,
        MaterialIconFont.Tune,
        MaterialIconFont.TurnedIn,
        MaterialIconFont.TurnedInNot,
        MaterialIconFont.Tv,
        MaterialIconFont.Undo,
        MaterialIconFont.UnfoldLess,
        MaterialIconFont.UnfoldMore,
        MaterialIconFont.Usb,
        MaterialIconFont.VerifiedUser,
        MaterialIconFont.VerticalAlignBottom,
        MaterialIconFont.VerticalAlignCenter,
        MaterialIconFont.VerticalAlignTop,
        MaterialIconFont.Vibration,
        MaterialIconFont.VideocamOff,
        MaterialIconFont.Videocam,
        MaterialIconFont.VideoLibrary,
        MaterialIconFont.ViewAgenda,
        MaterialIconFont.ViewArray,
        MaterialIconFont.ViewCarousel,
        MaterialIconFont.ViewColumn,
        MaterialIconFont.ViewComfy,
        MaterialIconFont.ViewCompact,
        MaterialIconFont.ViewDay,
        MaterialIconFont.ViewHeadline,
        MaterialIconFont.ViewList,
        MaterialIconFont.ViewModule,
        MaterialIconFont.ViewQuilt,
        MaterialIconFont.ViewStream,
        MaterialIconFont.ViewWeek,
        MaterialIconFont.Vignette,
        MaterialIconFont.VisibilityOff,
        MaterialIconFont.Visibility,
        MaterialIconFont.VoiceChat,
        MaterialIconFont.Voicemail,
        MaterialIconFont.VolumeDown,
        MaterialIconFont.VolumeMute,
        MaterialIconFont.VolumeOff,
        MaterialIconFont.VolumeUp,
        MaterialIconFont.VpnKey,
        MaterialIconFont.VpnLock,
        MaterialIconFont.Wallpaper,
        MaterialIconFont.Warning,
        MaterialIconFont.Watch,
        MaterialIconFont.WbAuto,
        MaterialIconFont.WbCloudy,
        MaterialIconFont.WbIncandescent,
        MaterialIconFont.WbIridescent,
        MaterialIconFont.WbSunny,
        MaterialIconFont.Wc,
        MaterialIconFont.Web,
        MaterialIconFont.Whatshot,
        MaterialIconFont.Widgets,
        MaterialIconFont.WifiLock,
        MaterialIconFont.WifiTethering,
        MaterialIconFont.Wifi,
        MaterialIconFont.Work,
        MaterialIconFont.WrapText,
        MaterialIconFont.YoutubeSearchedFor,
        MaterialIconFont.ZoomIn,
        MaterialIconFont.ZoomOut,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return icons.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.setup(icons[indexPath.row])
        return cell
    }
}

