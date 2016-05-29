.class public Lcom/android/nfc/ndefpush/NdefPushServer;
.super Ljava/lang/Object;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;,
        Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;,
        Lcom/android/nfc/ndefpush/NdefPushServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MIU:I = 0xf8

.field static final SERVICE_NAME:Ljava/lang/String; = "com.android.npp"

.field private static final TAG:Ljava/lang/String; = "NdefPushServer"


# instance fields
.field final mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mSap:I

.field mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V
    .locals 1
    .param p1, "sap"    # I
    .param p2, "callback"    # Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 59
    iput p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    .line 60
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 61
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 211
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->start()V

    .line 213
    :cond_0
    monitor-exit p0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->shutdown()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 224
    :cond_0
    monitor-exit p0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
