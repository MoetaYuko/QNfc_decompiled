.class public Lcom/android/nfc/http/HTTPServer;
.super Ljava/lang/Object;
.source "HTTPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0x13880

.field public static final NAME:Ljava/lang/String; = "CyberLinkJava"

.field public static final TAG:Ljava/lang/String; = "HTTPServer"

.field public static final VERSION:Ljava/lang/String; = "1.8"


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private httpServerThread:Ljava/lang/Thread;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private serverSock:Ljava/net/ServerSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 91
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 92
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 98
    const v0, 0x13880

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I

    .line 329
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 85
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/TransmitManager;)V
    .locals 2
    .param p1, "transmitManager"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 91
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 92
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 98
    const v0, 0x13880

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I

    .line 329
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 79
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 80
    iput-object p1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 81
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "osVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UPnP/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CyberLinkJava"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private httpGetRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V
    .locals 3
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "HTTPServer"

    const-string v2, "httpGetRequestRecieved uri "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPServer;->contentExportRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V

    .line 314
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 236
    :goto_0
    return-object v2

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 218
    .local v2, "sock":Ljava/net/Socket;
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 219
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->getTimeout()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/net/SocketException;
    if-eqz v2, :cond_1

    .line 225
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    move-object v2, v3

    .line 232
    goto :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 229
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 236
    goto :goto_0
.end method

.method public addRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/nfc/http/HTTPRequestListener;

    .prologue
    .line 116
    return-void
.end method

.method public close()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->stop()Z

    .line 197
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 208
    :goto_0
    return v1

    .line 199
    :cond_0
    const-string v3, "HTTPServer"

    const-string v4, " http server close"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 202
    const-string v3, "HTTPServer"

    const-string v4, "http server ready close"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 205
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 208
    goto :goto_0
.end method

.method public contentExportRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V
    .locals 13
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "uri":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 252
    .local v7, "mUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v10}, Lcom/android/nfc/handover/TransmitManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/nfc/handover/HandoverDataParser;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "filePath":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 258
    :cond_0
    const-string v10, "HTTPServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v8, "sendFile":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 262
    .local v2, "contentLen":J
    const/4 v0, 0x0

    .line 263
    .local v0, "contentIn":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 267
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .local v1, "contentIn":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v10

    if-nez v10, :cond_4

    .line 274
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_4

    .line 275
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->returnBadRequest()Z

    .line 276
    const-string v10, "HTTPServer"

    const-string v11, "contentExportRequestRecieved contentLen <= 0 || contentIn == null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    if-eqz v1, :cond_1

    .line 280
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 299
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move-object v0, v1

    .line 307
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return-void

    .line 281
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 294
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v0, v1

    .line 295
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 298
    if-eqz v0, :cond_3

    .line 299
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 301
    :catch_2
    move-exception v4

    .line 303
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 301
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 303
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_7
    new-instance v6, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v6}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 289
    .local v6, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    const/16 v10, 0xc8

    invoke-virtual {v6, v10}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 290
    invoke-virtual {v6, v2, v3}, Lcom/android/nfc/http/HTTPResponse;->setContentLength(J)V

    .line 291
    invoke-virtual {v6, v1}, Lcom/android/nfc/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 292
    invoke-virtual {p1, v6}, Lcom/android/nfc/http/HTTPRequest;->post(Lcom/android/nfc/http/HTTPResponse;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 298
    if-eqz v1, :cond_5

    .line 299
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    move-object v0, v1

    .line 304
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_2

    .line 301
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    .line 303
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 305
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_2

    .line 297
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "httpRes":Lcom/android/nfc/http/HTTPResponse;
    :catchall_0
    move-exception v10

    .line 298
    :goto_4
    if-eqz v0, :cond_6

    .line 299
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 304
    :cond_6
    :goto_5
    throw v10

    .line 301
    :catch_5
    move-exception v4

    .line 303
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 297
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_4

    .line 294
    :catch_6
    move-exception v4

    goto :goto_3
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    return v0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    .line 162
    const-string v3, "HTTPServer"

    const-string v4, "http open staring"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "HTTPServer"

    const-string v4, "serverSock has open"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return v2

    .line 169
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 170
    iput p2, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 172
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 173
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 174
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    iget v6, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const-string v3, "HTTPServer"

    const-string v4, " open seccess"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HTTPServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open String addr IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    :try_start_1
    const-string v2, "HTTPServer"

    const-string v3, "serverSock has IOException and not null,we should close it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 189
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    :catch_1
    move-exception v1

    .line 184
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 158
    :goto_0
    return v1

    .line 150
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 151
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const-string v2, "HTTPServer"

    const-string v3, " open seccess"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HTTPServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open String addr IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public performRequestListener(Lcom/android/nfc/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->isGetRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPServer;->httpGetRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method public removeRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/nfc/http/HTTPRequestListener;

    .prologue
    .line 120
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    const-string v4, "HTTPServer"

    const-string v5, "Http Server already opened"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v4, "HTTPServer"

    const-string v5, "Http Server running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 341
    .local v3, "thisThread":Ljava/lang/Thread;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-ne v4, v3, :cond_1

    .line 342
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 350
    .local v2, "sock":Ljava/net/Socket;
    new-instance v1, Lcom/android/nfc/http/HTTPServerThread;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/http/HTTPServerThread;-><init>(Lcom/android/nfc/http/HTTPServer;Ljava/net/Socket;)V

    .line 351
    .local v1, "httpServThread":Lcom/android/nfc/http/HTTPServerThread;
    invoke-virtual {v1}, Lcom/android/nfc/http/HTTPServerThread;->start()V

    goto :goto_1

    .line 346
    .end local v1    # "httpServThread":Lcom/android/nfc/http/HTTPServerThread;
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "HTTPServer"

    const-string v5, "Http Server over"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "name":Ljava/lang/StringBuffer;
    const-string v1, "HTTPServer"

    const-string v2, "Http Server satrt "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 361
    iget-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 362
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 367
    const/4 v0, 0x1

    return v0
.end method
