.class public Lcom/android/nfc/handover/P2PHandoverClientSession;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;,
        Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    }
.end annotation


# static fields
.field static final ACTION_CONNECT_STATE_CHANGE:Ljava/lang/String; = "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

.field public static final ARP_FILE_PATH:Ljava/lang/String; = "/proc/net/arp"

.field private static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final CONNECT_STATE_CHANGE_EXTRA:Ljava/lang/String; = "extraState"

.field static final CONNECT_TIME_OUT:I = 0x7530

.field static final DBG:Z = true

.field static final EVENT_CONNECT_FAIL:I = 0x3

.field static final FAILED_CONNECT_EEEOR:I = 0x3

.field static final FAILED_CONNECT_TIME_OUT:I = 0x2

.field static final FAILED_ERROR:I = 0x4

.field static final FAILED_NONE:I = 0x0

.field static final FAILED_P2P_DISABLE:I = 0x1

.field static final P2P_CONNECTED:I = 0x4

.field static final P2P_CONNECTING:I = 0x3

.field static final P2P_DEAULT_SERVER_IP:Ljava/lang/String; = "192.168.49.1"

.field static final P2P_IDLE:I = 0x1

.field static final P2P_SEARCHING:I = 0x2

.field static final TAG:Ljava/lang/String; = "P2PHandoverClientSession"


# instance fields
.field private P2PconnectState:I

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private configInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private connectTotalTimer:Ljava/util/Timer;

.field private fastConnectFlag:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isFastConnect:Z

.field private mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mContext:Landroid/content/Context;

.field private mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mHandoverReceiver:Landroid/content/BroadcastReceiver;

.field private mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

.field private mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

.field private mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private remoteName:Ljava/lang/String;

.field private final transferFilter:Landroid/content/IntentFilter;

.field private transmitKeyString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V
    .locals 4
    .param p1, "p2pHandover"    # Lcom/android/nfc/handover/P2PHandover;
    .param p2, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .param p3, "mTransmiteKey"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 74
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    .line 79
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 83
    iput v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    .line 84
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    .line 89
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 164
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$1;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    .line 299
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$2;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 339
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$3;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 395
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$4;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 860
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$5;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 113
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 115
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    .line 116
    iget-object v0, p2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 117
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->fastConnectFlag:Z

    .line 119
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 120
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    return-void
.end method

.method private P2PFastConnectFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 987
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fast connect failed reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 989
    return-void
.end method

.method private P2PFastConnectSuccess()V
    .locals 3

    .prologue
    .line 1001
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "fast connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    .line 1003
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 1005
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnect(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectSuccess()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/TransmitManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/ConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/P2PHandoverClientSession;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->startTransmitClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitCancel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    return v0
.end method

.method private addressToReverseBytes(Ljava/lang/String;)[C
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 625
    const/16 v5, 0xc

    new-array v2, v5, [C

    .line 627
    .local v2, "result":[C
    const/4 v4, 0x0

    .line 628
    .local v4, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 630
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aget-byte v5, v5, v1

    int-to-char v3, v5

    .line 631
    .local v3, "ss":C
    const/16 v5, 0x3a

    if-eq v3, v5, :cond_0

    .line 632
    aput-char v3, v2, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    add-int/lit8 v4, v4, 0x1

    .line 628
    .end local v3    # "ss":C
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 640
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-object v2
.end method

.method private createConnectToServer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "wifip2p begin createConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v3, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 267
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 268
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 275
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 277
    return-void
.end method

.method private getApLinkedStaList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v6, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 708
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 709
    .local v3, "fileReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 712
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    .line 713
    .local v5, "linkedSta":[Ljava/lang/String;
    const-string v8, " +"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 714
    .local v7, "splitted":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    .line 716
    const/4 v8, 0x0

    const/4 v9, 0x3

    aget-object v9, v7, v9

    aput-object v9, v5, v8

    .line 717
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v7, v9

    aput-object v9, v5, v8

    .line 719
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 721
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "linkedSta":[Ljava/lang/String;
    .end local v7    # "splitted":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 722
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    if-eqz v0, :cond_1

    .line 730
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 736
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_2
    return-object v6

    .line 728
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 730
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    move-object v0, v1

    .line 736
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 731
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 732
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 731
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 732
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 724
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 725
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 728
    if-eqz v0, :cond_1

    .line 730
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 731
    :catch_4
    move-exception v2

    .line 732
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 728
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v0, :cond_4

    .line 730
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 733
    :cond_4
    :goto_6
    throw v8

    .line 731
    :catch_5
    move-exception v2

    .line 732
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 728
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 724
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 721
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private getP2PConnectState()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    return v0
.end method

.method private getP2PIpByMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 681
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getApLinkedStaList()Ljava/util/List;

    move-result-object v3

    .line 682
    .local v3, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 683
    .local v0, "IpAddress":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->macIncrease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "TIMacString":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 685
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 686
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 687
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 691
    :cond_1
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "getIpByMac IpAddress."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-object v0

    .line 685
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initTransfer(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 223
    const-string v1, "P2PHandoverClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTransfer key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.p2phandover.action.CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v1

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->resetHandoverTimer()V

    .line 235
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v1

    invoke-virtual {v1, p1, v5, v5}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v0

    .line 236
    .local v0, "mTransfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 238
    iget-object v1, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v1, v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 241
    :cond_0
    return-void
.end method

.method private macIncrease(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 596
    const/16 v1, 0xb

    .line 597
    .local v1, "num":I
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->addressToReverseBytes(Ljava/lang/String;)[C

    move-result-object v2

    .line 598
    .local v2, "tempMac":[C
    const/4 v0, 0x0

    .line 599
    .local v0, "macString":Ljava/lang/String;
    :goto_0
    if-ltz v1, :cond_0

    .line 600
    const/16 v3, 0x39

    aget-char v4, v2, v1

    if-ne v3, v4, :cond_1

    .line 601
    const/16 v3, 0x61

    aput-char v3, v2, v1

    .line 611
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->reverseBytesToAddress([C)Ljava/lang/String;

    move-result-object v0

    .line 612
    return-object v0

    .line 603
    :cond_1
    const/16 v3, 0x66

    aget-char v4, v2, v1

    if-ne v3, v4, :cond_2

    .line 604
    const/16 v3, 0x30

    aput-char v3, v2, v1

    .line 605
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 607
    :cond_2
    aget-char v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v1

    goto :goto_1
.end method

.method private reverseBytesToAddress([C)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # [C

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "i":I
    const/4 v2, 0x0

    .line 655
    .local v2, "x":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 656
    .local v1, "resule":Ljava/lang/StringBuffer;
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 657
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 658
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    const/4 v2, 0x0

    goto :goto_0

    .line 661
    :cond_0
    aget-char v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 662
    add-int/lit8 v2, v2, 0x1

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setP2PConnectState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 465
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PConnectState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    .line 467
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method private startConnectTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1031
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1033
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1035
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1036
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$1;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1037
    return-void
.end method

.method private startTransmitClient(Ljava/lang/String;)V
    .locals 4
    .param p1, "serverMacAdd"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "serverIPAddress":Ljava/lang/String;
    const-string v1, "P2PHandoverClientSession"

    const-string v2, "start transmitClient serverIPAddress."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez v0, :cond_0

    .line 292
    const-string v0, "192.168.49.1"

    .line 295
    :cond_0
    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 296
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private stopAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 507
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "stopAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 513
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 514
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 515
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    .line 516
    new-instance v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 517
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 519
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 524
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 525
    return-void

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private stopConnect(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 555
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect getP2PConnectState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    packed-switch p1, :pswitch_data_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 563
    :pswitch_0
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopAll()V

    .line 565
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 566
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopTransfer()V

    .line 580
    :cond_1
    :goto_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->fastConnectFlag:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectFailed(I)V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopAll()V

    .line 572
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopTransfer()V

    goto :goto_1

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopConnectTimer()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1052
    :cond_0
    return-void
.end method

.method private stopTransfer()V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private transmitCancel()V
    .locals 1

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 854
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->cancelFileTransmit()V

    .line 857
    :cond_0
    return-void
.end method

.method private transmitComplete()V
    .locals 2

    .prologue
    .line 847
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "transmitComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 849
    return-void
.end method

.method private unregisterFileReceiver()V
    .locals 2

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "unregisterReceiver mHandoverReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method


# virtual methods
.method public P2PFastConnect()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    .line 974
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->start()V

    .line 975
    return-void
.end method

.method public getRemoveHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-boolean v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->initTransfer(Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    const-string v1, "P2PHandoverClientSession"

    const-string v2, "wifi is close"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const-string v1, "P2PHandoverClientSession"

    const-string v2, "soft ap is open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V

    .line 453
    :goto_1
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "P2PHandoverClientSession"

    const-string v2, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "P2PHandoverClientSession"

    const-string v2, "wifi is open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 450
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 451
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_1
.end method
