.class public Lcom/android/nfc/http/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/nfc/http/HTTPSocket;)V
    .locals 1
    .param p1, "socket"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 92
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 52
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 54
    invoke-direct {p1}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 92
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->open()Z

    .line 49
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private post(Lcom/android/nfc/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .locals 21
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 213
    .local v8, "out":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/http/HTTPResponse;->setContentLength(J)V

    .line 218
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "resHeader":Ljava/lang/String;
    const-string v16, "US_ASCII"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    const/16 v16, 0x1

    move/from16 v0, p7

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/16 v16, 0x1

    .line 271
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    .end local v13    # "resHeader":Ljava/lang/String;
    :goto_0
    return v16

    .line 273
    .restart local v13    # "resHeader":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 275
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPResponse;->isChunked()Z

    move-result v7

    .line 229
    .local v7, "isChunkedResponse":Z
    const-wide/16 v16, 0x0

    cmp-long v16, v16, p3

    if-gez v16, :cond_1

    .line 230
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    cmp-long v16, v16, p3

    if-eqz v16, :cond_1

    .line 231
    const/16 v16, 0x0

    .line 271
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v6

    .line 275
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/android/nfc/http/HTTP;->getChunkSize()I

    move-result v5

    .line 235
    .local v5, "chunkSize":I
    new-array v9, v5, [B

    .line 236
    .local v9, "readBuf":[B
    const-wide/16 v10, 0x0

    .line 237
    .local v10, "readCnt":J
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v16, v16, p5

    if-gez v16, :cond_4

    int-to-long v14, v5

    .line 238
    .local v14, "readSize":J
    :goto_1
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 239
    .local v12, "readLen":I
    :goto_2
    if-lez v12, :cond_6

    cmp-long v16, v10, p5

    if-gez v16, :cond_6

    .line 240
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_2

    .line 243
    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "chunSizeBuf":Ljava/lang/String;
    const-string v16, "US_ASCII"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    const-string v16, "\r\n"

    const-string v17, "US_ASCII"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 247
    .end local v4    # "chunSizeBuf":Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v9, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 248
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_3

    .line 249
    const-string v16, "\r\n"

    const-string v17, "US_ASCII"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 250
    :cond_3
    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 251
    int-to-long v0, v5

    move-wide/from16 v16, v0

    sub-long v18, p5, v10

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    int-to-long v14, v5

    .line 252
    :goto_3
    const/16 v16, 0x0

    long-to-int v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    goto :goto_2

    .end local v12    # "readLen":I
    .end local v14    # "readSize":J
    :cond_4
    move-wide/from16 v14, p5

    .line 237
    goto :goto_1

    .line 251
    .restart local v12    # "readLen":I
    .restart local v14    # "readSize":J
    :cond_5
    sub-long v14, p5, v10

    goto :goto_3

    .line 255
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 256
    const-string v16, "0"

    const-string v17, "US_ASCII"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 257
    const-string v16, "\r\n"

    const-string v17, "US_ASCII"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    :cond_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 278
    :goto_4
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 273
    :catch_2
    move-exception v6

    .line 275
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 261
    .end local v5    # "chunkSize":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "isChunkedResponse":Z
    .end local v9    # "readBuf":[B
    .end local v10    # "readCnt":J
    .end local v12    # "readLen":I
    .end local v13    # "resHeader":Ljava/lang/String;
    .end local v14    # "readSize":J
    :catch_3
    move-exception v6

    .line 263
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    const/16 v16, 0x0

    .line 271
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 273
    :catch_4
    move-exception v6

    .line 275
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 265
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 267
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 268
    const/16 v16, 0x0

    .line 271
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 273
    :catch_6
    move-exception v6

    .line 275
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 270
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 271
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 276
    :goto_5
    throw v16

    .line 273
    :catch_7
    move-exception v6

    .line 275
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private post(Lcom/android/nfc/http/HTTPResponse;[BJJZ)Z
    .locals 7
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "content"    # [B
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/nfc/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 154
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 156
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {p1, p5, p6}, Lcom/android/nfc/http/HTTPResponse;->setContentLength(J)V

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "resHeader":Ljava/lang/String;
    :try_start_0
    const-string v5, "US_ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 168
    const/4 v5, 0x1

    if-ne p7, v5, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    const/4 v5, 0x1

    .line 203
    :goto_0
    return v5

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->isChunked()Z

    move-result v2

    .line 175
    .local v2, "isChunkedResponse":Z
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 178
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "chunSizeBuf":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 180
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 183
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_1
    long-to-int v5, p3

    long-to-int v6, p5

    invoke-virtual {v3, p2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 186
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const-string v5, "0"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 188
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 191
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    const/4 v5, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "isChunkedResponse":Z
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 195
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 196
    const/4 v5, 0x0

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 96
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 104
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 69
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 134
    .local v1, "sc":Ljava/net/Socket;
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_2
    const/4 v2, 0x1

    .end local v1    # "sc":Ljava/net/Socket;
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->close()Z

    .line 59
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 117
    .local v1, "sock":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 118
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lcom/android/nfc/http/HTTPResponse;JJZ)Z
    .locals 10
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "contentOffset"    # J
    .param p4, "contentLength"    # J
    .param p6, "isOnlyHeader"    # Z

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->getContent()[B

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;[BJJZ)Z

    move-result v0

    goto :goto_0
.end method
