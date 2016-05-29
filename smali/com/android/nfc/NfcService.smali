.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$InfoService;,
        Lcom/android/nfc/NfcService$BertTask;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$TagServiceDta;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$DtaHelperService;,
        Lcom/android/nfc/NfcService$asyncPlaySoundTask;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field private static final CAT_ACTIVATE_NOTIFY_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.activate_notify"

.field private static final CAT_HCI_CONNECTIVITY_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.hci_connectivity"

.field static final DBG:Z = true

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field private static final DTA_PATTERN:Ljava/lang/String; = "sys.dtapattern"

.field static final HCI_UI_STATE_AVAILABLE:I = 0x1

.field static final HCI_UI_STATE_LOCKED_NOTIFIABLE:I = 0x3

.field static final HCI_UI_STATE_LOCKED_NOT_NOTIFIABLE:I = 0x2

.field static final HCI_UI_STATE_UNKNOWN:I = 0x0

.field static final HCI_UI_STATE_UNLOCKED_NOT_NOTIFIABLE:I = 0x4

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MIFARE_CLASSIC_PRESENCE_CHECK_DELAY_MS:I = 0x1f4

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_EXTENTION_MSG:I = 0x14

.field static final MSG_HCI_EVT_CONNECTIVITY:I = 0x19

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_REQUEST_RESTART_NFC:I = 0xc

.field static final MSG_RESUME_POLLING:I = 0x1a

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UPDATE_COMMIT_DEFAULT_ROUTE:I = 0xb

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFCC_UI_STATE_LOCKED:I = 0x2

.field static final NFCC_UI_STATE_OFF:I = 0x0

.field static final NFCC_UI_STATE_UNLOCKED:I = 0x1

.field static final NFC_DISABLED_BY_AIRPLANEMODE:I = 0x2

.field static final NFC_DISABLED_BY_SYSTEM:I = 0x0

.field static final NFC_DISABLED_BY_USER:I = 0x1

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x3

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_ACTIVE_SECURE_ELEMENT:Ljava/lang/String; = "active_secure_element"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field static final PREF_DEFAULT_ROUTE:Ljava/lang/String; = "default_route"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field private static final SLOT_ID_KEY_STRING:Ljava/lang/String; = "slot_id"

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private final enableReceiver:Landroid/content/BroadcastReceiver;

.field private isAidFilterEnabled:Z

.field mActiveSecureElement:Ljava/lang/String;

.field private mBertTask:Lcom/android/nfc/NfcService$BertTask;

.field private mBertWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mDiscoveryEnabled:Z

.field mDtaHelperService:Lcom/android/nfc/NfcService$DtaHelperService;

.field mEndSound:I

.field mErrorSound:I

.field private mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mHciUiState:I

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsNdefPushEnabled:Z

.field mIsNfcDisabledReason:I

.field mIsUpdatingDiscoveryDuringShuttingDown:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLockScreenPolling:Z

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcOnWhileAirplaneModeOn:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field mNfcTagServiceDta:Lcom/android/nfc/NfcService$TagServiceDta;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNfccUiState:I

.field private final mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mOldScreenState:I

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mProactiveReceiver:Landroid/content/BroadcastReceiver;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private mSnepClientHandleCounter:I

.field private final mSnepClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/snep/SnepClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSnepServerHandleCounter:I

.field private final mSnepServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/snep/SnepServer;",
            ">;"
        }
    .end annotation
.end field

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field nfcc_info:[B


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;-><init>(Landroid/content/Context;)V

    .line 460
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/NfcService;->init(Landroid/app/Application;Lcom/android/nfc/DeviceHost;)V

    .line 461
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/android/nfc/DeviceHost;)V
    .locals 0
    .param p1, "nfcApplication"    # Landroid/app/Application;
    .param p2, "host"    # Lcom/android/nfc/DeviceHost;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;-><init>(Landroid/content/Context;)V

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->init(Landroid/app/Application;Lcom/android/nfc/DeviceHost;)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/android/nfc/DeviceHost;Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;)V
    .locals 2
    .param p1, "nfcApplication"    # Landroid/app/Application;
    .param p2, "host"    # Lcom/android/nfc/DeviceHost;
    .param p3, "extention"    # Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;-><init>(Landroid/content/Context;)V

    .line 466
    iput-object p3, p0, Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    .line 467
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    # invokes: Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->setHandler(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->access$000(Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;Landroid/os/Handler;)V

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->init(Landroid/app/Application;Lcom/android/nfc/DeviceHost;)V

    .line 469
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 250
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 252
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 265
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mLockScreenPolling:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsUpdatingDiscoveryDuringShuttingDown:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcOnWhileAirplaneModeOn:Z

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;

    .line 323
    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    .line 324
    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    .line 331
    iput-object v2, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    .line 334
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    .line 607
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->enableReceiver:Landroid/content/BroadcastReceiver;

    .line 3301
    iput-object v2, p0, Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    .line 3302
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3326
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mProactiveReceiver:Landroid/content/BroadcastReceiver;

    .line 3343
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3398
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 3416
    new-instance v0, Lcom/android/nfc/NfcService$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 454
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    invoke-direct {v0, p1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 455
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 456
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/nfc/NfcService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$2300()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    return v0
.end method

.method static synthetic access$908(Lcom/android/nfc/NfcService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    return v0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 8
    .param p1, "screenState"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 2680
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->isUiStateSupported()Z

    move-result v2

    .line 2682
    .local v2, "uiState":Z
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 2685
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v3, 0x3

    if-ge p1, v3, :cond_0

    if-eqz v2, :cond_d

    .line 2687
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v3, :cond_c

    .line 2688
    const/4 v1, 0x0

    .line 2689
    .local v1, "techMask":I
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 2690
    or-int/lit8 v1, v1, 0x1

    .line 2691
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 2692
    or-int/lit8 v1, v1, 0x2

    .line 2693
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 2694
    or-int/lit8 v1, v1, 0x4

    .line 2695
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 2696
    or-int/lit8 v1, v1, 0x8

    .line 2697
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    .line 2698
    or-int/lit8 v1, v1, 0x20

    .line 2700
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2701
    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2719
    .end local v1    # "techMask":I
    :cond_6
    :goto_0
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_9

    if-nez v2, :cond_7

    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v3, v5, :cond_9

    .line 2721
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v4, "DH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->hasAnyServices()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2723
    :cond_8
    const-string v3, "NfcService"

    const-string v4, "NFC-HCE ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2728
    :cond_9
    if-nez v2, :cond_a

    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v3, v5, :cond_b

    .line 2729
    :cond_a
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v4, "DH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2730
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC-EE ON with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableOffHostRouting(Ljava/lang/String;)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2735
    :cond_b
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v3

    return-object v3

    .line 2703
    :cond_c
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2704
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2706
    :cond_d
    if-eq p1, v5, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v3, :cond_f

    .line 2708
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2710
    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2711
    :cond_f
    if-eq p1, v5, :cond_10

    if-eqz v2, :cond_6

    :cond_10
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v3}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2714
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v3}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2715
    invoke-virtual {v0, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2716
    invoke-virtual {v0, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 2474
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2485
    :cond_1
    return-object v0

    .line 2475
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2476
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 2477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2478
    add-int/lit8 v2, v2, 0x1

    .line 2480
    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 2481
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2482
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 2481
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private init(Landroid/app/Application;Lcom/android/nfc/DeviceHost;)V
    .locals 20
    .param p1, "nfcApplication"    # Landroid/app/Application;
    .param p2, "host"    # Lcom/android/nfc/DeviceHost;

    .prologue
    .line 476
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 478
    new-instance v2, Lcom/android/nfc/NfcService$TagService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 479
    new-instance v2, Lcom/android/nfc/NfcService$TagServiceDta;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$TagServiceDta;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcTagServiceDta:Lcom/android/nfc/NfcService$TagServiceDta;

    .line 480
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 481
    new-instance v2, Lcom/android/nfc/NfcService$DtaHelperService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$DtaHelperService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mDtaHelperService:Lcom/android/nfc/NfcService$DtaHelperService;

    .line 483
    const-string v2, "NfcService"

    const-string v3, "Starting NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 487
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 489
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->dta_get_pattern_number()I

    move-result v15

    .line 494
    .local v15, "last_pattern":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC service start: setting pattern number to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "sys.dtapattern"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-ne v2, v3, :cond_4

    .line 500
    new-instance v2, Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/handover/HandoverDataParser;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 505
    :goto_0
    const/4 v13, 0x0

    .line 507
    .local v13, "isNfcProvisioningEnabled":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 512
    :goto_1
    if-eqz v13, :cond_6

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 519
    :goto_3
    new-instance v2, Lcom/android/nfc/NfcDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v2, v3, v4, v6}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 520
    new-instance v2, Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v7

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "NfcServicePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 526
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mState:I

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 528
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 530
    const-string v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mRoutingWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mScreenOffCmdWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mBertWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mBertWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 544
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    .line 545
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 546
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 550
    new-instance v5, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 551
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 557
    new-instance v17, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 558
    .local v17, "ownerFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 561
    new-instance v17, Landroid/content/IntentFilter;

    .end local v17    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 562
    .restart local v17    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v2, "package"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 568
    .local v9, "policyFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 572
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 573
    .local v16, "mProactiveFilter":Landroid/content/IntentFilter;
    const-string v2, "org.codeaurora.intent.action.stk.activate_notify"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mProactiveReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 577
    .local v12, "enableAfterUserConfirm":Landroid/content/IntentFilter;
    const-string v2, "com.android.nfc.action.ALLOW_NFC_ENABLE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v2, "com.android.nfc.action.DENY_NFC_ENABLE"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->enableReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.NFC_ENABLE"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v12, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 585
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "NfcService"

    const-string v3, "Init NfceeIds mapping to SecureElements from Conf File"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->initNfceeIdSeMap()V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "default_route"

    const-string v4, "TBD"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 589
    .local v19, "seNameForDefaultRoute":Ljava/lang/String;
    const-string v2, "TBD"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(Ljava/lang/String;)Z

    .line 593
    :cond_1
    const-string v2, "android.hardware.nfc.hce"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 594
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_2

    .line 595
    new-instance v2, Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 597
    :cond_2
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 599
    const-string v2, "persist.nfc.smartcard.isis"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 600
    .local v14, "isisConfig":Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v2, "verizon"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    .line 604
    :cond_3
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 605
    return-void

    .line 502
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "policyFilter":Landroid/content/IntentFilter;
    .end local v12    # "enableAfterUserConfirm":Landroid/content/IntentFilter;
    .end local v13    # "isNfcProvisioningEnabled":Z
    .end local v14    # "isisConfig":Ljava/lang/String;
    .end local v16    # "mProactiveFilter":Landroid/content/IntentFilter;
    .end local v17    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "seNameForDefaultRoute":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v2}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    goto/16 :goto_0

    .line 513
    .restart local v13    # "isNfcProvisioningEnabled":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 516
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_3

    .line 530
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 509
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private isTagPresent()Z
    .locals 3

    .prologue
    .line 2739
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2740
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 2741
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    .line 2744
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 3440
    packed-switch p0, :pswitch_data_0

    .line 3450
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 3442
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 3444
    :pswitch_1
    const-string v0, "turning on"

    goto :goto_0

    .line 3446
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 3448
    :pswitch_3
    const-string v0, "turning off"

    goto :goto_0

    .line 3440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public NfccInfo()[B
    .locals 4

    .prologue
    .line 3527
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COPIED NFCC INFO length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3530
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COPIED NFCC INFO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3533
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    return-object v1
.end method

.method PrbsOff()V
    .locals 5

    .prologue
    .line 3510
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3511
    monitor-enter p0

    .line 3512
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBertTask:Lcom/android/nfc/NfcService$BertTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$BertTask;->cancel(Z)Z

    .line 3513
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->PrbsOff()Z

    .line 3514
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBertWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3515
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBertWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3516
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "airplane_override"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3517
    .local v0, "airplaneOverride":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "nfc_on"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 3519
    :cond_1
    const-string v1, "NfcService"

    const-string v2, "Turn NFC back on!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3522
    :cond_2
    monitor-exit p0

    .line 3523
    return-void

    .line 3522
    .end local v0    # "airplaneOverride":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method PrbsOn(II)V
    .locals 5
    .param p1, "tech"    # I
    .param p2, "rate"    # I

    .prologue
    .line 3499
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3500
    monitor-enter p0

    .line 3501
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBertWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3502
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3503
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3504
    .local v0, "techRate":[Ljava/lang/Integer;
    new-instance v1, Lcom/android/nfc/NfcService$BertTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$BertTask;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mBertTask:Lcom/android/nfc/NfcService$BertTask;

    .line 3505
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBertTask:Lcom/android/nfc/NfcService$BertTask;

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$BertTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3506
    monitor-exit p0

    .line 3507
    return-void

    .line 3506
    .end local v0    # "techRate":[Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method applyRouting(Z)V
    .locals 14
    .param p1, "force"    # Z

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2492
    monitor-enter p0

    .line 2493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2494
    monitor-exit p0

    .line 2667
    :goto_0
    return-void

    .line 2497
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v9}, Lcom/android/nfc/DeviceHost;->isExchangingApduWithEse()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2498
    monitor-exit p0

    goto :goto_0

    .line 2665
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2501
    :cond_1
    :try_start_1
    new-instance v6, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v9, "applyRouting"

    const/16 v10, 0x2710

    invoke-direct {v6, p0, v9, v10}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2502
    .local v6, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v9, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v9, :cond_3

    .line 2503
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v7, v8

    :cond_2
    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2505
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v7, :cond_3

    .line 2508
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v7}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2513
    :cond_3
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v7, v13, :cond_4

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2514
    const-string v7, "NfcService"

    const-string v8, "Not updating discovery parameters, tag connected."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2517
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2521
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2523
    const-string v7, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen State change: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->isUiStateSupported()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2529
    const/4 v0, 0x0

    .line 2530
    .local v0, "isUiccSecureElementPresent":Z
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getSecureElementList()Ljava/lang/String;

    move-result-object v4

    .line 2531
    .local v4, "seListWithComma":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 2532
    const/4 v0, 0x1

    .line 2535
    :cond_5
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iget v9, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-ne v7, v9, :cond_13

    .line 2538
    if-nez p1, :cond_6

    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mLockScreenPolling:Z

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v9}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v9

    if-eq v7, v9, :cond_8

    .line 2541
    :cond_6
    iget v7, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-gt v7, v8, :cond_7

    .line 2542
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2543
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2544
    const-string v7, "NfcService"

    const-string v9, "force screen on"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 2547
    :cond_7
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v9}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v9

    invoke-interface {v7, v9}, Lcom/android/nfc/DeviceHost;->updateLockScreenPollingMode(Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mLockScreenPolling:Z

    .line 2551
    :cond_8
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v7}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v3

    .line 2552
    .local v3, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_9

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3, v7}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 2555
    :cond_9
    iget v7, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-gt v7, v8, :cond_a

    .line 2556
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2557
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2558
    const-string v7, "NfcService"

    const-string v9, "force screen on"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 2562
    :cond_a
    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2563
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 2564
    .local v5, "shouldRestart":Z
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7, v3, v5}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 2568
    .end local v5    # "shouldRestart":Z
    :goto_1
    iput-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 2585
    .end local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_b
    :goto_2
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v7, v13, :cond_14

    .line 2586
    const/4 v1, 0x1

    .line 2587
    .local v1, "newHciUiState":I
    const/4 v2, 0x1

    .line 2588
    .local v2, "newNfccUiState":I
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    if-eqz v7, :cond_c

    .line 2589
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/16 v9, -0xf

    invoke-interface {v7, v9}, Lcom/android/nfc/DeviceHost;->disableClfAidFilterCondition(B)Z

    .line 2602
    :cond_c
    :goto_3
    iget v7, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    if-ne v7, v1, :cond_d

    iget v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-eq v7, v2, :cond_f

    .line 2603
    :cond_d
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v7, :cond_17

    .line 2604
    const-string v7, "NfcService"

    const-string v9, "Provision Mode"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iput v1, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2610
    if-eqz v2, :cond_16

    .line 2611
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2632
    :cond_e
    :goto_4
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 2635
    :cond_f
    iget v7, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-ne v7, v8, :cond_10

    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-le v7, v8, :cond_10

    if-nez v0, :cond_10

    .line 2638
    const-string v7, "NfcService"

    const-string v8, "If SCREEN STATE switched from OFF to ON and no EE, enable discovery"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v7}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2640
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 2644
    :cond_10
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iput v7, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2663
    .end local v0    # "isUiccSecureElementPresent":Z
    .end local v1    # "newHciUiState":I
    .end local v2    # "newNfccUiState":I
    .end local v4    # "seListWithComma":Ljava/lang/String;
    :goto_5
    :try_start_3
    invoke-virtual {v6}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2665
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2566
    .restart local v0    # "isUiccSecureElementPresent":Z
    .restart local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    .restart local v4    # "seListWithComma":Ljava/lang/String;
    :cond_11
    :try_start_4
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2663
    .end local v0    # "isUiccSecureElementPresent":Z
    .end local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v4    # "seListWithComma":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2570
    .restart local v0    # "isUiccSecureElementPresent":Z
    .restart local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    .restart local v4    # "seListWithComma":Ljava/lang/String;
    :cond_12
    :try_start_6
    const-string v7, "NfcService"

    const-string v9, "Discovery configuration equal, not updating."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2574
    .end local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_13
    iget v7, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-le v7, v8, :cond_b

    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v7, v8, :cond_b

    if-nez v0, :cond_b

    .line 2577
    const-string v7, "NfcService"

    const-string v9, "IF SCREEN STATE OFF and routing to NFCEE disabled, deactivate to IDLE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    goto/16 :goto_2

    .line 2590
    :cond_14
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v7, v12, :cond_15

    .line 2591
    const/4 v1, 0x2

    .line 2592
    .restart local v1    # "newHciUiState":I
    const/4 v2, 0x2

    .line 2593
    .restart local v2    # "newNfccUiState":I
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    if-eqz v7, :cond_c

    .line 2594
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/16 v9, -0xf

    invoke-interface {v7, v9}, Lcom/android/nfc/DeviceHost;->enableClfAidFilterCondition(B)Z

    goto/16 :goto_3

    .line 2596
    .end local v1    # "newHciUiState":I
    .end local v2    # "newNfccUiState":I
    :cond_15
    const/4 v1, 0x2

    .line 2597
    .restart local v1    # "newHciUiState":I
    const/4 v2, 0x0

    .line 2598
    .restart local v2    # "newNfccUiState":I
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->isAidFilterEnabled:Z

    if-eqz v7, :cond_c

    .line 2599
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/16 v9, -0xf

    invoke-interface {v7, v9}, Lcom/android/nfc/DeviceHost;->enableClfAidFilterCondition(B)Z

    goto/16 :goto_3

    .line 2613
    :cond_16
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    goto/16 :goto_4

    .line 2616
    :cond_17
    const-string v7, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update UI State, mLockScreenPolling: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/nfc/NfcService;->mLockScreenPolling:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    iput v1, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2618
    iput v2, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2619
    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mLockScreenPolling:Z

    if-nez v7, :cond_19

    .line 2620
    iget v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-eq v7, v12, :cond_18

    iget v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-nez v7, :cond_e

    .line 2623
    :cond_18
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->deactivateRfInterface()V

    goto/16 :goto_4

    .line 2626
    :cond_19
    iget v7, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-nez v7, :cond_e

    .line 2628
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->deactivateRfInterface()V

    goto/16 :goto_4

    .line 2648
    .end local v0    # "isUiccSecureElementPresent":Z
    .end local v1    # "newHciUiState":I
    .end local v2    # "newNfccUiState":I
    .end local v4    # "seListWithComma":Ljava/lang/String;
    :cond_1a
    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v7}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v3

    .line 2649
    .restart local v3    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_1b

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3, v7}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2650
    :cond_1b
    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2651
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 2652
    .restart local v5    # "shouldRestart":Z
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7, v3, v5}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    .line 2656
    .end local v5    # "shouldRestart":Z
    :goto_6
    iput-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    goto/16 :goto_5

    .line 2654
    :cond_1c
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z

    goto :goto_6

    .line 2658
    :cond_1d
    const-string v7, "NfcService"

    const-string v8, "Discovery configuration equal, not updating."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5
.end method

.method public commitRouting()V
    .locals 2

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 2845
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3477
    :goto_0
    return-void

    .line 3463
    :cond_0
    monitor-enter p0

    .line 3464
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3470
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3471
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 3472
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3474
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3475
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;
    .param p3, "isGlobalEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 966
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 967
    .local v3, "um":Landroid/os/UserManager;
    const-string v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 968
    .local v2, "mIpm":Landroid/content/pm/IPackageManager;
    const-string v5, "no_outgoing_beam"

    invoke-virtual {v3, v5, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p3, :cond_0

    move v1, v4

    .line 972
    .local v1, "isActiveForUser":Z
    :goto_0
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enforcing a policy change on user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isActiveForUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v2, v5, v4, v6, v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_2
    return-void

    .line 968
    .end local v1    # "isActiveForUser":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 976
    .restart local v1    # "isActiveForUser":Z
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to change Beam status for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 2782
    monitor-enter p0

    .line 2783
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2784
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2785
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2788
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDtaHelperService()Lcom/android/nfc/NfcService$DtaHelperService;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDtaHelperService:Lcom/android/nfc/NfcService$DtaHelperService;

    return-object v0
.end method

.method public getNfceeIdOfSecureElement(Ljava/lang/String;)I
    .locals 1
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getNfceeId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    .prologue
    .line 945
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .prologue
    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 628
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 629
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 630
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 632
    :cond_0
    monitor-exit p0

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3432
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isNfcEnabled()Z
    .locals 2

    .prologue
    .line 2432
    monitor-enter p0

    .line 2433
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2434
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .prologue
    .line 2426
    monitor-enter p0

    .line 2427
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2428
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 11

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2779
    :cond_0
    return-void

    .line 2754
    :cond_1
    monitor-enter p0

    .line 2755
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 2758
    .local v5, "objectValues":[Ljava/lang/Object;
    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 2759
    .local v6, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2760
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2761
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2762
    .local v4, "o":Ljava/lang/Object;
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_3

    move-object v7, v4

    .line 2765
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2766
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 2761
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2760
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "objectValues":[Ljava/lang/Object;
    .end local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2767
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "objectValues":[Ljava/lang/Object;
    .restart local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_3
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_2

    move-object v1, v4

    .line 2769
    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 2770
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 2772
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1
.end method

.method public noRequestRestartNfc()V
    .locals 2

    .prologue
    .line 442
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 443
    return-void
.end method

.method public onCardEmulationAidSelected([B)V
    .locals 2
    .param p1, "dataBuf"    # [B

    .prologue
    .line 363
    const-string v0, "NfcService"

    const-string v1, "onCardEmulationAidSelected dummy implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "NfcService"

    const-string v1, "onCardEmulationDeselected dummy implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public onCardEmulationHciEvtConnectivity(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 373
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 374
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    return-void
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 385
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData([B)V

    .line 392
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 399
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 422
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 423
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 407
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 414
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 415
    return-void
.end method

.method public onNfccInit([B)V
    .locals 1
    .param p1, "nfccinfo"    # [B

    .prologue
    .line 437
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    .line 438
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 347
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .prologue
    .line 427
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 428
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .prologue
    .line 432
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method public onUpdateHostCallBack()V
    .locals 2

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2672
    const-string v0, "NfcService"

    const-string v1, "release mScreenOffCmdWakeLock in onUpdateHostCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2675
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 4
    .param p1, "sound"    # I

    .prologue
    .line 935
    monitor-enter p0

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 937
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    monitor-exit p0

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$asyncPlaySoundTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$asyncPlaySoundTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$asyncPlaySoundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 941
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 645
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 652
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 655
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_0

    .line 656
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void

    .line 650
    :cond_1
    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 652
    :cond_2
    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 2792
    monitor-enter p0

    .line 2793
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    monitor-exit p0

    .line 2795
    return-void

    .line 2794
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .prologue
    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 641
    :cond_0
    monitor-exit p0

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;I)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 2832
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2833
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2834
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2835
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2836
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2837
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 904
    monitor-enter p0

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 906
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 907
    monitor-exit p0

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2864
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2865
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2866
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2867
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2868
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 2828
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2829
    return-void
.end method

.method sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    # invokes: Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->access$2000(Lcom/android/nfc/NfcService$NfcServiceHandler;Landroid/content/Intent;)V

    .line 3300
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 954
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 958
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 959
    .local v1, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 960
    .local v2, "uh":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v2, p1}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    goto :goto_0

    .line 962
    .end local v2    # "uh":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method public setDefaultRoute(Ljava/lang/String;)V
    .locals 2
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "default_route"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2853
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2854
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultRoute(Ljava/lang/String;)V

    .line 2856
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2857
    return-void
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 2798
    monitor-enter p0

    .line 2799
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    monitor-exit p0

    .line 2801
    return-void

    .line 2800
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 2840
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2841
    return-void
.end method

.method updatePackageCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 662
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 663
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 664
    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 665
    monitor-exit p0

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
