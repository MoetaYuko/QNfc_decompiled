.class public Lcom/android/nfc/beam/BeamReceiveService;
.super Landroid/app/Service;
.source "BeamReceiveService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

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
    .line 21
    const-string v0, "BeamReceiveService"

    sput-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/android/nfc/beam/BeamReceiveService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamReceiveService$1;-><init>(Lcom/android/nfc/beam/BeamReceiveService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/beam/BeamReceiveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    return p1
.end method

.method private invokeCompleteCallback(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 142
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 56
    iput p3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    .line 59
    if-eqz p1, :cond_0

    const-string v2, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v1, :cond_2

    .line 61
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_0
    sget-boolean v2, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v3, "No transfer record provided. Stopping."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    move v2, v4

    .line 76
    :goto_0
    return v2

    .line 67
    .restart local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_2
    const-string v2, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    iput-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    .line 68
    const-string v2, "isHwBeam"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    .local v0, "isHwBeam":Z
    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    sget-boolean v2, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v4, "Ready for incoming Beam transfer"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v3

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    move v2, v4

    .line 76
    goto :goto_0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;ZZ)V
    .locals 4
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z
    .param p3, "isHwBeam"    # Z

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 157
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 159
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 162
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 165
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 170
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;Z)Z
    .locals 6
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p2, "isHwBeam"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_1

    move v4, v0

    .line 134
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    iget v1, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v1, v2, :cond_2

    move v4, v0

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 118
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queueing out transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZZ)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 125
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 126
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 130
    iget-object v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    goto :goto_0
.end method
