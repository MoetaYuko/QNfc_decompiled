.class Lcom/android/nfc/handover/P2PHandoverServerSession$3;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "disconnect current link"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # setter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v0, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 307
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->createConnectToClient()V
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "start transmitServer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceAlreadyConnectToClient()V
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    goto :goto_0
.end method
