.class Lcom/android/nfc/handover/P2PHandoverClientSession$3;
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
    .line 339
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v5, 0x1

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "connectToServer":Z
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v0, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 344
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v2, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 345
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const/4 v1, 0x1

    .line 355
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 357
    const-string v3, "P2PHandoverClientSession"

    const-string v4, "disconnect current link"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v5, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;

    invoke-direct {v5, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession$3;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 392
    :goto_1
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    :cond_2
    const-string v3, "P2PHandoverClientSession"

    const-string v4, "already connect to remote server"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    if-nez v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 383
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 385
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v4, 0x4

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v3, v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 386
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectSuccess()V
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    goto :goto_1

    .line 389
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->startTransmitClient(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverClientSession;Ljava/lang/String;)V

    goto :goto_1
.end method
