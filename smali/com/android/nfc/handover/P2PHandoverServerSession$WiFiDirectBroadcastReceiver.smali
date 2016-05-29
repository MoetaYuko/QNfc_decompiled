.class public Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandoverServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field private createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

.field private mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 515
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 519
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 555
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 587
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 516
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .line 517
    return-void
.end method

.method static synthetic access$1900(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "action":Ljava/lang/String;
    const-string v5, "P2PHandoverServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2p connnect onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 615
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiManager disable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-le v5, v8, :cond_0

    .line 617
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v5, v9}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 622
    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 623
    .local v4, "state":I
    if-ne v4, v12, :cond_4

    .line 625
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "wifi p2p is enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 627
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    if-nez v5, :cond_3

    .line 628
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifip2p"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    # setter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$802(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    .line 629
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    # setter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 631
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V
    invoke-static {v5, v12}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 632
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->startConnectTimer()V
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 633
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 635
    :cond_4
    if-ne v4, v8, :cond_0

    .line 637
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiP2pManager disable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    .end local v4    # "state":I
    :cond_5
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 644
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 646
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 648
    :cond_6
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 649
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-lt v5, v9, :cond_0

    .line 650
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 651
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 653
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "networkInfo.isConnected()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 655
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto/16 :goto_0

    .line 658
    :cond_7
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 660
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiP2pManager disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v6, 0x4

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    goto/16 :goto_0

    .line 665
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 666
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 668
    .local v2, "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/P2PHandover;->saveMacAddressToRecordFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    const-string v5, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 673
    const-string v5, "extraState"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 674
    .restart local v4    # "state":I
    if-ne v4, v9, :cond_0

    .line 676
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "connect to client failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
