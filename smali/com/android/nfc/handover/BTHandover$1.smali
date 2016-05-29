.class Lcom/android/nfc/handover/BTHandover$1;
.super Landroid/content/BroadcastReceiver;
.source "BTHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BTHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BTHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BTHandover;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x17

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 435
    .local v2, "state":I
    const-string v3, "BTHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 450
    .end local v2    # "state":I
    :cond_0
    :goto_0
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 453
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "bluetooth.action.FOUND_BT_FOR_BEAM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 454
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, v4, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-boolean v3, v3, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    if-eqz v3, :cond_1

    .line 455
    const-string v3, "BTHandover"

    const-string v4, "handleFastConIntent  will cancelDiscovery"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 460
    :cond_1
    if-eqz v1, :cond_2

    .line 461
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    const-string v3, "BTHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_BOND_STATE_CHANGED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 486
    const-string v3, "BTHandover"

    const-string v4, "status undefined"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2
    :goto_1
    return-void

    .line 438
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "state":I
    :cond_3
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 440
    const-string v3, "BTHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFastConBroadCastReceiver/ STATE_ON/ getScanMode() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v5, v5, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 442
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 443
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z

    .line 446
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, v4, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/BTHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    # invokes: Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V
    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$000(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_0

    .line 467
    .end local v2    # "state":I
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_0
    const-string v3, "BTHandover"

    const-string v4, "BONDING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 469
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 471
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    # invokes: Lcom/android/nfc/handover/BTHandover;->stopConnectTimer()V
    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$100(Lcom/android/nfc/handover/BTHandover;)V

    .line 472
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    # invokes: Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V
    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$000(Lcom/android/nfc/handover/BTHandover;)V

    goto :goto_1

    .line 476
    :pswitch_1
    const-string v3, "BTHandover"

    const-string v4, "BONDED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    # invokes: Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V
    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$200(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_1

    .line 481
    :pswitch_2
    const-string v3, "BTHandover"

    const-string v4, "NONE, retry clear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    # invokes: Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V
    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$200(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
