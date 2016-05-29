.class public Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandoverPowerManager"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverDataParser;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/HandoverDataParser;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    .line 203
    return-void
.end method


# virtual methods
.method public declared-synchronized disableDevice()Z
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # getter for: Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;
    invoke-static {v0}, Lcom/android/nfc/handover/HandoverDataParser;->access$000(Lcom/android/nfc/handover/HandoverDataParser;)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->disableDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enableDevice()Z
    .locals 6

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # getter for: Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverDataParser;->access$000(Lcom/android/nfc/handover/HandoverDataParser;)Lcom/android/nfc/handover/Handover;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/handover/Handover;->enableDevice()Z

    move-result v0

    .line 211
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    monitor-exit p0

    return v0

    .line 210
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 239
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 266
    :goto_0
    return v3

    .line 242
    :pswitch_0
    const/4 v2, 0x0

    .line 243
    .local v2, "transferAlive":Z
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # getter for: Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/nfc/handover/HandoverDataParser;->access$100(Lcom/android/nfc/handover/HandoverDataParser;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v3, v3, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/beam/BeamTransferManager;

    .line 245
    .local v1, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v2, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    monitor-enter v4

    .line 252
    if-nez v2, :cond_3

    .line 253
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # invokes: Lcom/android/nfc/handover/HandoverDataParser;->getIsHwBeamFlag()Z
    invoke-static {v3}, Lcom/android/nfc/handover/HandoverDataParser;->access$200(Lcom/android/nfc/handover/HandoverDataParser;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # getter for: Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/nfc/handover/HandoverDataParser;->access$300(Lcom/android/nfc/handover/HandoverDataParser;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 258
    :goto_2
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    const/4 v3, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 256
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->disableDevice()Z

    goto :goto_2

    .line 263
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 260
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized isDeviceEnabled()Z
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverDataParser;

    # getter for: Lcom/android/nfc/handover/HandoverDataParser;->selectHandover:Lcom/android/nfc/handover/Handover;
    invoke-static {v0}, Lcom/android/nfc/handover/HandoverDataParser;->access$000(Lcom/android/nfc/handover/HandoverDataParser;)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->isDeviceEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetHandoverTimer()V
    .locals 4

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcHandover"

    const-string v1, "resetHandoverTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "NfcHandover"

    const-string v1, "handler message has contained MSG_HANDOVER_POWER_CHECK messge, we will remove it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopMonitoring()V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
