.class public Lcom/android/nfc/echoserver/EchoServer2$ServerThread;
.super Ljava/lang/Thread;
.source "EchoServer2.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

.field running:Z

.field private sapIn:I

.field private sapOut:I

.field serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private serviceNameIn:Ljava/lang/String;

.field private serviceNameOut:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer2;

.field private volatile timeout:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "serviceNameIn"    # Ljava/lang/String;
    .param p3, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0x12

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    .line 203
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 189
    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    .line 190
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 191
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 192
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    .line 204
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    .line 206
    iget-boolean v0, p1, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_0

    .line 207
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    .line 208
    iput v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    .line 209
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    iput v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    .line 213
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    .line 214
    iput-object p3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout()V

    return-void
.end method

.method private closeClientSockets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "closeClientSockets()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v0, :cond_2

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :goto_0
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EchoServer2"

    const-string v1, "clientSocketIn closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v0, :cond_4

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    :goto_1
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EchoServer2"

    const-string v1, "clientSocketOut closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 387
    :cond_4
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_1

    .line 371
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 7
    .param p1, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 220
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer2"

    const-string v5, "handleClient()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, "connectionBroken":Z
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 225
    .local v1, "dataUnit":[B
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 227
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v3

    .line 228
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "EchoServer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LLCP CO read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    if-gez v3, :cond_4

    .line 230
    const/4 v0, 0x1

    .line 241
    .end local v3    # "size":I
    :cond_3
    return-void

    .line 233
    .restart local v3    # "size":I
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v4, v1, v3}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->pushUnit([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v3    # "size":I
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 238
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "EchoServer2"

    const-string v5, "connection broken by IOException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private timeout()V
    .locals 2

    .prologue
    .line 415
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "LLCP timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    .line 417
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 418
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 245
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "about to create LLCP service socket, service name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_0 .. :try_end_0} :catch_5

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_2

    .line 254
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EchoServer2"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    :goto_1
    return-void

    .line 257
    :cond_2
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EchoServer2"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    if-eqz v0, :cond_19

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_6

    .line 262
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service socket about to accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 264
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service socket accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    .line 267
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;-><init>(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;Lcom/android/nfc/echoserver/EchoServer2$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 268
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "EchoServer2"

    const-string v1, "timeout timer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    const/4 v9, 0x0

    .line 272
    .local v9, "isOutboundConnectionEstablished":Z
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutboundConnectionEstablished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_7
    :goto_3
    if-nez v9, :cond_13

    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_13

    .line 276
    :try_start_2
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "EchoServer2"

    const-string v1, "Attempting to connect outbound connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/16 v4, 0x400

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 279
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-nez v0, :cond_a

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create socket."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    :catch_0
    move-exception v8

    .line 307
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v0, "EchoServer2"

    const-string v1, "IO error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :try_start_4
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "EchoServer2"

    const-string v1, "Retry connecting outbound connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-eqz v0, :cond_12

    const/16 v7, 0xbb8

    .line 311
    .local v7, "interval":I
    :goto_4
    int-to-long v0, v7

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 312
    .end local v7    # "interval":I
    :catch_1
    move-exception v0

    goto :goto_3

    .line 287
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_a
    :try_start_5
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpSnl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket starting snl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 300
    :goto_5
    const/4 v9, 0x1

    .line 301
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "EchoServer2"

    const-string v1, "client socket connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 303
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "EchoServer2"

    const-string v1, "cancelling timeout timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 335
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catch_2
    move-exception v6

    .line 336
    .local v6, "e":Lcom/android/nfc/LlcpException;
    :try_start_6
    const-string v0, "EchoServer2"

    const-string v1, "LLCP error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    const-string v0, "EchoServer2"

    const-string v1, "connection broken, closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_2

    .line 291
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    .restart local v9    # "isOutboundConnectionEstablished":Z
    :cond_e
    :try_start_7
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpName()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 292
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket connecting to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 343
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catchall_0
    move-exception v0

    const-string v1, "EchoServer2"

    const-string v2, "connection broken, closing client sockets"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    throw v0

    .line 296
    .restart local v9    # "isOutboundConnectionEstablished":Z
    :cond_10
    :try_start_8
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket connecting to sap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 310
    .restart local v8    # "ioe":Ljava/io/IOException;
    :cond_12
    const/16 v7, 0xfa

    goto/16 :goto_4

    .line 318
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_13
    if-eqz v9, :cond_17

    .line 319
    :try_start_9
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-eqz v0, :cond_16

    .line 320
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "about to accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 322
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_15
    const-string v0, "abcxyz"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->write([B)V

    .line 327
    :cond_16
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v0, :cond_17

    .line 328
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-direct {p0, v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    .line 332
    :cond_17
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_18

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    :cond_18
    const-string v0, "EchoServer2"

    const-string v1, "connection broken, closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_2

    .line 338
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catch_3
    move-exception v6

    .line 339
    .local v6, "e":Ljava/io/IOException;
    :try_start_a
    const-string v0, "EchoServer2"

    const-string v1, "IO error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 343
    const-string v0, "EchoServer2"

    const-string v1, "connection broken, closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_2

    .line 348
    .end local v6    # "e":Ljava/io/IOException;
    :cond_19
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: shutdown echomachine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 351
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1b
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    .line 354
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: closing server socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1c
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_1

    .line 357
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 361
    :goto_6
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: server socket closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1d
    iput-object v10, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    goto/16 :goto_1

    .line 358
    :catch_4
    move-exception v0

    goto :goto_6

    .line 250
    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 402
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    .line 404
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 412
    :cond_1
    return-void

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v1, :cond_0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 394
    const-string v1, "EchoServer2"

    const-string v2, "Send success!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EchoServer2"

    const-string v2, "Send failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
