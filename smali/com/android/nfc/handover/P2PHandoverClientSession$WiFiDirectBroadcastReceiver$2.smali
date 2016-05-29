.class Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


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
    .line 764
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v2, 0x4

    .line 767
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    .line 769
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "client run as a go, but it is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 771
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnect(I)V
    invoke-static {v0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;->access$1900(Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;->clientConnectSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0
.end method
