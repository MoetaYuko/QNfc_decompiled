.class Lcom/android/nfc/handover/P2PHandoverClientSession$2;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 303
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    .line 304
    .local v2, "mWifiP2pDeviceList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 308
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "P2PHandoverClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device.deviceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "P2PHandoverClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemoteHandoverData.name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    if-nez v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iput-boolean v6, v3, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 317
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iput-boolean v6, v3, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 320
    :cond_2
    const-string v3, "P2PHandoverClientSession"

    const-string v4, "already connect to remote client"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v4, 0x4

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v3, v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 322
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectSuccess()V
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 336
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-void

    .line 325
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->startTransmitClient(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverClientSession;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    const-string v3, "P2PHandoverClientSession"

    const-string v4, "need to connect to target client"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 334
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # setter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3, v7}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$402(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 335
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    goto :goto_0
.end method
