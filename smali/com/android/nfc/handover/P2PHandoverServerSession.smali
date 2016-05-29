.class public Lcom/android/nfc/handover/P2PHandoverServerSession;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;,
        Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    }
.end annotation


# static fields
.field static final ACTION_CONNECT_STATE_CHANGE:Ljava/lang/String; = "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

.field static final CONNECT_STATE_CHANGE_EXTRA:Ljava/lang/String; = "extraState"

.field static final CONNECT_TIME_OUT:I = 0x7530

.field static final DBG:Z = true

.field static final EVENT_CONNECT_FAIL:I = 0x3

.field static final FAILED_CONNECT_TIME_OUT:I = 0x2

.field static final FAILED_CREATE_GO:I = 0x1

.field static final FAILED_DISCONNECT:I = 0x4

.field static final FAILED_ERROR:I = 0x5

.field static final FAILED_NONE:I = 0x0

.field static final FAILED_P2P_DISABLE:I = 0x3

.field static final MAX_CREATE_GO_TIMES:I = 0x4

.field static final P2P_CONNECTED_CLIENT:I = 0x5

.field static final P2P_GO_CREATED:I = 0x4

.field static final P2P_GO_CREATING:I = 0x3

.field static final P2P_GO_START_CREATE:I = 0x2

.field static final P2P_IDLE:I = 0x1

.field static final TAG:Ljava/lang/String; = "P2PHandoverServerSession"


# instance fields
.field private P2PconnectState:I

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private connectTotalTimer:Ljava/util/Timer;

.field private createGoTimes:I

.field private fastConnectFlag:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mContext:Landroid/content/Context;

.field private mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

.field private mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

.field private mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private validKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V
    .locals 4
    .param p1, "p2pHandover"    # Lcom/android/nfc/handover/P2PHandover;
    .param p2, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    .line 78
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    .line 83
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    .line 159
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$1;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .line 277
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$2;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 298
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$3;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 316
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$4;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 95
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 96
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 98
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->initValidKey(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    .line 100
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 101
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    return-void
.end method

.method private P2PFastConnectFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 780
    const-string v0, "P2PHandoverServerSession"

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

    .line 781
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 782
    return-void
.end method

.method private P2PFastConnectSuccess()V
    .locals 3

    .prologue
    .line 794
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "fast connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    .line 796
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 797
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 798
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/P2PHandoverServerSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceAlreadyConnectToClient()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->createConnectToClient()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    return v0
.end method

.method static synthetic access$1808(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/TransmitManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method private createConnectToClient()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "wifip2p begin createConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 228
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 229
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->registerServerReceiver()V

    .line 230
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 231
    return-void
.end method

.method private deviceAlreadyConnectToClient()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v1, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 263
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v1, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 265
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectSuccess()V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->registerServerReceiver()V

    .line 270
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 272
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDottedDecimalIP([B)Ljava/lang/String;
    .locals 3
    .param p1, "ipAddr"    # [B

    .prologue
    .line 727
    if-eqz p1, :cond_2

    .line 728
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 729
    .local v1, "ipAddrStr":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 730
    if-lez v0, :cond_0

    .line 731
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .end local v0    # "i":I
    .end local v1    # "ipAddrStr":Ljava/lang/StringBuffer;
    :goto_1
    return-object v2

    :cond_2
    const-string v2, "null"

    goto :goto_1
.end method

.method private getLocalIPAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 691
    const-string v6, "p2p"

    .line 693
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 694
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v0, :cond_0

    move-object v5, v7

    .line 714
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-object v5

    .line 695
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 696
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 697
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 698
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 699
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 700
    instance-of v8, v3, Ljava/net/Inet4Address;

    if-eqz v8, :cond_1

    .line 701
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getDottedDecimalIP([B)Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, "localipString":Ljava/lang/String;
    const-string v8, "P2PHandoverServerSession"

    const-string v9, "getLocalIPAddress localipString."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 709
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "localipString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 710
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    :goto_1
    move-object v5, v7

    .line 714
    goto :goto_0

    .line 711
    :catch_1
    move-exception v2

    .line 712
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private getP2PConnectState()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    return v0
.end method

.method private initValidKey(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V
    .locals 3
    .param p1, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    .line 105
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "white key is name =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "white key is dev_addr."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private registerServerReceiver()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 249
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void
.end method

.method private setP2PConnectState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 397
    const-string v0, "P2PHandoverServerSession"

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

    .line 398
    iput p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    .line 399
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method private startConnectTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 810
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "startConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 813
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 815
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 816
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$1;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 817
    return-void
.end method

.method private stopAll(Z)V
    .locals 6
    .param p1, "isDeleteFile"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 427
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v1, v1, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 431
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 433
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v1, :cond_1

    .line 434
    if-eqz p1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 440
    :goto_0
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 443
    :cond_1
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "stopP2PConnect clear data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 448
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->removeP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_1
    new-instance v1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 456
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 457
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v1, v1, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    if-nez v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 461
    return-void

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/TransmitManager;->stopServer()Z

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopConnect(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 474
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect getP2PConnectState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    packed-switch p1, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 482
    :pswitch_0
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-lt v0, v4, :cond_1

    .line 483
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 484
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 506
    :cond_1
    :goto_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectFailed(I)V

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-lt v0, v4, :cond_1

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 491
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    goto :goto_1

    .line 496
    :pswitch_2
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 497
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 498
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    goto :goto_1

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopConnectTimer()V
    .locals 2

    .prologue
    .line 829
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 834
    :cond_0
    return-void
.end method


# virtual methods
.method public P2PFastConnect()V
    .locals 2

    .prologue
    .line 765
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "P2P P2PFastConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    .line 767
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    .line 768
    return-void
.end method

.method public deviceClose()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    .line 385
    return-void
.end method

.method public getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "wifi is close"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "soft ap is open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->createConnectToClient()V

    .line 369
    :goto_1
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "wifi is open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 366
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 367
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    .line 381
    return-void
.end method
