.class public Lcom/android/nfc/handover/BluetoothFastConHandover;
.super Ljava/lang/Object;
.source "BluetoothFastConHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;
    }
.end annotation


# static fields
.field static final CONNECT_TIME_OUT:J = 0x3a98L

.field static final DBG:Z = true

.field static final FAILED_CONNECT_TIME_OUT:I = 0x7d0

.field static final MSG_FASTCON_REPEAT_SEND:I = 0x7d1

.field static final MSG_FASTCON_SEND:I = 0x7d0

.field static final REMOTE_BT_FASTCON_ENABLE_DELAY_MS:I = 0xbb8

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoohFastConHandover"


# instance fields
.field private connectTotalTimer:Ljava/util/Timer;

.field private isPairing:Z

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastRegister:Z

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field final mHandler:Landroid/os/Handler;

.field mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

.field final mRemoteActivating:Z

.field mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "manager"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p4, "remoteActivating"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 221
    new-instance v0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothFastConHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Lcom/android/nfc/handover/BluetoothFastConHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothFastConHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    iput-boolean p4, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mRemoteActivating:Z

    .line 90
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/BluetoothFastConHandover;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/BluetoothFastConHandover;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->stopConnect(I)V

    return-void
.end method

.method private recoveryAfterFastConUsingNfc()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->fastConComplete()V

    .line 467
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->clearNfcFastConWhiteList()V

    .line 468
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->stopConnectTimer()V

    .line 469
    return-void
.end method

.method private startConnectTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 403
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 405
    iput-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 407
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 408
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;Lcom/android/nfc/handover/BluetoothFastConHandover$1;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 409
    return-void
.end method

.method private stopConnect(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/16 v2, 0x7d0

    .line 453
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "stopBTConnect timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-ne p1, v2, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    .line 459
    :cond_0
    return-void
.end method

.method private stopConnectTimer()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 419
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method addNfcFastConWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, p1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method public btFastConBroadcastRegister()V
    .locals 6

    .prologue
    .line 138
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "Enter btFastConBroadcastRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "bluetooth.action.FOUND_BT_FOR_BEAM"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "filter_bt":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.BLUETOOTH_PRIVILEGED"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "leave btFastConBroadcastRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public btStateBroadcastRegister()V
    .locals 3

    .prologue
    .line 128
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "Enter btStateBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "leave btStateBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method clearNfcFastConWhiteList()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method fastConComplete()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    .line 115
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    :cond_0
    return-void
.end method

.method handleFastConIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BluetoohFastConHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFastConIntent  action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 267
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 269
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "receive device ==null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const-string v2, "BluetoohFastConHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BOND_STATE_CHANGED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 296
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "stauts undefined"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    :goto_1
    const-string v2, "bluetooth.action.FOUND_BT_FOR_BEAM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "handleFastConIntent  will cancelDiscovery and createBond"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 306
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConnectIntent()V

    goto :goto_0

    .line 279
    :pswitch_0
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "BONDING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->startConnectTimer()V

    goto :goto_1

    .line 284
    :pswitch_1
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "BONDED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 286
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_1

    .line 290
    :pswitch_2
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "NONE, retry clear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 292
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 100
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "sendFastContentIntent for fast connection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConnectIntent()V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 349
    .local v2, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 350
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 351
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 352
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const-string v3, "BluetoohFastConHandover"

    const-string v4, "already connceted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 356
    const/4 v3, 0x1

    .line 361
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method sendFastConResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 337
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 338
    return-void
.end method

.method sendFastConnectIntent()V
    .locals 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->isConnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "already connected sendFastConnectIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "begin connect sendFastConnectIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 215
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 217
    .local v0, "mBondStatus":Ljava/lang/Boolean;
    const-string v1, "BluetoohFastConHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBond reuslt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    if-nez v0, :cond_0

    .line 155
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "broadcast register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->btFastConBroadcastRegister()V

    .line 158
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->btStateBroadcastRegister()V

    .line 161
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "BluetoohFastConHandover"

    const-string v1, " fast connection bt enable success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "fast connection bt enable failture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->fastConComplete()V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "already connected start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "startDiscovery begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0
.end method
