.class Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 6
    .param p1, "peerList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    const/4 v5, 0x4

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "isConnected":Z
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 525
    .local v2, "mWifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v3, :cond_1

    .line 529
    const-string v3, "P2PHandoverServerSession"

    const-string v4, "mServerPeerListListener dev_addr disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v3, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    goto :goto_0

    .line 532
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 536
    :cond_2
    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v3, :cond_3

    .line 539
    const-string v3, "P2PHandoverServerSession"

    const-string v4, "mServerPeerListListener deviceName disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v3, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    goto :goto_0

    .line 542
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 548
    .end local v2    # "mWifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    if-nez v1, :cond_5

    .line 549
    const-string v3, "P2PHandoverServerSession"

    const-string v4, "mServerPeerListListener disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v3, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 552
    :cond_5
    return-void
.end method
