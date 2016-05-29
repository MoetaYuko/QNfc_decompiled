.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$FileInfoXMLThread;,
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;,
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_CONNECTION_FAILED:Ljava/lang/String; = "ACTION_FAST_CONNECTION_FAILED"

.field public static final ACTION_FAST_CONNECTION_SUCCESS:Ljava/lang/String; = "ACTION_FAST_CONNECTION_SUCCESS"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_FINISH:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

.field public static final ACTION_HANDOVER_TRANSFER_FINISH_DAILOG:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH_DAILOG"

.field public static final ACTION_HANDOVER_TRANSFER_PROGRESS:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field static final BT_INIT_DELAY:I = 0x5dc

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field public static final CHARSETNAME:Ljava/lang/String; = "UTF-8"

.field static final CONFIG_FILENAME_STRING:Ljava/lang/String; = "filename"

.field static final CONFIG_FILEPATH_STRING:Ljava/lang/String; = "filepath"

.field static final CONFIG_SEVERPORT_STRING:Ljava/lang/String; = "serverport"

.field static final CON_HANDOVER_REQUEST:[B

.field public static final DBG:Z = true

.field static final DEV_CAPABILITY_BT:I = 0x1

.field static final DEV_CAPABILITY_P2P:I = 0x4

.field static final DEV_CAPABILITY_P2P_BT:I = 0x5

.field static final DEV_CAPABILITY_P2P_SOFTAP:I = 0x6

.field static final DEV_CAPABILITY_P2P_SOFTAP_BT:I = 0x7

.field static final DEV_CAPABILITY_SOFTAP:I = 0x2

.field static final DEV_CAPABILITY_SOFTAP_BT:I = 0x3

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "extra_progress"

.field public static final FAST_CONNECT_BT:I = 0x1

.field public static final FAST_CONNECT_FAILURE:I = -0x1

.field public static final FAST_CONNECT_P2P:I = 0x3

.field public static final FAST_CONNECT_SUCCESS:I = 0x0

.field public static final FAST_CONNECT_WIFI:I = 0x2

.field static final HTTP_SOCKET_PORT:I = 0x231c

.field static final MAX_BT_RETRIES:I = 0x3

.field static final MSG_HANDOVER_POWER_CHECK:I = 0x0

.field public static final NOT_FAST_CONNECT:I = -0x1

.field static final POWER_CHECK_MS:I = 0x7530

.field private static final RTD_COLLISION_RESOLUTION:[B

.field static final SERVER_RETRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field static final TNF_BEAM_CONFIG_RECORD:S = 0x1s

.field static final TYPE_BEAM_CONFIG_RECORD:[B

.field private static final TYPE_BLE_OOB:[B

.field public static final TYPE_BT_OOB:[B

.field static final TYPE_HWBEAM_CONNECTTING:[B

.field private static final TYPE_NOKIA:[B

.field static final UNDER_LINE:Ljava/lang/String; = "_"

.field public static final WLAN_SHARE_WIFI:I = 0x4

.field static final defaultFileInfoDir:Ljava/lang/String; = "fileInfo"

.field static final defaultFileName:Ljava/lang/String; = "fileInfo"

.field static final defaultPostfix:Ljava/lang/String; = ".xml"

.field static final defaultTempFileDir:Ljava/lang/String; = ".temp"


# instance fields
.field isHwBeam:Z

.field private mBTHandover:Lcom/android/nfc/handover/BTHandover;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;

.field final mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

.field private mHandoverTransferId:I

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

.field private mPendingTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/beam/BeamTransferRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mServerPort:I

.field final mTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/nfc/beam/BeamTransferManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

.field private selectHandover:Lcom/android/nfc/handover/Handover;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 92
    const-string v0, "application/vnd.bluetooth.ep.oob"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 95
    const-string v0, "application/vnd.bluetooth.le.oob"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 98
    const-string v0, "nokia.com:bt"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 100
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    .line 132
    const-string v0, "application/hwbeam/connectting"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_HWBEAM_CONNECTTING:[B

    .line 155
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->CON_HANDOVER_REQUEST:[B

    .line 171
    const-string v0, "application/beam.conference.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BEAM_CONFIG_RECORD:[B

    return-void

    .line 100
    :array_0
    .array-data 1
        0x63t
        0x72t
    .end array-data

    .line 155
    nop

    :array_1
    .array-data 1
        0x66t
        0x63t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeam:Z

    .line 181
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverTransferId:I

    .line 325
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    .line 326
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    .line 327
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    .line 329
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeam:Z

    .line 181
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverTransferId:I

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mPendingTransfers:Ljava/util/HashMap;

    .line 750
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    .line 751
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 752
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeam:Z

    .line 753
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;-><init>(Lcom/android/nfc/handover/HandoverDataParser;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    .line 754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    .line 755
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/P2PHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 757
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    .line 759
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/BTHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    .line 761
    const-string v0, "NfcHandover"

    const-string v1, "HandoverDataParser is runing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/HandoverDataParser;)Lcom/android/nfc/handover/Handover;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HandoverDataParser;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/HandoverDataParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/HandoverDataParser;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/HandoverDataParser;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 737
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 740
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 742
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-object v1
.end method

.method private attemptBTRecovery()V
    .locals 4

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "retry":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 377
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    return-void

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private confirmFastConHandover(I)Lcom/android/nfc/handover/Handover;
    .locals 2
    .param p1, "remoteMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1429
    packed-switch p1, :pswitch_data_0

    .line 1468
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1471
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0

    .line 1431
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BTHandover;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1433
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mBTHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1435
    :cond_0
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1436
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support mBTHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1440
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->isFastConnectHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1442
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1444
    :cond_1
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1445
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support  mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1450
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->isFastConnectHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1451
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1452
    const-string v0, "NfcHandover"

    const-string v1, "wlan share selectHandover is mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1454
    :cond_2
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1455
    const-string v0, "NfcHandover"

    const-string v1, "wlan share not support  mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1459
    :pswitch_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1461
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mP2PHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1463
    :cond_3
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1464
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support  mP2PHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private confirmHandover(II)Lcom/android/nfc/handover/Handover;
    .locals 4
    .param p1, "remoteAbility"    # I
    .param p2, "localAbility"    # I

    .prologue
    .line 1398
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmHandover() : remoteAbility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmHandover() : localAbility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    and-int v0, p1, p2

    .line 1402
    .local v0, "mode":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1404
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is p2p"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 1415
    :goto_0
    return-object v1

    .line 1406
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1408
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is softap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    goto :goto_0

    .line 1410
    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 1412
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is bt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    goto :goto_0

    .line 1415
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .locals 5

    .prologue
    .line 333
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 334
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 335
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private createConfigInfoRecord([Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1021
    const-string v4, "NfcHandover"

    const-string v5, "createConfigInfoRecord() in"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getServerPort()I

    move-result v3

    .line 1023
    .local v3, "serverPort":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getLocalDeviceCapability()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US_ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1025
    .local v1, "id":[B
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createSendFileInfoXML()Ljava/io/File;

    move-result-object v0

    .line 1026
    .local v0, "configFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1027
    .local v2, "recordSrting":Ljava/lang/StringBuffer;
    array-length v4, p1

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1028
    :cond_0
    const/4 v4, 0x0

    .line 1042
    :goto_0
    return-object v4

    .line 1031
    :cond_1
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createConfigInfoRecord() serverPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createConfigInfoRecord(): path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"filename\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"filepath\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"serverport\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/nfc/handover/HandoverDataParser;->initFileInfoXML(Ljava/lang/String;[Landroid/net/Uri;)V

    .line 1042
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US_ASCII"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto/16 :goto_0
.end method

.method private createSendFileInfoXML()Ljava/io/File;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 1516
    const/4 v7, 0x0

    .line 1517
    .local v7, "filepath":Ljava/lang/String;
    const-string v2, "fileInfo"

    .line 1518
    .local v2, "defaultName":Ljava/lang/String;
    const-string v9, ".xml"

    .line 1519
    .local v9, "postfix":Ljava/lang/String;
    const-string v5, "fileInfo"

    .line 1520
    .local v5, "fileInfoDir":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 1521
    .local v1, "appFileDir":Ljava/io/File;
    if-nez v1, :cond_1

    move-object v0, v10

    .line 1554
    :cond_0
    :goto_0
    return-object v0

    .line 1524
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1526
    .local v6, "fileInfoDirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1527
    .local v0, "XMLfile":Ljava/io/File;
    const/4 v3, 0x0

    .line 1528
    .local v3, "dirFile":Ljava/io/File;
    const/4 v8, 0x1

    .line 1530
    .local v8, "i":I
    new-instance v3, Ljava/io/File;

    .end local v3    # "dirFile":Ljava/io/File;
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1531
    .restart local v3    # "dirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-nez v11, :cond_2

    move-object v0, v10

    .line 1532
    goto :goto_0

    .line 1535
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1536
    new-instance v0, Ljava/io/File;

    .end local v0    # "XMLfile":Ljava/io/File;
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1537
    .restart local v0    # "XMLfile":Ljava/io/File;
    const-string v11, "NfcHandover"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createSendFileInfoXML() filepath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1539
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1540
    const-string v11, "NfcHandover"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createSendFileInfoXML() new filepath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v0, Ljava/io/File;

    .end local v0    # "XMLfile":Ljava/io/File;
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1542
    .restart local v0    # "XMLfile":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1546
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1547
    const-string v11, "NfcHandover"

    const-string v12, "create file faild"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1549
    :catch_0
    move-exception v4

    .line 1551
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v10

    .line 1552
    goto/16 :goto_0
.end method

.method private generateLocalFilesPath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 889
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".temp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "appPath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 891
    .local v7, "filePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 892
    .local v8, "inputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 893
    .local v10, "outStream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 895
    .local v12, "targetFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 897
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/handover/HandoverDataParser;->renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 898
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v12    # "targetFile":Ljava/io/File;
    .local v13, "targetFile":Ljava/io/File;
    move-object v12, v13

    .line 910
    .end local v13    # "targetFile":Ljava/io/File;
    .restart local v12    # "targetFile":Ljava/io/File;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    .line 911
    const/4 v9, 0x0

    .line 912
    .local v9, "length":I
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 913
    .local v3, "buffer":[B
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .local v11, "outStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v14, -0x1

    if-eq v9, v14, :cond_5

    .line 916
    const/4 v14, 0x0

    invoke-virtual {v11, v3, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 919
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 920
    .end local v3    # "buffer":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "length":I
    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileNotFoundException is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 927
    if-eqz v10, :cond_0

    .line 928
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 934
    :cond_0
    :goto_3
    if-eqz v8, :cond_1

    .line 935
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 941
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_4
    return-object v7

    .line 900
    .restart local v6    # "file":Ljava/io/File;
    :cond_2
    :try_start_5
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 901
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 902
    const-string v14, "NfcHandover"

    const-string v15, "make temp dir success"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_3
    :goto_5
    move-object v12, v6

    goto :goto_0

    .line 904
    :cond_4
    const-string v14, "NfcHandover"

    const-string v15, "make temp dir fail"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 919
    .end local v6    # "file":Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 927
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "length":I
    .restart local v11    # "outStream":Ljava/io/FileOutputStream;
    :cond_5
    if-eqz v11, :cond_6

    .line 928
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 934
    :cond_6
    :goto_6
    if-eqz v8, :cond_7

    .line 935
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    move-object v10, v11

    .line 939
    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 930
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 931
    .local v5, "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 937
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 938
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 940
    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 930
    .end local v3    # "buffer":[B
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "length":I
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 931
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 937
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 938
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 921
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 922
    .local v4, "e":Ljava/lang/RuntimeException;
    :goto_7
    :try_start_8
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 927
    if-eqz v10, :cond_8

    .line 928
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 934
    :cond_8
    :goto_8
    if-eqz v8, :cond_1

    .line 935
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_4

    .line 937
    :catch_7
    move-exception v5

    .line 938
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 930
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 931
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 923
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 924
    .local v4, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 927
    if-eqz v10, :cond_9

    .line 928
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 934
    :cond_9
    :goto_a
    if-eqz v8, :cond_1

    .line 935
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_4

    .line 937
    :catch_a
    move-exception v5

    .line 938
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 930
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_b
    move-exception v5

    .line 931
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v14, "NfcHandover"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 926
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 927
    :goto_b
    if-eqz v10, :cond_a

    .line 928
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 934
    :cond_a
    :goto_c
    if-eqz v8, :cond_b

    .line 935
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 939
    :cond_b
    :goto_d
    throw v14

    .line 930
    :catch_c
    move-exception v5

    .line 931
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v15, "NfcHandover"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 937
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_d
    move-exception v5

    .line 938
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v15, "NfcHandover"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 926
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "length":I
    .restart local v11    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 923
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outStream":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v10, v11

    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 921
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outStream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v4

    move-object v10, v11

    .end local v11    # "outStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_7
.end method

.method private getCapabilityNdefRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x1

    .line 1373
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_1

    .line 1374
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1375
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1382
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_1
    return-object v3

    .line 1374
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1720
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1721
    .local v2, "filenamePos":I
    if-ltz v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1726
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1727
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1728
    .local v0, "dotPos":I
    if-ltz v0, :cond_1

    .line 1729
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1733
    .end local v0    # "dotPos":I
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "filenamePos":I
    :goto_1
    return-object v3

    .restart local v2    # "filenamePos":I
    :cond_0
    move-object v1, p1

    .line 1721
    goto :goto_0

    .line 1733
    .end local v2    # "filenamePos":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getIsHwBeamFlag()Z
    .locals 1

    .prologue
    .line 1715
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeam:Z

    return v0
.end method

.method private getUsefullPort()I
    .locals 1

    .prologue
    .line 1048
    const/16 v0, 0x231c

    return v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 998
    const/4 v2, 0x0

    .line 999
    .local v2, "value":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1000
    .local v0, "begin":I
    const/4 v1, -0x1

    .line 1001
    .local v1, "end":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1002
    if-ne v0, v6, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-object v3

    .line 1005
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "\":\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1006
    const-string v4, "\","

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1007
    if-ne v1, v6, :cond_2

    .line 1008
    const-string v4, "\"\n"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1010
    :cond_2
    if-eq v1, v6, :cond_0

    .line 1013
    if-eq v0, v1, :cond_0

    .line 1016
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1017
    goto :goto_0
.end method

.method private initFileInfoXML(Ljava/lang/String;[Landroid/net/Uri;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1672
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v2, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v3, 0x0

    .line 1674
    .local v3, "filePathString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1675
    .local v1, "fileInfo":Lcom/android/nfc/handover/FileInfo;
    const/4 v4, 0x0

    .line 1677
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 1678
    new-instance v1, Lcom/android/nfc/handover/FileInfo;

    .end local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    invoke-direct {v1}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 1679
    .restart local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1681
    if-nez v3, :cond_0

    .line 1682
    const-string v5, "NfcHandover"

    const-string v6, "/initFileInfoXML/ getFilePath is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :goto_1
    return-void

    .line 1686
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/nfc/handover/FileInfo;->setFileLen(J)V

    .line 1688
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 1689
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 1690
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileInfoXMLThread file.getName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileInfoXMLThread uris[i] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v4

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    add-int/lit8 v4, v4, 0x1

    .line 1696
    goto :goto_0

    .line 1697
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 724
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 725
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 728
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 729
    aget-byte v2, v0, v1

    .line 730
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 731
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "temp":B
    :cond_0
    return-object v0
.end method

.method private parseResponseMessage(Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1484
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    .line 1488
    .local v0, "tnf":S
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    .line 1489
    .local v1, "type":[B
    if-ne v5, v0, :cond_1

    sget-object v2, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1492
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1494
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mWiFiHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v0    # "tnf":S
    .end local v1    # "type":[B
    :cond_0
    :goto_0
    return-void

    .line 1495
    .restart local v0    # "tnf":S
    .restart local v1    # "type":[B
    :cond_1
    if-ne v5, v0, :cond_2

    sget-object v2, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1497
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1499
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mP2PHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1500
    :cond_2
    if-ne v5, v0, :cond_3

    sget-object v2, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1502
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1504
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mBTHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1506
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_0
.end method

.method private saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1595
    .local p2, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v8, "xmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1598
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1599
    const-string v9, "NfcHandover"

    const-string v10, "create file faild"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1607
    .local v2, "outStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1608
    .local v4, "outStreamWriter":Ljava/io/OutputStreamWriter;
    const/4 v6, 0x0

    .line 1610
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1611
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .local v3, "outStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v5, v3, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1612
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .local v5, "outStreamWriter":Ljava/io/OutputStreamWriter;
    :try_start_3
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1613
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-direct {p0, p2, v7}, Lcom/android/nfc/handover/HandoverDataParser;->writeXML(Ljava/util/List;Ljava/io/BufferedWriter;)Ljava/lang/String;

    .line 1614
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1623
    if-eqz v3, :cond_1

    .line 1624
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1626
    :cond_1
    if-eqz v5, :cond_2

    .line 1627
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 1629
    :cond_2
    if-eqz v7, :cond_3

    .line 1630
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 1638
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    const-string v9, "NfcHandover"

    const-string v10, "saveFileInfosToXML comple"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void

    .line 1601
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 1602
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1631
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 1633
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 1635
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1615
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1623
    if-eqz v2, :cond_5

    .line 1624
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1626
    :cond_5
    if-eqz v4, :cond_6

    .line 1627
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1629
    :cond_6
    if-eqz v6, :cond_4

    .line 1630
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 1631
    :catch_3
    move-exception v0

    .line 1633
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1617
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1623
    if-eqz v2, :cond_7

    .line 1624
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1626
    :cond_7
    if-eqz v4, :cond_8

    .line 1627
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1629
    :cond_8
    if-eqz v6, :cond_4

    .line 1630
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 1631
    :catch_5
    move-exception v0

    .line 1633
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1619
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1620
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1623
    if-eqz v2, :cond_9

    .line 1624
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1626
    :cond_9
    if-eqz v4, :cond_a

    .line 1627
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1629
    :cond_a
    if-eqz v6, :cond_4

    .line 1630
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1

    .line 1631
    :catch_7
    move-exception v0

    .line 1633
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1622
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1623
    :goto_5
    if-eqz v2, :cond_b

    .line 1624
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1626
    :cond_b
    if-eqz v4, :cond_c

    .line 1627
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1629
    :cond_c
    if-eqz v6, :cond_d

    .line 1630
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1634
    :cond_d
    :goto_6
    throw v9

    .line 1631
    :catch_8
    move-exception v0

    .line 1633
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1622
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1619
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_b
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1617
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_e
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1615
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_10
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_11
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_0

    .line 518
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 521
    .local v0, "bluetoothActivating":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 522
    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for incoming transfer, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "bluetoothActivating":Z
    :cond_0
    return-object v1

    .line 518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeXML(Ljava/util/List;Ljava/io/BufferedWriter;)Ljava/lang/String;
    .locals 6
    .param p2, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;",
            "Ljava/io/BufferedWriter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1642
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 1644
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1645
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1647
    const-string v4, ""

    const-string v5, "files"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1648
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/FileInfo;

    .line 1649
    .local v1, "file":Lcom/android/nfc/handover/FileInfo;
    const-string v4, ""

    const-string v5, "file"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1650
    const-string v4, ""

    const-string v5, "fileName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1651
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1652
    const-string v4, ""

    const-string v5, "fileName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1653
    const-string v4, ""

    const-string v5, "fileLen"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1654
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFileLen()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1655
    const-string v4, ""

    const-string v5, "fileLen"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1656
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1657
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1658
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1659
    const-string v4, ""

    const-string v5, "file"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1664
    .end local v1    # "file":Lcom/android/nfc/handover/FileInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1667
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1661
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v4, ""

    const-string v5, "files"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1662
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1663
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method cleanupTransfers()V
    .locals 5

    .prologue
    .line 300
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/beam/BeamTransferManager;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/beam/BeamTransferManager;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/beam/BeamTransferManager;

    .line 306
    .local v2, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 302
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/beam/BeamTransferManager;>;>;"
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/beam/BeamTransferManager;>;"
    .end local v2    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 310
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/beam/BeamTransferManager;>;>;"
    :cond_1
    return-void
.end method

.method createAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 765
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 766
    .local v0, "payload":[B
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 769
    aput-byte v3, v0, v3

    .line 770
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 772
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 773
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_0
    move v1, v3

    .line 766
    goto :goto_0
.end method

.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 339
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 340
    .local v0, "payload":[B
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 342
    aput-byte v3, v0, v3

    .line 343
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 344
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 345
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_0
    move v1, v3

    .line 340
    goto :goto_0
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    .line 413
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 350
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 355
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 356
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 358
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 363
    const-string v2, "NfcHandover"

    const-string v4, "Invalid Bluetooth Address, attempt recovery"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->attemptBTRecovery()V

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 368
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 369
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 369
    .end local v0    # "addressBytes":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createFastConHandoverRequest(I)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 1161
    const-string v2, "NfcHandover"

    const-string v3, "Enter createFastConHandoverRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v0, 0x0

    .line 1165
    .local v0, "records":Landroid/nfc/NdefRecord;
    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHandoverRequestMessage(): mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    packed-switch p1, :pswitch_data_0

    .line 1184
    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "none fast connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_0
    if-nez v0, :cond_0

    .line 1189
    const/4 v1, 0x0

    .line 1195
    :goto_1
    return-object v1

    .line 1168
    :pswitch_0
    const-string v2, "NfcHandover"

    const-string v3, "bluetooth fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/BTHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1170
    goto :goto_0

    .line 1172
    :pswitch_1
    const-string v2, "NfcHandover"

    const-string v3, "wifi fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/WiFiHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1174
    goto :goto_0

    .line 1176
    :pswitch_2
    const-string v2, "NfcHandover"

    const-string v3, "p2p fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1178
    goto :goto_0

    .line 1180
    :pswitch_3
    const-string v2, "NfcHandover"

    const-string v3, "wlan share handover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/WiFiHandover;->createWlanDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1182
    goto :goto_0

    .line 1192
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createFastHandoverRequestRecord(I)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1194
    .local v1, "resultMessage":Landroid/nfc/NdefMessage;
    const-string v2, "NfcHandover"

    const-string v3, "Leave createFastConHandoverRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createFastHandoverRequestRecord(I)Landroid/nfc/NdefRecord;
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1206
    const-string v5, "NfcHandover"

    const-string v6, "Enter  createFastHandoverRequestRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    new-array v6, v9, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverDataParser;->createAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v1, v5, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1210
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 1211
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1212
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1213
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1215
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 1216
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1217
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US_ASCII"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1219
    .local v0, "id":[B
    const-string v5, "NfcHandover"

    const-string v6, "Leave  createFastHandoverRequestRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->CON_HANDOVER_REQUEST:[B

    invoke-direct {v5, v9, v6, v0, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 401
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    .line 404
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 407
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

.method public declared-synchronized createHandoverRequestMessage([Landroid/net/Uri;)Landroid/nfc/NdefMessage;
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1091
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getLocalDeviceCapability()I

    move-result v1

    .line 1092
    .local v1, "mode":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v2, "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createHandoverRequestMessage(): mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    packed-switch v1, :pswitch_data_0

    .line 1149
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1099
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createConfigInfoRecord([Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1138
    .local v0, "configRecord":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_0

    .line 1140
    const-string v5, "NfcHandover"

    const-string v6, "configRecord == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1091
    .end local v0    # "configRecord":Landroid/nfc/NdefRecord;
    .end local v1    # "mode":I
    .end local v2    # "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1105
    .restart local v1    # "mode":I
    .restart local v2    # "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    :pswitch_1
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1110
    :pswitch_2
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1115
    :pswitch_3
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    :pswitch_4
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1126
    :pswitch_5
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1130
    :pswitch_6
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1143
    .restart local v0    # "configRecord":Landroid/nfc/NdefRecord;
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Landroid/nfc/NdefRecord;

    .line 1145
    .local v3, "records":[Landroid/nfc/NdefRecord;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1146
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1148
    .local v4, "resultMessage":Landroid/nfc/NdefMessage;
    const-string v5, "NfcHandover"

    const-string v6, "createHandoverRequestMessage is succese "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 434
    new-array v0, v8, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v0, v6

    .line 438
    .local v0, "messages":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 440
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 442
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 443
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 447
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 448
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 449
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v5, 0x0

    .line 419
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 420
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 422
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 423
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 427
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 428
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 429
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public createHwBeamConnecttingRecord(Z)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "activating"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1760
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1762
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 1763
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1764
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1765
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1766
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 1767
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1768
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1769
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x2

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_HWBEAM_CONNECTTING:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseResponseMessage(Landroid/nfc/NdefMessage;)V

    .line 1307
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/Handover;->doFastConHandover(Landroid/nfc/NdefMessage;)V

    .line 1310
    :cond_0
    return-void
.end method

.method public doHwBeamHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1292
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/HandoverDataParser;->parseResponseMessage(Landroid/nfc/NdefMessage;)V

    .line 1293
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/handover/Handover;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    .line 1296
    :cond_0
    return-void
.end method

.method public getConfigInfo(Ljava/lang/String;)Lcom/android/nfc/handover/ConfigInfo;
    .locals 7
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 947
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 948
    .local v2, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 949
    .local v5, "serverPortString":Ljava/lang/String;
    const/4 v4, -0x1

    .line 950
    .local v4, "serverPort":I
    new-instance v3, Lcom/android/nfc/handover/FileInfo;

    invoke-direct {v3}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 951
    .local v3, "mFileInfo":Lcom/android/nfc/handover/FileInfo;
    const-string v6, "filename"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverDataParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    const-string v6, "filepath"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverDataParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 953
    const-string v6, "serverport"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverDataParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 955
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 956
    :cond_0
    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    .line 959
    :cond_1
    if-nez v5, :cond_2

    .line 960
    const/16 v4, 0x231c

    .line 965
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v3, v2}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 968
    new-instance v0, Lcom/android/nfc/handover/ConfigInfo;

    invoke-direct {v0, v3, v4}, Lcom/android/nfc/handover/ConfigInfo;-><init>(Lcom/android/nfc/handover/FileInfo;I)V

    .line 969
    .local v0, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    invoke-virtual {v0, v3}, Lcom/android/nfc/handover/ConfigInfo;->setmFileInfo(Lcom/android/nfc/handover/FileInfo;)V

    .line 970
    invoke-virtual {v0, v4}, Lcom/android/nfc/handover/ConfigInfo;->setmServerPort(I)V

    goto :goto_0

    .line 962
    .end local v0    # "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1
.end method

.method public getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 783
    const-string v7, "file"

    .line 784
    .local v7, "FILE_SCHEME":Ljava/lang/String;
    const-string v6, "content"

    .line 786
    .local v6, "CONTENT_SCHEME":Ljava/lang/String;
    const/4 v12, 0x0

    .line 788
    .local v12, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 790
    .local v13, "scheme":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    const/4 v8, 0x0

    .line 794
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 801
    if-nez v8, :cond_0

    .line 802
    const/4 v0, 0x0

    .line 828
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 796
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 797
    .local v9, "e":Ljava/lang/SecurityException;
    const-string v0, "NfcHandover"

    const-string v1, "ContentResolver.query no permission, filePath will return null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v0, 0x0

    goto :goto_0

    .line 806
    .end local v9    # "e":Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 807
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 822
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    goto :goto_0

    .line 810
    :catch_1
    move-exception v9

    .line 812
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "_display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 814
    .local v11, "fileName":Ljava/lang/String;
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/HandoverDataParser;->generateLocalFilesPath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 822
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    .end local v11    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 816
    .local v10, "e1":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 817
    .restart local v11    # "fileName":Ljava/lang/String;
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/HandoverDataParser;->generateLocalFilesPath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 822
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "e1":Ljava/lang/IllegalArgumentException;
    .end local v11    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 824
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .locals 11
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x0

    .line 459
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 461
    new-instance v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->tryHwBeamHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v9

    invoke-direct {v7, v9, v8}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    .line 494
    :goto_0
    return-object v7

    .line 465
    :cond_0
    if-nez p1, :cond_1

    move-object v7, v8

    goto :goto_0

    .line 466
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_2

    move-object v7, v8

    goto :goto_0

    .line 468
    :cond_2
    const-string v7, "NfcHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getIncomingHandoverData():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v3, v7, v9

    .line 471
    .local v3, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    move-object v7, v8

    .line 472
    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v8

    .line 476
    goto :goto_0

    .line 480
    :cond_4
    const/4 v1, 0x0

    .line 481
    .local v1, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v2, v0, v5

    .line 482
    .local v2, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 483
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v9, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 484
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 481
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 489
    .end local v2    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 490
    .local v4, "hs":Landroid/nfc/NdefMessage;
    if-eqz v4, :cond_7

    .line 491
    new-instance v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v7, v4, v1}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    goto :goto_0

    :cond_7
    move-object v7, v8

    .line 494
    goto :goto_0
.end method

.method public getLocalDeviceCapability()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1358
    .local v0, "ability":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v4}, Lcom/android/nfc/handover/BTHandover;->isHandoverSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    move v1, v3

    .line 1358
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1737
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-object v3

    .line 1741
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1742
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1743
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1744
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1745
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/HandoverDataParser;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1746
    .local v2, "tempExtension":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1747
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1754
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "tempExtension":Ljava/lang/String;
    :cond_3
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not determine mime type for Uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;
    .locals 8
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v7, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .local v7, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferManager;

    .line 278
    .local v0, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    .end local v0    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 281
    .restart local v0    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_0
    if-eqz p3, :cond_1

    .line 282
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v0    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_1
    if-eqz p3, :cond_2

    .line 286
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverTransferId:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverTransferId:I

    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z

    move-result v5

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZLcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;)V

    .line 289
    .restart local v0    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v0    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    .end local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 293
    .restart local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 3
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 499
    const-string v0, "NfcHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHwBeam :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, p2, p1}, Lcom/android/nfc/handover/HandoverDataParser;->doHwBeamHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    .line 502
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectHandover()Lcom/android/nfc/handover/Handover;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1704
    iget v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1705
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getUsefullPort()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    .line 1707
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    return v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .locals 17
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    .line 531
    .local v12, "payload":[B
    if-eqz v12, :cond_0

    array-length v14, v12

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    :cond_0
    const/4 v14, 0x0

    .line 559
    :goto_0
    return v14

    .line 533
    :cond_1
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [B

    .line 534
    .local v13, "payloadNdef":[B
    const/4 v14, 0x1

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 537
    :try_start_0
    new-instance v11, Landroid/nfc/NdefMessage;

    invoke-direct {v11, v13}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .local v11, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .local v3, "arr$":[Landroid/nfc/NdefRecord;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v2, v3, v9

    .line 543
    .local v2, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 544
    .local v1, "acPayload":[B
    if-eqz v1, :cond_4

    .line 545
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 546
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit8 v7, v14, 0x3

    .line 547
    .local v7, "cps":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v6, v14, 0xff

    .line 548
    .local v6, "carrierRefLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    .line 538
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    .end local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "msg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v8

    .line 539
    .local v8, "e":Landroid/nfc/FormatException;
    const/4 v14, 0x0

    goto :goto_0

    .line 550
    .end local v8    # "e":Landroid/nfc/FormatException;
    .restart local v1    # "acPayload":[B
    .restart local v2    # "alt":Landroid/nfc/NdefRecord;
    .restart local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "carrierRefLength":I
    .restart local v7    # "cps":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "msg":Landroid/nfc/NdefMessage;
    :cond_2
    new-array v5, v6, [B

    .line 551
    .local v5, "carrierRefId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 552
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 554
    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 542
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "carrierRefId":[B
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 559
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    :cond_5
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public isHandoverSupported()Z
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeamHandoverSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isHwBeamConnectting(Landroid/nfc/NdefMessage;)Z
    .locals 4
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1774
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v0, v2, v1

    .line 1775
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_HWBEAM_CONNECTTING:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1778
    const-string v1, "NfcHandover"

    const-string v2, "isP2PHandoverConnectting P2PHandover is connectting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v1, 0x1

    .line 1782
    :cond_0
    return v1
.end method

.method public isHwBeamHandoverSupported()Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getLocalDeviceCapability()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 679
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 680
    .local v4, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 681
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 685
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lez v7, :cond_1

    .line 687
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 688
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 689
    .local v6, "type":I
    sparse-switch v6, :sswitch_data_0

    .line 710
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 714
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: invalid BT address"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string v7, ""

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 720
    :cond_2
    :goto_2
    return-object v4

    .line 691
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 692
    .local v0, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 693
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 694
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 716
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_1
    move-exception v1

    .line 717
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: payload shorter than expected"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 697
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 698
    .local v5, "role":B
    if-ne v5, v9, :cond_0

    .line 700
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    goto :goto_2

    .line 705
    .end local v5    # "role":B
    :sswitch_2
    add-int/lit8 v7, v2, -0x1

    new-array v3, v7, [B

    .line 706
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 707
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 689
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 586
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 587
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 588
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 591
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    .line 611
    :goto_0
    return-object v3

    .line 596
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 601
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 607
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 611
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x2

    .line 566
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 567
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 569
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 570
    .local v1, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 571
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 582
    .end local v1    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_0
    :goto_1
    return-object v1

    .line 576
    .restart local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    goto :goto_1

    .line 566
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 8
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 639
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 640
    .local v4, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 643
    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 644
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 645
    .local v0, "address":[B
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 646
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    .line 650
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 651
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 652
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 665
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 669
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: invalid BT address"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 675
    :cond_2
    return-object v4

    .line 654
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v5    # "type":I
    :pswitch_0
    add-int/lit8 v6, v2, -0x1

    :try_start_1
    new-array v3, v6, [B

    .line 655
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 656
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 671
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v3    # "nameBytes":[B
    .end local v5    # "type":I
    :catch_1
    move-exception v1

    .line 672
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: payload shorter than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 659
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v5    # "type":I
    :pswitch_1
    :try_start_2
    iget-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 660
    add-int/lit8 v6, v2, -0x1

    new-array v3, v6, [B

    .line 661
    .restart local v3    # "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 662
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;
    .locals 6
    .param p1, "fileInfoRecord"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v3, 0x0

    .line 975
    const/4 v0, 0x0

    .line 977
    .local v0, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-object v3

    .line 985
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 987
    .local v2, "payloadString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->getConfigInfo(Ljava/lang/String;)Lcom/android/nfc/handover/ConfigInfo;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 988
    goto :goto_0

    .line 989
    .end local v2    # "payloadString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 991
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 7
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 615
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 616
    .local v4, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 619
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 620
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 621
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 622
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 623
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 624
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 625
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 626
    .local v3, "nameLength":I
    new-array v2, v3, [B

    .line 627
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 628
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    .end local v0    # "address":[B
    .end local v2    # "nameBytes":[B
    .end local v3    # "nameLength":I
    :goto_0
    iget-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 635
    :cond_0
    return-object v4

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: invalid BT address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 632
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "appPath"    # Ljava/lang/String;
    .param p2, "oldFileName"    # Ljava/lang/String;

    .prologue
    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .local v4, "newFileName":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 845
    .local v5, "random":Ljava/security/SecureRandom;
    const-wide v10, 0x40f86a0000000000L    # 100000.0

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v12

    const-wide v14, 0x412b773e00000000L    # 899999.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-long v6, v10

    .line 848
    .local v6, "random_Noseq":J
    const-string v9, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 849
    .local v3, "lastDotIndex":I
    const/4 v9, -0x1

    if-eq v9, v3, :cond_0

    .line 850
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 853
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :goto_0
    const-string v9, "NfcHandover"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newFileName is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    .local v2, "filePath":Ljava/lang/StringBuilder;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 866
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v8, "testFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 873
    invoke-virtual/range {p0 .. p2}, Lcom/android/nfc/handover/HandoverDataParser;->renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 875
    :goto_1
    return-object v9

    .line 855
    .end local v2    # "filePath":Ljava/lang/StringBuilder;
    .end local v8    # "testFile":Ljava/io/File;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 875
    .restart local v2    # "filePath":Ljava/lang/StringBuilder;
    .restart local v8    # "testFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public sendFastConnectResult(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "result"    # I

    .prologue
    .line 1324
    if-nez p2, :cond_0

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFastConnectResult success mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1343
    :goto_0
    return-void

    .line 1334
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_FAST_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1335
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1336
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFastConnectResult failed mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1711
    iput p1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mServerPort:I

    .line 1712
    return-void
.end method

.method public tryHwBeamHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 9
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1230
    if-nez p1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-object v4

    .line 1235
    :cond_1
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryHwBeamHandoverRequest():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 1238
    .local v3, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1242
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->CON_HANDOVER_REQUEST:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1245
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->confirmFastConHandover(I)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1257
    :goto_1
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v5, :cond_0

    .line 1258
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/Handover;->tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1250
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_1

    .line 1251
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1254
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_1

    .line 1261
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->getCapabilityNdefRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1265
    .local v0, "configNdefRecord":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_3

    .line 1267
    const-string v5, "NfcHandover"

    const-string v6, "R.getid is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getLocalDeviceCapability()I

    move-result v5

    invoke-direct {p0, v8, v5}, Lcom/android/nfc/handover/HandoverDataParser;->confirmHandover(II)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1284
    :goto_2
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v5, :cond_0

    .line 1285
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/Handover;->tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 1272
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1274
    .local v2, "idString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getLocalDeviceCapability()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/handover/HandoverDataParser;->confirmHandover(II)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1276
    .end local v2    # "idString":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1278
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method
