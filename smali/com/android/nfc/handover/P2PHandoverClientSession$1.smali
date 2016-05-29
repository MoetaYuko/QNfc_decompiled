.class Lcom/android/nfc/handover/P2PHandoverClientSession$1;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;


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
    .line 164
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientConnectSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 195
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "ClientConnectSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x4

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 197
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 200
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$702(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectSuccess()V
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    # setter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1102(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;

    .line 209
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;
    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1200(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectFailed()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x3

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnect(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 170
    return-void
.end method

.method public searchSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v2, "P2PHandoverClientSession"

    const-string v3, "SearchSuccess "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 178
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 179
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 180
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 181
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v3, 0x3

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V
    invoke-static {v2, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->beam_connect(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v1}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method
