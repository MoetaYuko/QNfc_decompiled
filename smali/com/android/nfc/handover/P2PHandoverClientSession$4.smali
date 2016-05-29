.class Lcom/android/nfc/handover/P2PHandoverClientSession$4;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


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
    .line 395
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 399
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "device run as a Go"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "device run as a station"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_0

    .line 409
    :cond_1
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "device do not connect any device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    goto :goto_0
.end method
