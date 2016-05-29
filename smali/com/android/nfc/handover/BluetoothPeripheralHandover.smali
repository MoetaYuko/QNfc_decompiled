.class public Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "BluetoothPeripheralHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final DBG:Z = false

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "BluetoothPeripheralHandover"

.field static final TIMEOUT_MS:I = 0x7530


# instance fields
.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field mHidResult:I

.field mInput:Landroid/bluetooth/BluetoothInputDevice;

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field final mProvisioning:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mState:I

.field final mTransport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    .line 526
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    .line 546
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 111
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    .line 114
    iput p4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 115
    iput-object p5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 118
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    .line 122
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 123
    return-void

    :cond_0
    move v1, v2

    .line 119
    goto :goto_0
.end method

.method static checkMainThread()V
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    return-void
.end method

.method private getToastString(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f08000d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method complete(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    const/4 v2, 0x1

    .line 474
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 475
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 489
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 492
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 494
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getProfileProxys()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v4, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 303
    goto :goto_0
.end method

.method handleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    const/4 v6, 0x2

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 423
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const-string v4, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 427
    :cond_2
    const-string v4, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 428
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 429
    :cond_3
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 431
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 433
    .local v1, "bond":I
    const/16 v4, 0xc

    if-ne v1, v4, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 435
    :cond_4
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 436
    const v4, 0x7f080014

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 437
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 439
    .end local v1    # "bond":I
    :cond_5
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v9, :cond_6

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v4, v10, :cond_8

    .line 441
    :cond_6
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 442
    .local v3, "state":I
    if-ne v3, v6, :cond_7

    .line 443
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 444
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 445
    :cond_7
    if-nez v3, :cond_0

    .line 446
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 447
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 449
    .end local v3    # "state":I
    :cond_8
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v9, :cond_9

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v4, v10, :cond_b

    .line 451
    :cond_9
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 452
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_a

    .line 453
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 454
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 455
    :cond_a
    if-nez v3, :cond_0

    .line 456
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 457
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 459
    .end local v3    # "state":I
    :cond_b
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v9, :cond_c

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v4, v10, :cond_0

    .line 461
    :cond_c
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 462
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_d

    .line 463
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 464
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 465
    :cond_d
    if-nez v3, :cond_0

    .line 466
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 467
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextStep()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepDisconnect()V

    goto :goto_0
.end method

.method nextStepConnect()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 307
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 312
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 316
    :cond_1
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v4, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 319
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 320
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 326
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v6, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startBonding()V

    goto :goto_0

    .line 334
    :cond_3
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 335
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v4, :cond_6

    .line 337
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 340
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 341
    const v0, 0x7f08000e

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 342
    monitor-exit v1

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 365
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v4, :cond_b

    .line 369
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-eqz v0, :cond_0

    .line 371
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v3, :cond_a

    .line 372
    const v0, 0x7f08000f

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 374
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 347
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 350
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 356
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 360
    :goto_2
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_5

    .line 361
    :cond_7
    const v0, 0x7f08000e

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 362
    monitor-exit v1

    goto/16 :goto_0

    .line 352
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 358
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 376
    :cond_a
    const v0, 0x7f080010

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 380
    :cond_b
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v0, :cond_0

    .line 384
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v3, :cond_d

    .line 386
    :cond_c
    const v0, 0x7f08000f

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 391
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 393
    :cond_d
    const v0, 0x7f080010

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .locals 6

    .prologue
    const v5, 0x7f080012

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 222
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 224
    :sswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 225
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v3, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 230
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 231
    const v0, 0x7f080011

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 232
    monitor-exit v1

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 256
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :sswitch_1
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v3, :cond_7

    .line 260
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v3, :cond_0

    .line 261
    invoke-direct {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 237
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 240
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 247
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 251
    :goto_2
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_2

    .line 252
    :cond_4
    const v0, 0x7f080011

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 253
    monitor-exit v1

    goto :goto_0

    .line 242
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 249
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 267
    :cond_7
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v0, :cond_0

    .line 271
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v3, :cond_8

    .line 272
    invoke-direct {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 274
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method nextStepInit()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 178
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_2

    .line 181
    :cond_1
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 182
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 189
    :cond_2
    :pswitch_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 191
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v2, :cond_4

    .line 193
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 210
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 197
    :cond_3
    :try_start_1
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 201
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    :cond_5
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto :goto_1

    .line 206
    :cond_6
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    packed-switch p1, :pswitch_data_0

    .line 586
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 587
    return-void

    .line 564
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 565
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 570
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_2
    :try_start_1
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 571
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 576
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_3
    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 577
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 592
    return-void
.end method

.method requestPairConfirmation()V
    .locals 3

    .prologue
    .line 519
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public start()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 135
    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v2

    .line 158
    :goto_0
    return v1

    .line 141
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 156
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0
.end method

.method startBonding()V
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 407
    const v0, 0x7f080013

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const v0, 0x7f080014

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 417
    :cond_1
    return-void
.end method

.method startTheMusic()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x0

    .line 507
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 508
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 509
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 510
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 511
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 512
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 516
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 514
    :cond_0
    const-string v2, "BluetoothPeripheralHandover"

    const-string v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method toast(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 499
    .local v0, "themeId":I
    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 504
    return-void
.end method
