.class Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


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
    .line 587
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 590
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_2

    .line 592
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.groupFormed && info.isGroupOwner getP2PConnectState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->access$2000(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;->serverCreateSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->access$2000(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;->serverConnetSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 598
    :cond_2
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "device run as a station"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x5

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    goto :goto_0
.end method
