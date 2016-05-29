.class public Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;
    }
.end annotation


# static fields
.field static BT_CONNECT:Ljava/lang/String; = null

.field static CTS_URI:Ljava/lang/String; = null

.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_BUSY:I = 0x3

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0x1f4

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x3

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x2

.field static final LOWER_TESTER_ECHO_SERVICE_SIMULATION_MODE:Z = false

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_BUSY:I = 0xd

.field static final MSG_HANDOVER_HWBEAM_CONNECTTING:I = 0xe

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_CO_ECHOSERVER2:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_START_LT:I = 0xa

.field static final MSG_STOP_CO_ECHOSERVER2:I = 0x9

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_STOP_LT:I = 0xb

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0xc

.field static final NDEFPUSH_SAP:I = 0x10

.field static P2P_CONNECT:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_HANDOVER_HWBEAM_CONNECTTING:I = 0x3

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710

.field static WIFI_CONNECT:Ljava/lang/String;

.field static WLAN_SHARE:Ljava/lang/String;

.field static connnectType:[Ljava/lang/String;


# instance fields
.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field private mFastConnType:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpServicesConnected:Z

.field mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPeerLlcpVersion:B

.field mPrefs:Landroid/content/SharedPreferences;

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field mUrisToSend:[Landroid/net/Uri;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "content://0@huawei/btconnect/1"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    .line 315
    const-string v0, "content://0@huawei/wificonnect/2"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    .line 316
    const-string v0, "content://0@huawei/p2pconnect/3"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    .line 317
    const-string v0, "content://0@huawei/wlanshare/4"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    .line 319
    const-string v0, "content://com.android.cts.verifier.managedprovisioning.fileprovider/images/image_to_share.jpg"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->CTS_URI:Ljava/lang/String;

    .line 321
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 1212
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 1219
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 325
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 326
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 327
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/nfc/handover/HandoverServer;-><init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 335
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 336
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 338
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 339
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 340
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 341
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 342
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 343
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 344
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 345
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 346
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 348
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 349
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager;->setFastConn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/P2pLinkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager;->setSender(Z)V

    return-void
.end method

.method static checkIsFastConnect([Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1536
    array-length v6, p0

    if-le v6, v5, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return v4

    .line 1539
    :cond_1
    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsFastConnect uris = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v4

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    sget-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1541
    .local v3, "type":Ljava/lang/String;
    aget-object v6, p0, v4

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 1542
    goto :goto_0

    .line 1540
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getFastConnectType([Landroid/net/Uri;)I
    .locals 8
    .param p0, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 1557
    const/4 v3, 0x0

    .line 1558
    .local v3, "mode":I
    array-length v6, p0

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 1568
    :goto_0
    return v5

    .line 1561
    :cond_0
    sget-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1563
    .local v4, "type":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1564
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    .line 1565
    goto :goto_0

    .line 1561
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "type":Ljava/lang/String;
    :cond_2
    move v5, v3

    .line 1568
    goto :goto_0
.end method

.method private isBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 634
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 635
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 636
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private isWifiConnectedWlan()Z
    .locals 6

    .prologue
    .line 1416
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1417
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1418
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1419
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    .line 1422
    const/4 v3, 0x1

    .line 1429
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v3

    .line 1423
    .restart local v1    # "wi":Landroid/net/wifi/WifiInfo;

    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NfcP2pLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchMethodException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1429
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1501
    packed-switch p0, :pswitch_data_0

    .line 1509
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1503
    :pswitch_0
    const-string v0, "LINK_STATE_DOWN"

    goto :goto_0

    .line 1505
    :pswitch_1
    const-string v0, "LINK_STATE_DEBOUNCE"

    goto :goto_0

    .line 1507
    :pswitch_2
    const-string v0, "LINK_STATE_UP"

    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 4
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1440
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    monitor-enter p0

    .line 1442
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_1

    .line 1444
    :cond_0
    monitor-exit p0

    .line 1457
    :goto_0
    return-void

    .line 1446
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1447
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_3

    .line 1448
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 1456
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1451
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1453
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1454
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1484
    packed-switch p0, :pswitch_data_0

    .line 1496
    :pswitch_0
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1486
    :pswitch_1
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    goto :goto_0

    .line 1488
    :pswitch_2
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    goto :goto_0

    .line 1490
    :pswitch_3
    const-string v0, "SEND_STATE_SENDING"

    goto :goto_0

    .line 1492
    :pswitch_4
    const-string v0, "SEND_STATE_COMPLETE"

    goto :goto_0

    .line 1494
    :pswitch_5
    const-string v0, "SEND_STATE_CANCELED"

    goto :goto_0

    .line 1484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setFastConn(Z)V
    .locals 5
    .param p1, "isFastConn"    # Z

    .prologue
    .line 876
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 877
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 878
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isFastConn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 879
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 880
    return-void
.end method

.method private setSender(Z)V
    .locals 5
    .param p1, "isSender"    # Z

    .prologue
    .line 1194
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1195
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1196
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isSender"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1198
    return-void
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 645
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 646
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 652
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 649
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v3

    .line 650
    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v2, v3

    .line 652
    goto :goto_0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .prologue
    .line 771
    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 775
    :cond_0
    monitor-exit p0

    .line 776
    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 845
    monitor-enter p0

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 847
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 850
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 851
    monitor-exit p0

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 671
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 672
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method disconnectLlcpServices()V
    .locals 2

    .prologue
    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 694
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 695
    monitor-exit p0

    .line 696
    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1514
    monitor-enter p0

    .line 1515
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    monitor-exit p0

    .line 1524
    return-void

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 2
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 360
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 365
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 366
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 383
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 386
    monitor-exit p0

    .line 387
    return-void

    .line 369
    :cond_2
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 372
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 377
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 378
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 1265
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1412
    :goto_0
    return v5

    .line 1267
    :pswitch_0
    monitor-enter p0

    .line 1268
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1269
    monitor-exit p0

    goto :goto_0

    .line 1270
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1272
    :pswitch_1
    monitor-enter p0

    .line 1273
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1274
    monitor-exit p0

    goto :goto_0

    .line 1275
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1278
    :pswitch_2
    monitor-enter p0

    .line 1279
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->startCoService()V

    .line 1280
    monitor-exit p0

    goto :goto_0

    .line 1281
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1283
    :pswitch_3
    monitor-enter p0

    .line 1284
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->stopCoService()V

    .line 1285
    monitor-exit p0

    goto :goto_0

    .line 1286
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1288
    :pswitch_4
    monitor-enter p0

    .line 1289
    :try_start_4
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/LowerTesterSimulator;->startCoService()V

    .line 1290
    monitor-exit p0

    goto :goto_0

    .line 1291
    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 1293
    :pswitch_5
    monitor-enter p0

    .line 1294
    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/LowerTesterSimulator;->stopCoService()V

    .line 1295
    monitor-exit p0

    goto :goto_0

    .line 1296
    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 1298
    :pswitch_6
    monitor-enter p0

    .line 1301
    const/4 v2, 0x1

    :try_start_6
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1302
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 1303
    monitor-exit p0

    goto :goto_0

    :catchall_6
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 1306
    :pswitch_7
    monitor-enter p0

    .line 1307
    :try_start_7
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1308
    monitor-exit p0

    goto :goto_0

    .line 1317
    :catchall_7
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 1310
    :cond_0
    :try_start_8
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Debounce timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1312
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1313
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1314
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1315
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pOutOfRange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1317
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_0

    .line 1321
    :pswitch_8
    monitor-enter p0

    .line 1322
    :try_start_9
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_1

    .line 1323
    monitor-exit p0

    goto/16 :goto_0

    .line 1331
    :catchall_8
    move-exception v2

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v2

    .line 1325
    :cond_1
    :try_start_a
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v4, :cond_2

    .line 1326
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1328
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1329
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1331
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto/16 :goto_0

    .line 1334
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 1335
    .local v1, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1336
    :try_start_b
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_3

    .line 1337
    monitor-exit p0

    goto/16 :goto_0

    .line 1346
    :catchall_9
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    throw v2

    .line 1339
    :cond_3
    :try_start_c
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v4, :cond_4

    .line 1340
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1342
    :cond_4
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1343
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1345
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1346
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto/16 :goto_0

    .line 1349
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    :pswitch_a
    monitor-enter p0

    .line 1350
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1352
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v4, :cond_6

    .line 1353
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 1358
    :catchall_a
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    throw v2

    .line 1355
    :cond_6
    const/4 v2, 0x1

    :try_start_e
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1356
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1358
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto/16 :goto_0

    .line 1361
    :pswitch_b
    monitor-enter p0

    .line 1362
    const/4 v2, 0x0

    :try_start_f
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1364
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v4, :cond_8

    .line 1365
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 1383
    :catchall_b
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v2

    .line 1367
    :cond_8
    const/4 v2, 0x5

    :try_start_10
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1368
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1369
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pSendComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1372
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    if-ne v2, v4, :cond_9

    invoke-direct {p0}, Lcom/android/nfc/P2pLinkManager;->isWifiConnectedWlan()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1373
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const v3, 0x7f08004a

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1376
    :cond_9
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v2, :cond_a

    .line 1378
    :try_start_11
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v3, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v2, v3}, Landroid/nfc/IAppCallback;->onNdefPushComplete(B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1383
    :cond_a
    :goto_1
    :try_start_12
    monitor-exit p0

    goto/16 :goto_0

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_1

    .line 1386
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_c
    monitor-enter p0

    .line 1387
    const/4 v2, 0x0

    :try_start_13
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1389
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_b

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v4, :cond_c

    .line 1390
    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    .line 1395
    :catchall_c
    move-exception v2

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v2

    .line 1392
    :cond_c
    const/4 v2, 0x1

    :try_start_14
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1393
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverBusy()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverBusy()V

    .line 1395
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto/16 :goto_0

    .line 1399
    :pswitch_d
    monitor-enter p0

    .line 1400
    const/4 v2, 0x0

    :try_start_15
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1402
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_d

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v4, :cond_e

    .line 1403
    :cond_d
    monitor-exit p0

    goto/16 :goto_0

    .line 1408
    :catchall_d
    move-exception v2

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw v2

    .line 1405
    :cond_e
    const/4 v2, 0x1

    :try_start_16
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1406
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverHeBeamConnnectting()V

    .line 1408
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    goto/16 :goto_0

    .line 1265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public isLlcpActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverBusy()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 755
    return-void
.end method

.method onHandoverHwBeamConnectting()V
    .locals 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1528
    return-void
.end method

.method onHandoverUnsupported()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    return-void
.end method

.method public onLlcpActivated(B)V
    .locals 4
    .param p1, "peerLlcpVersion"    # B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 451
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 456
    :cond_0
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-eqz v0, :cond_1

    .line 458
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "mEchoServer.onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2;->onLlcpActivated()V

    .line 462
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 463
    iput-byte p1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    .line 464
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :cond_2
    :goto_0
    monitor-exit p0

    .line 509
    :goto_1
    return-void

    .line 466
    :pswitch_0
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pInRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 469
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 472
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 473
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 474
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 478
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 484
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 485
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 487
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 493
    :pswitch_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    monitor-exit p0

    goto :goto_1

    .line 497
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 498
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_7

    .line 501
    :cond_6
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 503
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .locals 3

    .prologue
    .line 702
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 708
    :cond_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v1, :pswitch_data_0

    .line 746
    :goto_0
    monitor-exit p0

    .line 747
    return-void

    .line 711
    :pswitch_0
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 715
    :pswitch_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_1

    .line 733
    :goto_1
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 734
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 735
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 739
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 719
    :pswitch_3
    const/4 v0, 0x0

    .line 720
    goto :goto_1

    .line 722
    :pswitch_4
    const/16 v0, 0xbb8

    .line 723
    goto :goto_1

    .line 725
    :pswitch_5
    const/16 v0, 0x1388

    .line 726
    goto :goto_1

    .line 728
    :pswitch_6
    const/16 v0, 0x1f4

    .line 729
    goto :goto_1

    .line 731
    :pswitch_7
    const/16 v0, 0xfa

    goto :goto_1

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 717
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 6

    .prologue
    .line 515
    monitor-enter p0

    .line 516
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 517
    .local v0, "totalTime":J
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit p0

    .line 519
    return-void

    .line 518
    .end local v0    # "totalTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onLlcpServicesConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 856
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    monitor-enter p0

    .line 858
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_0

    .line 859
    monitor-exit p0

    .line 872
    :goto_0
    return-void

    .line 861
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 862
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_2

    .line 863
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    invoke-direct {p0}, Lcom/android/nfc/P2pLinkManager;->isWifiConnectedWlan()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested(IZ)V

    .line 871
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 865
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 867
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 417
    monitor-exit p0

    .line 445
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 426
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 428
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 429
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 434
    :cond_1
    :goto_2
    iget-object v0, p1, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 440
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    invoke-direct {p0}, Lcom/android/nfc/P2pLinkManager;->isWifiConnectedWlan()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested(IZ)V

    .line 442
    const/16 v0, 0xc

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 444
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 423
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    goto :goto_1

    .line 430
    :cond_6
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onP2pCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1462
    monitor-enter p0

    .line 1463
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1464
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v1, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1475
    return-void

    .line 1467
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1470
    const/4 v0, 0x1

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1437
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1261
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1256
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 760
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 523
    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 531
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method prepareMessageToSend(Z)V
    .locals 8
    .param p1, "generatePlayLink"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 535
    invoke-direct {p0, v5}, Lcom/android/nfc/P2pLinkManager;->setSender(Z)V

    .line 537
    monitor-enter p0

    .line 539
    const/4 v5, -0x1

    :try_start_0
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    .line 541
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 542
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 543
    iget-boolean v5, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v5, :cond_0

    .line 544
    monitor-exit p0

    .line 631
    :goto_0
    return-void

    .line 548
    :cond_0
    sget-boolean v5, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 550
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v6, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v5, v6}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v0

    .line 551
    .local v0, "data":Landroid/nfc/BeamShareData;
    if-eqz v0, :cond_1

    .line 552
    iget-object v5, v0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 553
    iget-object v5, v0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 555
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "not hw mUrisToSend is "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/nfc/P2pLinkManager;->checkIsFastConnect([Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 557
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 558
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    .end local v0    # "data":Landroid/nfc/BeamShareData;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v5}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v2

    .line 567
    .local v2, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 568
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Could not determine foreground UID."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    monitor-exit p0

    goto :goto_0

    .line 630
    .end local v2    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 572
    .restart local v2    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 573
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Beam is disabled by policy."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    monitor-exit p0

    goto :goto_0

    .line 577
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v5, :cond_6

    .line 578
    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_b

    .line 580
    :try_start_4
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v6, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v5, v6}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v4

    .line 582
    .local v4, "shareData":Landroid/nfc/BeamShareData;
    if-eqz v4, :cond_4

    .line 583
    iget-object v5, v4, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 584
    iget-object v5, v4, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 585
    iget-object v5, v4, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 586
    iget v5, v4, Landroid/nfc/BeamShareData;->flags:I

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    .line 588
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 589
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 590
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 601
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 591
    :cond_5
    :try_start_6
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 592
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 602
    .end local v4    # "shareData":Landroid/nfc/BeamShareData;
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Failed NDEF callback: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_8

    array-length v5, v3

    if-lt v5, v7, :cond_8

    .line 617
    if-eqz p1, :cond_7

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 619
    :cond_7
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Disabling default Beam behavior"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 621
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 628
    :cond_8
    :goto_4
    const-string v5, "NfcP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMessageToSend = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v5, "NfcP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUrisToSend = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 593
    .end local v3    # "pkgs":[Ljava/lang/String;
    .restart local v4    # "shareData":Landroid/nfc/BeamShareData;
    :cond_9
    :try_start_8
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 594
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    goto/16 :goto_2

    .line 595
    :cond_a
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 596
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 609
    .end local v4    # "shareData":Landroid/nfc/BeamShareData;
    :cond_b
    :try_start_9
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Last registered callback is not running in the foreground."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 623
    .restart local v3    # "pkgs":[Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 624
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 561
    .end local v2    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method scheduleTimeoutLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1480
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1481
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 765
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 766
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 767
    monitor-exit p0

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 1
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 409
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 410
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLlcpClEchoServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2;

    invoke-direct {v0}, Lcom/android/nfc/echoserver/EchoServer2;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/echoserver/EchoServer2;->startClService(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public startLlcpCoEchoServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2;

    invoke-direct {v0}, Lcom/android/nfc/echoserver/EchoServer2;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/echoserver/EchoServer2;->setCoServiceNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 799
    return-void
.end method

.method public stopLlcpClEchoServer()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2;->stopClService()V

    .line 842
    :cond_0
    return-void
.end method

.method public stopLlcpCoEchoServer()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 815
    :cond_0
    return-void
.end method
