.class Lcom/android/nfc/handover/P2PHandoverServerSession$1;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;


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
    .line 159
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFailed()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x1

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 176
    return-void
.end method

.method public serverConnetSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 182
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "go connected "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v2, 0x5

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V
    invoke-static {v1, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 184
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$700(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverServerSession;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->removeP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # setter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1102(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectSuccess()V
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1200(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 201
    :cond_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method public serverCreateSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 164
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "ServerCreateSuccess "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x4

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 166
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    # setter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$302(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;

    .line 168
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
