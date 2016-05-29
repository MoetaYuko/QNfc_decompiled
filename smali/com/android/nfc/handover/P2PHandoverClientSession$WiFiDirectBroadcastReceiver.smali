.class public Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

.field private mStatePeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    .line 743
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 747
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mStatePeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 764
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 744
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    .line 745
    return-void
.end method

.method static synthetic access$1900(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 780
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "action":Ljava/lang/String;
    const-string v5, "P2PHandoverClientSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifip2p onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 784
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 786
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "WifiManager disable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v5

    if-le v5, v8, :cond_0

    .line 788
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnect(I)V
    invoke-static {v5, v8}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 792
    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 793
    .local v4, "state":I
    if-ne v4, v9, :cond_0

    .line 795
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "wifip2p start search deivces"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 797
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    if-nez v5, :cond_3

    .line 798
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifip2p"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    # setter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6, v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$302(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    .line 799
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    # setter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$402(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 801
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v5, v9}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 802
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->startConnectTimer()V
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 803
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    invoke-virtual {v5, v6, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 812
    .end local v4    # "state":I
    :cond_4
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 814
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 816
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mStatePeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 818
    :cond_5
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 820
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v5

    if-ne v5, v11, :cond_0

    .line 822
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 823
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 824
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto/16 :goto_0

    .line 828
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 829
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 831
    .local v2, "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/P2PHandover;->saveMacAddressToRecordFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    const-string v5, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 836
    const-string v5, "extraState"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 837
    .restart local v4    # "state":I
    if-ne v4, v11, :cond_0

    .line 839
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "connect to server failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
