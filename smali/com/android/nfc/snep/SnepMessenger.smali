.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessager"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 57
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 58
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 231
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    .local v8, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v14, v2, [B

    .line 116
    .local v14, "partial":[B
    const-wide/16 v18, 0x0

    .line 117
    .local v18, "requestSize":J
    const-wide/16 v16, 0x0

    .line 119
    .local v16, "readSize":J
    const/4 v3, 0x0

    .line 120
    .local v3, "requestVersion":B
    const/4 v10, 0x0

    .line 123
    .local v10, "doneReading":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v2, :cond_0

    .line 124
    const/4 v12, 0x0

    .line 125
    .local v12, "fieldContinue":B
    const/16 v13, 0x7f

    .line 131
    .local v13, "fieldReject":B
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v15

    .line 133
    .local v15, "size":I
    if-gez v15, :cond_1

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 139
    :goto_1
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Error reading SNEP message."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v12    # "fieldContinue":B
    .end local v13    # "fieldReject":B
    .end local v15    # "size":I
    :cond_0
    const/16 v12, -0x80

    .line 128
    .restart local v12    # "fieldContinue":B
    const/4 v13, -0x1

    .restart local v13    # "fieldReject":B
    goto :goto_0

    .line 140
    .restart local v15    # "size":I
    :cond_1
    const/4 v2, 0x6

    if-ge v15, v2, :cond_3

    .line 142
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 149
    :cond_2
    :goto_2
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Invalid fragment from sender."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_3
    add-int/lit8 v2, v15, -0x6

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v8, v14, v2, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 155
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v9, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 157
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 160
    .local v4, "requestField":B
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v6, v2

    const-wide v20, 0xffffffffL

    and-long v18, v6, v20

    .line 165
    and-int/lit16 v2, v3, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    .line 167
    new-instance v2, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 222
    :goto_3
    return-object v2

    .line 172
    :cond_4
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    const-wide/32 v6, 0x19000

    cmp-long v2, v18, v6

    if-lez v2, :cond_5

    .line 175
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 179
    :goto_4
    new-instance v2, Ljava/io/IOException;

    const-string v5, "SNEP message is longer than the acceptable length. Rejecting."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_5
    cmp-long v2, v18, v16

    if-lez v2, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 192
    :cond_6
    :goto_5
    if-nez v10, :cond_9

    .line 194
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v15

    .line 196
    if-gez v15, :cond_8

    .line 198
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 202
    :goto_6
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 210
    :catch_0
    move-exception v11

    .line 212
    .local v11, "e":Ljava/io/IOException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 216
    :goto_7
    throw v11

    .line 188
    .end local v11    # "e":Ljava/io/IOException;
    :cond_7
    const/4 v10, 0x1

    goto :goto_5

    .line 204
    :cond_8
    int-to-long v6, v15

    add-long v16, v16, v6

    .line 205
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v8, v14, v2, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 206
    cmp-long v2, v16, v18

    if-nez v2, :cond_6

    .line 207
    const/4 v10, 0x1

    goto :goto_5

    .line 222
    :cond_9
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_8
    .catch Landroid/nfc/FormatException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v2

    goto/16 :goto_3

    .line 223
    :catch_1
    move-exception v11

    .line 224
    .local v11, "e":Landroid/nfc/FormatException;
    const-string v2, "SnepMessager"

    const-string v5, "Badly formatted NDEF message, ignoring"

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    new-instance v2, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v2, v11}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 213
    .local v11, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_7

    .line 199
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_6

    .line 176
    :catch_4
    move-exception v2

    goto :goto_4

    .line 145
    .end local v4    # "requestField":B
    .end local v9    # "dataIn":Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 136
    :catch_6
    move-exception v2

    goto/16 :goto_1
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 64
    .local v0, "buffer":[B
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_1

    .line 65
    const/16 v4, -0x80

    .line 72
    .local v4, "remoteContinue":B
    :goto_0
    array-length v8, v0

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    .local v2, "length":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 75
    .local v7, "tmpBuffer":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 77
    array-length v8, v0

    if-ne v2, v8, :cond_2

    .line 106
    :cond_0
    return-void

    .line 67
    .end local v2    # "length":I
    .end local v4    # "remoteContinue":B
    .end local v7    # "tmpBuffer":[B
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "remoteContinue":B
    goto :goto_0

    .line 82
    .restart local v2    # "length":I
    .restart local v7    # "tmpBuffer":[B
    :cond_2
    move v3, v2

    .line 83
    .local v3, "offset":I
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 84
    .local v5, "responseBytes":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 87
    :try_start_0
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 93
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-eq v8, v4, :cond_3

    .line 94
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid response from server ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 88
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 99
    .end local v1    # "e":Landroid/nfc/FormatException;
    .restart local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_3
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_0

    .line 100
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 101
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 103
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 104
    add-int/2addr v3, v2

    goto :goto_1
.end method
