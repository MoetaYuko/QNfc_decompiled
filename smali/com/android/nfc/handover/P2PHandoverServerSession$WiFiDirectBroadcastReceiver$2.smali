.class Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


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
    .line 555
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1800(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 560
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup Failure create again createGoTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1800(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->access$1900(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # operator++ for: Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1808(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup Failure reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->access$2000(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;->connectFailed()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 573
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "createGroup Success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v2, 0x3

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V
    invoke-static {v1, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v3, v3, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverServerSession;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->addP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, v1, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;->this$1:Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 584
    :cond_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method
