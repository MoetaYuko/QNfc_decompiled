.class Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 4
    .param p1, "peerList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 751
    .local v1, "mWifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->access$1900(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;->searchSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->access$1900(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;->searchSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    .end local v1    # "mWifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    return-void
.end method
