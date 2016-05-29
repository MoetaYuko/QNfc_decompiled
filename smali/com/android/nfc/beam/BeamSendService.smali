.class public Lcom/android/nfc/beam/BeamSendService;
.super Landroid/app/Service;
.source "BeamSendService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "BeamSendService"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    .line 36
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/android/nfc/beam/BeamSendService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamSendService$1;-><init>(Lcom/android/nfc/beam/BeamSendService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    iget v1, v1, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    goto :goto_0
.end method

.method private invokeCompleteCallback(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 173
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 174
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 175
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z
    .locals 6
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p2, "isHwBeam"    # Z

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v4

    .line 142
    :cond_1
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_0

    .line 148
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZZ)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 149
    iget-object v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "remoteDevice != null updateNotification!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 154
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z
    .locals 6
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p2, "isHwBeam"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/beam/BeamSendService;->createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v2, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v2, p0, v3}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 113
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v3}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v3, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    :cond_0
    :goto_0
    move v0, v1

    .line 134
    :cond_1
    :goto_1
    return v0

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    goto :goto_1

    .line 126
    :cond_3
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 127
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing out transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 83
    iput p3, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    .line 86
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v1, :cond_2

    .line 88
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_0
    sget-boolean v2, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v4, "No transfer record provided. Stopping."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    move v2, v3

    .line 105
    :goto_0
    return v2

    .line 94
    .restart local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_2
    const-string v2, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    iput-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    .line 95
    const-string v2, "isHwBeam"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, "isHwBeam":Z
    sget-boolean v2, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v4, "transferRecord is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    sget-boolean v2, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v3, "Starting outgoing Beam transfer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 103
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    move v2, v3

    .line 105
    goto :goto_0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;ZZ)V
    .locals 4
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z
    .param p3, "isHwBeam"    # Z

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer failed, final state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    if-eqz v1, :cond_1

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 192
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 195
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 198
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget v1, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 203
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
