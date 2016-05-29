.class public Lcom/android/nfc/beam/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z = false

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x1388

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iput-object p3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    .line 65
    iput-boolean p4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 70
    return-void
.end method


# virtual methods
.method complete()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 95
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendIntent()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.bluetooth"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v6, v5}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 108
    .local v4, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    const-string v6, "com.android.bluetooth"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "BluetoothOppHandover"

    const-string v6, "Failed to transfer permission to Bluetooth process."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 115
    const-string v5, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v6, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    :goto_1
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->complete()V

    .line 126
    return-void

    .line 118
    :cond_1
    const-string v5, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public start()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    .line 77
    iget-boolean v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v1, :cond_1

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 79
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_0
    return-void

    .line 85
    .restart local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_0

    .line 89
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_0
.end method
