.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/beam/SendUi$Callback;


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field final mSendUi:Lcom/android/nfc/beam/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 52
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 54
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 55
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 59
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 61
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Lcom/android/nfc/beam/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    goto :goto_0
.end method

.method private isFastConn()Z
    .locals 5

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "isFastConn"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 149
    .local v0, "isFastConn":Z
    return v0
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 214
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 215
    return-void
.end method

.method public onP2pHandoverBusy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 164
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 165
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 166
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 167
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 168
    return-void
.end method

.method public onP2pHandoverHeBeamConnnectting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 155
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 156
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v3}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 157
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 159
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 131
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 133
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->isFastConn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 141
    :goto_0
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 142
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 143
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onP2pInRange()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 77
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 80
    :cond_0
    return-void
.end method

.method public onP2pNfcTapRequested(IZ)V
    .locals 3
    .param p1, "fastConnType"    # I
    .param p2, "wifiConnWlan"    # Z

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 86
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 90
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 91
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/nfc/beam/SendUi;->showPreSend(ZIZ)V

    .line 95
    :cond_0
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 191
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v2}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 196
    :cond_1
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 197
    return-void
.end method

.method public onP2pReceiveComplete(Z)V
    .locals 4
    .param p1, "playSound"    # Z

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 173
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 184
    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 185
    return-void
.end method

.method public onP2pResumeSend()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 229
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 230
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 235
    :cond_0
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 236
    return-void
.end method

.method public onP2pSendComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 120
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 121
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v3}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 126
    return-void
.end method

.method public onP2pSendConfirmationRequested(IZ)V
    .locals 4
    .param p1, "fastConnType"    # I
    .param p2, "wifiConnWlan"    # Z

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 108
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 109
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/nfc/beam/SendUi;->showPreSend(ZIZ)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    goto :goto_0
.end method

.method public onP2pSendDebounce()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 220
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 221
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showSendHint()V

    .line 224
    :cond_0
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public onSendConfirmed()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 207
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 209
    return-void
.end method
