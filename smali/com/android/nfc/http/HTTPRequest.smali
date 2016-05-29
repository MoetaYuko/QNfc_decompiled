.class public Lcom/android/nfc/http/HTTPRequest;
.super Lcom/android/nfc/http/HTTPPacket;
.source "HTTPRequest.java"


# instance fields
.field private httpSocket:Lcom/android/nfc/http/HTTPSocket;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPPacket;-><init>()V

    .line 99
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 227
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 363
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 83
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/http/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPRequest;->setSocket(Lcom/android/nfc/http/HTTPSocket;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 227
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 363
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 88
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->hasFirstLine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/nfc/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lcom/android/nfc/http/ParameterList;
    .locals 10

    .prologue
    .line 169
    new-instance v5, Lcom/android/nfc/http/ParameterList;

    invoke-direct {v5}, Lcom/android/nfc/http/ParameterList;-><init>()V

    .line 170
    .local v5, "paramList":Lcom/android/nfc/http/ParameterList;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "uri":Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 172
    .local v4, "paramIdx":I
    if-gez v4, :cond_1

    .line 183
    :cond_0
    return-object v5

    .line 174
    :cond_1
    :goto_0
    if-lez v4, :cond_0

    .line 175
    const/16 v8, 0x3d

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 176
    .local v0, "eqIdx":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "name":Ljava/lang/String;
    const/16 v8, 0x26

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 178
    .local v2, "nextParamIdx":I
    add-int/lit8 v9, v0, 0x1

    if-lez v2, :cond_2

    move v8, v2

    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "value":Ljava/lang/String;
    new-instance v3, Lcom/android/nfc/http/Parameter;

    invoke-direct {v3, v1, v7}, Lcom/android/nfc/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v3, "param":Lcom/android/nfc/http/Parameter;
    invoke-virtual {v5, v3}, Lcom/android/nfc/http/ParameterList;->add(Ljava/lang/Object;)Z

    .line 181
    move v4, v2

    .line 182
    goto :goto_0

    .line 178
    .end local v3    # "param":Lcom/android/nfc/http/Parameter;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getParameterList()Lcom/android/nfc/http/ParameterList;

    move-result-object v0

    .line 188
    .local v0, "paramList":Lcom/android/nfc/http/ParameterList;
    invoke-virtual {v0, p1}, Lcom/android/nfc/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lcom/android/nfc/http/HTTPSocket;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 117
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .locals 1

    .prologue
    .line 125
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->isCloseConnection()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v2

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->isKeepAliveConnection()Z

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 304
    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "httpVer":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "isHTTP10":Z
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 308
    const/4 v1, 0x1

    .line 312
    :goto_1
    if-eq v1, v3, :cond_0

    move v2, v3

    .line 314
    goto :goto_0

    .line 310
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "headerMethod":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isNotifyRequest()Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 121
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 196
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 129
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 133
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 257
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;I)Lcom/android/nfc/http/HTTPResponse;
    .locals 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 369
    new-instance v6, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v6}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 370
    .local v6, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    invoke-virtual/range {p0 .. p2}, Lcom/android/nfc/http/HTTPRequest;->setHost(Ljava/lang/String;I)V

    .line 373
    const-string v13, "close"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/http/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v9

    .line 377
    .local v9, "isHeaderRequest":Z
    const/4 v10, 0x0

    .line 378
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 380
    .local v7, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 383
    .local v11, "pout":Ljava/io/PrintStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v13, :cond_0

    .line 384
    new-instance v13, Ljava/net/Socket;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v13, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    const v14, 0x13880

    invoke-virtual {v13, v14}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 390
    new-instance v12, Ljava/io/PrintStream;

    const/4 v13, 0x0

    const-string v14, "US_ASCII"

    invoke-direct {v12, v10, v13, v14}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v11    # "pout":Ljava/io/PrintStream;
    .local v12, "pout":Ljava/io/PrintStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 393
    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->isChunked()Z

    move-result v8

    .line 397
    .local v8, "isChunkedRequest":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 399
    .local v4, "contentLength":I
    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 402
    :cond_1
    if-lez v4, :cond_3

    .line 403
    const/4 v13, 0x1

    if-ne v8, v13, :cond_2

    .line 406
    int-to-long v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 408
    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 410
    .end local v2    # "chunSizeBuf":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 411
    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 412
    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 415
    :cond_3
    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 416
    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 417
    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    :cond_4
    invoke-virtual {v12}, Ljava/io/PrintStream;->flush()V

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 423
    invoke-virtual {v6, v7, v9}, Lcom/android/nfc/http/HTTPResponse;->set(Ljava/io/InputStream;Z)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    if-eqz v7, :cond_5

    .line 436
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    :cond_5
    :goto_0
    if-eqz v10, :cond_6

    .line 444
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 451
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v13, :cond_7

    .line 453
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 458
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_7
    if-eqz v12, :cond_13

    .line 463
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    move-object v11, v12

    .line 471
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "contentLength":I
    .end local v8    # "isChunkedRequest":Z
    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    :cond_8
    :goto_3
    return-object v6

    .line 437
    .end local v11    # "pout":Ljava/io/PrintStream;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "contentLength":I
    .restart local v8    # "isChunkedRequest":Z
    .restart local v12    # "pout":Ljava/io/PrintStream;
    :catch_0
    move-exception v5

    .line 439
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 456
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 424
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "contentLength":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "isChunkedRequest":Z
    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    :catch_3
    move-exception v5

    .line 425
    .local v5, "e":Ljava/net/SocketException;
    :goto_4
    const/16 v13, 0x1f4

    :try_start_5
    invoke-virtual {v6, v13}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 434
    if-eqz v7, :cond_9

    .line 436
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 442
    .end local v5    # "e":Ljava/net/SocketException;
    :cond_9
    :goto_5
    if-eqz v10, :cond_a

    .line 444
    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 451
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v13, :cond_b

    .line 453
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 458
    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_b
    if-eqz v11, :cond_8

    .line 463
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .line 437
    .restart local v5    # "e":Ljava/net/SocketException;
    :catch_4
    move-exception v5

    .line 439
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 445
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 456
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 426
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 429
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_8
    const/16 v13, 0x1f4

    :try_start_9
    invoke-virtual {v6, v13}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 434
    if-eqz v7, :cond_c

    .line 436
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 442
    :cond_c
    :goto_9
    if-eqz v10, :cond_d

    .line 444
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 451
    :cond_d
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v13, :cond_e

    .line 453
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 458
    :goto_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_e
    if-eqz v11, :cond_8

    .line 463
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .line 437
    :catch_8
    move-exception v5

    .line 439
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 445
    :catch_9
    move-exception v5

    .line 447
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 454
    :catch_a
    move-exception v5

    .line 456
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 434
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_c
    if-eqz v7, :cond_f

    .line 436
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 442
    :cond_f
    :goto_d
    if-eqz v10, :cond_10

    .line 444
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 451
    :cond_10
    :goto_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v14, :cond_11

    .line 453
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 458
    :goto_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_11
    if-eqz v11, :cond_12

    .line 463
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    :cond_12
    throw v13

    .line 437
    :catch_b
    move-exception v5

    .line 439
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 445
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 456
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 434
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "pout":Ljava/io/PrintStream;
    .restart local v12    # "pout":Ljava/io/PrintStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    goto :goto_c

    .line 426
    .end local v11    # "pout":Ljava/io/PrintStream;
    .restart local v12    # "pout":Ljava/io/PrintStream;
    :catch_e
    move-exception v5

    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    goto :goto_8

    .line 424
    .end local v11    # "pout":Ljava/io/PrintStream;
    .restart local v12    # "pout":Ljava/io/PrintStream;
    :catch_f
    move-exception v5

    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    goto/16 :goto_4

    .end local v11    # "pout":Ljava/io/PrintStream;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "contentLength":I
    .restart local v8    # "isChunkedRequest":Z
    .restart local v12    # "pout":Ljava/io/PrintStream;
    :cond_13
    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintStream;
    .restart local v11    # "pout":Ljava/io/PrintStream;
    goto/16 :goto_3
.end method

.method public post(Lcom/android/nfc/http/HTTPResponse;)Z
    .locals 18
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v10

    .line 331
    .local v10, "httpSock":Lcom/android/nfc/http/HTTPSocket;
    const-wide/16 v12, 0x0

    .line 332
    .local v12, "offset":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPResponse;->getContentLength()J

    move-result-wide v8

    .line 333
    .local v8, "length":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->hasContentRange()Z

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    const-wide/16 v14, 0x0

    cmp-long v3, v8, v14

    if-eqz v3, :cond_5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getContentRangeFirstPosition()J

    move-result-wide v4

    .line 335
    .local v4, "firstPos":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getContentRangeLastPosition()J

    move-result-wide v6

    .line 337
    .local v6, "lastPos":J
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-gtz v3, :cond_0

    .line 338
    const-wide/16 v14, 0x1

    sub-long v6, v8, v14

    .line 339
    :cond_0
    const-string v3, "Range"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/http/HTTPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "rangeLine":Ljava/lang/String;
    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const/16 v3, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v3

    .line 356
    .end local v2    # "rangeLine":Ljava/lang/String;
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :goto_0
    return v3

    .line 344
    .restart local v2    # "rangeLine":Ljava/lang/String;
    .restart local v4    # "firstPos":J
    .restart local v6    # "lastPos":J
    :cond_1
    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 345
    const/16 v3, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v3

    goto :goto_0

    .line 347
    :cond_2
    cmp-long v3, v4, v8

    if-gtz v3, :cond_3

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 348
    :cond_3
    const/16 v3, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v3

    goto :goto_0

    :cond_4
    move-object/from16 v3, p1

    .line 350
    invoke-virtual/range {v3 .. v9}, Lcom/android/nfc/http/HTTPResponse;->setContentRange(JJJ)V

    .line 351
    const/16 v3, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 353
    move-wide v12, v4

    .line 354
    sub-long v14, v6, v4

    const-wide/16 v16, 0x1

    add-long v8, v14, v16

    .line 356
    .end local v2    # "rangeLine":Ljava/lang/String;
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v16

    move-object/from16 v11, p1

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;JJZ)Z

    move-result v3

    goto :goto_0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 523
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public read()Z
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->read(Lcom/android/nfc/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .locals 1

    .prologue
    .line 505
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .locals 1

    .prologue
    .line 501
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 494
    new-instance v0, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v0}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 495
    .local v0, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 496
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/http/HTTPResponse;->setContentLength(J)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->post(Lcom/android/nfc/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lcom/android/nfc/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPRequest;->set(Lcom/android/nfc/http/HTTPPacket;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->setSocket(Lcom/android/nfc/http/HTTPSocket;)V

    .line 487
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0
    .param p1, "host"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 217
    return-void
.end method

.method public setSocket(Lcom/android/nfc/http/HTTPSocket;)V
    .locals 0
    .param p1, "value"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 231
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCheckRelativeURL"    # Z

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 148
    if-nez p2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/nfc/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
