.class public Lcom/android/nfc/echoserver/EchoServer;
.super Ljava/lang/Object;
.source "EchoServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;,
        Lcom/android/nfc/echoserver/EchoServer$ServerThread;,
        Lcom/android/nfc/echoserver/EchoServer$EchoMachine;,
        Lcom/android/nfc/echoserver/EchoServer$WriteCallback;
    }
.end annotation


# static fields
.field static final CONNECTIONLESS_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:cl-echo"

.field static final CONNECTION_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:co-echo"

.field static DBG:Z = false

.field static final DEFAULT_CL_SAP:I = 0x12

.field static final DEFAULT_CO_SAP:I = 0x11

.field static final MIU:I = 0x80

.field static final TAG:Ljava/lang/String; = "EchoServer"


# instance fields
.field mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

.field mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    .line 83
    return-void
.end method


# virtual methods
.method public onLlcpActivated()V
    .locals 1

    .prologue
    .line 355
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;-><init>(Lcom/android/nfc/echoserver/EchoServer;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    .line 361
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->start()V

    .line 363
    :cond_0
    monitor-exit p0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLlcpDeactivated()V
    .locals 1

    .prologue
    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->shutdown()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;

    .line 372
    :cond_0
    monitor-exit p0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;-><init>(Lcom/android/nfc/echoserver/EchoServer;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    .line 382
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->start()V

    .line 384
    :cond_0
    monitor-exit p0

    .line 386
    return-void

    .line 384
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
    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->shutdown()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer;->mServerThread:Lcom/android/nfc/echoserver/EchoServer$ServerThread;

    .line 394
    :cond_0
    monitor-exit p0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
