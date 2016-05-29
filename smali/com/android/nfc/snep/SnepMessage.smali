.class public final Lcom/android/nfc/snep/SnepMessage;
.super Ljava/lang/Object;
.source "SnepMessage.java"


# static fields
.field private static final HEADER_LENGTH:I = 0x6

.field public static final REQUEST_CONTINUE:B = 0x0t

.field public static final REQUEST_GET:B = 0x1t

.field public static final REQUEST_PUT:B = 0x2t

.field public static final REQUEST_REJECT:B = 0x7ft

.field public static final RESPONSE_BAD_REQUEST:B = -0x3et

.field public static final RESPONSE_CONTINUE:B = -0x80t

.field public static final RESPONSE_EXCESS_DATA:B = -0x3ft

.field public static final RESPONSE_NOT_FOUND:B = -0x40t

.field public static final RESPONSE_NOT_IMPLEMENTED:B = -0x20t

.field public static final RESPONSE_REJECT:B = -0x1t

.field public static final RESPONSE_SUCCESS:B = -0x7ft

.field public static final RESPONSE_UNSUPPORTED_VERSION:B = -0x1ft

.field public static final VERSION:B = 0x10t

.field public static final VERSION_MAJOR:B = 0x1t

.field public static final VERSION_MINOR:B


# instance fields
.field private final mAcceptableLength:I

.field private final mField:B

.field private final mLength:I

.field private final mNdefMessage:Landroid/nfc/NdefMessage;

.field private final mVersion:B


# direct methods
.method constructor <init>(BBIILandroid/nfc/NdefMessage;)V
    .locals 0
    .param p1, "version"    # B
    .param p2, "field"    # B
    .param p3, "length"    # I
    .param p4, "acceptableLength"    # I
    .param p5, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-byte p1, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 126
    iput-byte p2, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 127
    iput p3, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 128
    iput p4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 129
    iput-object p5, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 130
    return-void
.end method

.method private constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    .local v1, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 104
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 106
    const/16 v3, 0xa

    .line 107
    .local v3, "ndefOffset":I
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    add-int/lit8 v2, v4, -0x4

    .line 114
    .local v2, "ndefLength":I
    :goto_0
    if-lez v2, :cond_1

    .line 115
    new-array v0, v2, [B

    .line 116
    .local v0, "bytes":[B
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 117
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 121
    .end local v0    # "bytes":[B
    :goto_1
    return-void

    .line 109
    .end local v2    # "ndefLength":I
    .end local v3    # "ndefOffset":I
    :cond_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 110
    const/4 v3, 0x6

    .line 111
    .restart local v3    # "ndefOffset":I
    iget v2, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .restart local v2    # "ndefLength":I
    goto :goto_0

    .line 119
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1
.end method

.method public static fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepMessage;-><init>([B)V

    return-object v0
.end method

.method public static getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "acceptableLength"    # I
    .param p1, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 63
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getMessage(B)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "field"    # B

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v5, 0x0

    move v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getNotFoundResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 10
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v1, 0x10

    const/16 v2, -0x40

    const/4 v3, 0x0

    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v7, v0

    move v5, v1

    move v6, v2

    move v8, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 68
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 10
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v1, 0x10

    const/16 v2, -0x7f

    const/4 v3, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v7, v0

    move v5, v1

    move v6, v2

    move v8, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAcceptableLength()I
    .locals 2

    .prologue
    .line 182
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Acceptable Length only available on get request messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    return v0
.end method

.method public getField()B
    .locals 1

    .prologue
    .line 170
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 174
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    return v0
.end method

.method public toByteArray()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 142
    .local v1, "bytes":[B
    :goto_0
    :try_start_0
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v5, :cond_1

    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 148
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v3, "output":Ljava/io/DataOutputStream;
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 150
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 151
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v5, :cond_2

    .line 152
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 153
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :goto_3
    return-object v4

    .line 137
    .end local v1    # "bytes":[B
    :cond_0
    const/4 v4, 0x0

    new-array v1, v4, [B

    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 155
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :cond_2
    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 158
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_3
.end method
