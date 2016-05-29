.class public Lcom/android/nfc/handover/BTHandover;
.super Lcom/android/nfc/handover/Handover;
.source "BTHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;
    }
.end annotation


# static fields
.field static final CONNECT_TIME_OUT:J = 0x3a98L

.field static final DBG:Z = true

.field static final FAILED_ACCEPT_TIME_OUT:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "BTHandover"


# instance fields
.field private connectTotalTimer:Ljava/util/Timer;

.field protected isPairing:Z

.field protected isSetScanMode:Z

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBound:Z

.field private mBroadcastRegister:Z

.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

.field final mLock:Ljava/lang/Object;

.field mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 67
    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    .line 429
    new-instance v1, Lcom/android/nfc/handover/BTHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BTHandover$1;-><init>(Lcom/android/nfc/handover/BTHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    const-string v1, "BTHandover"

    const-string v2, "Enter BtHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "BTHandover"

    const-string v2, "Leave BtHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/BTHandover;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/BTHandover;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->stopConnectTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/BTHandover;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/BTHandover;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BTHandover;->stopConnect(I)V

    return-void
.end method

.method private recoveryAfterFastConUsingNfc()V
    .locals 0

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->fastConComplete()V

    .line 556
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->clearNfcFastConWhiteList()V

    .line 557
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->stopConnectTimer()V

    .line 558
    return-void
.end method

.method private startConnectTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 502
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 504
    iput-object v2, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 506
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 507
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BTHandover;Lcom/android/nfc/handover/BTHandover$1;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 508
    return-void
.end method

.method private stopConnect(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 544
    const-string v0, "BTHandover"

    const-string v1, "stopBTConnect timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V

    .line 548
    :cond_0
    return-void
.end method

.method private stopConnectTimer()V
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 518
    const-string v0, "BTHandover"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method addNfcFastConWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, p1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method public btFastConBroadcastRegister()V
    .locals 6

    .prologue
    .line 155
    const-string v2, "BTHandover"

    const-string v3, "Enter btFastConBroadcastRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    if-nez v2, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "bluetooth.action.FOUND_BT_FOR_BEAM"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "filter_bt":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.BLUETOOTH_PRIVILEGED"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filter_bt":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "BTHandover"

    const-string v3, "leave btFastConBroadcastRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method clearNfcFastConWhiteList()V
    .locals 2

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method public createDataRecord()Landroid/nfc/NdefRecord;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public disableDevice()Z
    .locals 2

    .prologue
    .line 305
    const-string v0, "BTHandover"

    const-string v1, "disableDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 411
    const-string v2, "BTHandover"

    const-string v3, "Enter doFastConHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 415
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v2, :cond_1

    .line 416
    new-instance v1, Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/nfc/handover/BluetoothFastConHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    .line 417
    .local v1, "handover":Lcom/android/nfc/handover/BluetoothFastConHandover;
    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->start()V

    .line 420
    .end local v1    # "handover":Lcom/android/nfc/handover/BluetoothFastConHandover;
    :cond_1
    const-string v2, "BTHandover"

    const-string v3, "Leave doFastConHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 191
    const-string v3, "BTHandover"

    const-string v4, "Enter doHandoverUri"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    .line 227
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, p2}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 195
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v3, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 198
    :try_start_0
    iget-boolean v3, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v3, :cond_1

    .line 199
    const-string v3, "BTHandover"

    const-string v5, "Could not connect to handover service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v4

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 215
    :cond_1
    :try_start_1
    const-string v3, "BTHandover"

    const-string v5, "data.device."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    invoke-static {v3, v5, p1}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v2

    .line 219
    .local v2, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/beam/BeamSendService;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const-string v3, "isHwBeam"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 223
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_2
    const-string v3, "BTHandover"

    const-string v4, "Leave doHandoverUri"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method fastConComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    iget-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 568
    iput-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    if-eqz v0, :cond_1

    .line 571
    iput-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    .line 572
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    :cond_1
    return-void
.end method

.method public isDeviceEnabled()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHandoverSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    const-string v3, "BTHandover"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHandoverSupported bt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 322
    goto :goto_0

    :cond_1
    move v1, v2

    .line 323
    goto :goto_1
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v10, 0x17

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 344
    iput-boolean v9, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 345
    if-nez p1, :cond_0

    .line 347
    const-string v7, "BTHandover"

    const-string v8, "tryFastConHandoverRequest message is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-object v6

    .line 350
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_1

    .line 352
    const-string v7, "BTHandover"

    const-string v8, "tryFastConHandoverRequest bluetoothadapter is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_1
    const-string v7, "BTHandover"

    const-string v8, "Enter tryFastConHandoverRequest()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v1, 0x0

    .line 359
    .local v1, "bluetoothActivating":Z
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 360
    .local v5, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v2

    .line 365
    .end local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_2
    if-nez v2, :cond_4

    .line 366
    const-string v7, "BTHandover"

    const-string v8, "bluetoothHandoverData is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .restart local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 369
    .end local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->btFastConBroadcastRegister()V

    .line 370
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    monitor-enter v7

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->isDeviceEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 372
    iget-object v8, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v8

    if-nez v8, :cond_5

    .line 374
    const-string v8, "BTHandover"

    const-string v9, "bt enable fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v7

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 377
    :cond_5
    const/4 v1, 0x1

    .line 384
    :cond_6
    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    iget-object v6, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 391
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v7, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 392
    if-eq v1, v9, :cond_7

    .line 393
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BTHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V

    .line 398
    :cond_7
    const-string v6, "BTHandover"

    const-string v7, "Leave tryFastConHandoverRequest"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v6, Landroid/nfc/NdefMessage;

    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v8, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v8, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v7

    new-array v8, v9, [Landroid/nfc/NdefRecord;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v10}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_0

    .line 379
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v6

    if-eq v6, v10, :cond_6

    .line 380
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v8, 0x17

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 381
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public tryHandover(Landroid/nfc/NdefMessage;)Z
    .locals 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "BTHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryHandover(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 107
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_0

    .line 108
    iget-boolean v4, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-boolean v5, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v5, :cond_3

    .line 119
    const-string v3, "BTHandover"

    const-string v5, "Could not connect to handover service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v4

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 137
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "device"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v2, "headsetname"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "transporttype"

    iget v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 144
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 145
    goto :goto_0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 14
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 238
    if-nez p1, :cond_0

    const/4 v9, 0x0

    .line 297
    :goto_0
    return-object v9

    .line 239
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 241
    :cond_1
    const-string v9, "BTHandover"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tryHandoverRequest():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v7, v9, v10

    .line 244
    .local v7, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    sget-object v10, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 248
    :cond_3
    const/4 v2, 0x0

    .line 249
    .local v2, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v0, v3

    .line 250
    .local v6, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    sget-object v10, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 252
    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v2

    .line 256
    .end local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_4
    if-nez v2, :cond_6

    const/4 v9, 0x0

    goto :goto_0

    .line 249
    .restart local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 265
    .end local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v1, 0x1

    .line 266
    .local v1, "bluetoothActivating":Z
    :goto_2
    iget-object v10, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 267
    :try_start_0
    iget-boolean v9, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v9, :cond_8

    .line 268
    const-string v9, "BTHandover"

    const-string v11, "Could not connect to handover service"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v9, 0x0

    monitor-exit v10

    goto/16 :goto_0

    .line 292
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 265
    .end local v1    # "bluetoothActivating":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 286
    .restart local v1    # "bluetoothActivating":Z
    :cond_8
    :try_start_1
    iget-object v9, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v11, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v8

    .line 288
    .local v8, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v4, "intent":Landroid/content/Intent;
    sget-object v9, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    const-string v9, "isHwBeam"

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 292
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iget-object v9, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v10, v2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v9, v10}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 297
    new-instance v9, Landroid/nfc/NdefMessage;

    iget-object v10, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v11, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v11, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/nfc/NdefRecord;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v13}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10, v11}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_0
.end method
