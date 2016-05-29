.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartId:I

.field mSuccessSound:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 95
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 97
    iput v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 197
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_0
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    goto :goto_0
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "msgData"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Ignoring pairing request, existing handover in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 182
    :goto_0
    return v0

    .line 153
    :cond_0
    if-nez p1, :cond_1

    move v0, v7

    .line 154
    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 158
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v0, "headsetname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "name":Ljava/lang/String;
    const-string v0, "transporttype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 161
    .local v4, "transport":I
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 164
    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->resumePolling()V

    :cond_3
    move v0, v6

    .line 182
    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move v0, v7

    .line 178
    goto :goto_0
.end method

.method enableBluetooth()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 233
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 235
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    .line 237
    :cond_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 206
    .local v0, "transport":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 207
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 214
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 225
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 227
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 228
    monitor-exit v2

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 130
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 131
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSuccessSound:I

    .line 132
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 103
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    if-eqz v3, :cond_1

    .line 105
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 107
    monitor-exit v2

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-nez p1, :cond_2

    .line 113
    const-string v0, "PeripheralHandoverService"

    const-string v2, "Intent is null, can\'t do peripheral handover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 115
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method
