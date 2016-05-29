.class public Lcom/android/nfc/handover/TransmitServer;
.super Ljava/lang/Object;
.source "TransmitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TransmitServer"

.field private static final startServerMaxTime:I = 0x5


# instance fields
.field private volatile isHttpServerStart:Z

.field private mHttpServer:Lcom/android/nfc/http/HTTPServer;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitManager;)V
    .locals 0
    .param p1, "transmitManager"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/handover/TransmitManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/http/HTTPServer;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/TransmitServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/handover/TransmitServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    return p1
.end method


# virtual methods
.method public buildHttpServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "serverIp"    # Ljava/lang/String;

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/TransmitServer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/android/nfc/http/HTTPServer;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-direct {v1, v2}, Lcom/android/nfc/http/HTTPServer;-><init>(Lcom/android/nfc/handover/TransmitManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    .line 104
    const-string v1, "TransmitServer"

    const-string v2, "build a new HttpServer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;-><init>(Lcom/android/nfc/handover/TransmitServer;Ljava/lang/String;)V

    .line 106
    .local v0, "mHttpServerThread":Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    .end local v0    # "mHttpServerThread":Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    :goto_0
    monitor-exit p0

    .line 112
    return-void

    .line 109
    :cond_0
    const-string v1, "TransmitServer"

    const-string v2, "HttpServer has open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeHttpServer()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    .line 135
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPServer;->close()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPServer;->isOpened()Z

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_0
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is not open,we should open HttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method
