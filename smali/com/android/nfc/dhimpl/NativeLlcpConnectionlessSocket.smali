.class public Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.super Ljava/lang/Object;
.source "NativeLlcpConnectionlessSocket.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;


# instance fields
.field private mHandle:I

.field private mLinkMiu:I

.field private mSap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    .line 51
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    .line 54
    :cond_0
    return-void
.end method

.method private checkIsOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "status":Z
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    if-ne v1, v2, :cond_0

    .line 198
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doClose()Z

    move-result v0

    .line 194
    :goto_1
    if-nez v0, :cond_2

    .line 195
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 191
    :cond_1
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doClose(I)Z

    move-result v0

    goto :goto_1

    .line 197
    :cond_2
    iput v2, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    goto :goto_0
.end method

.method public native doClose()Z
.end method

.method public native doClose(I)Z
.end method

.method public native doOpen(Ljava/lang/String;I)I
.end method

.method public native doReceiveFrom(Lcom/android/nfc/LlcpPacket;II)I
.end method

.method public native doReceiveFrom(I)Lcom/android/nfc/LlcpPacket;
.end method

.method public native doSendTo(I[B)Z
.end method

.method public native doSendTo(I[BI)Z
.end method

.method public native doSendTo(Ljava/lang/String;[BI)Z
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mHandle:I

    return v0
.end method

.method public getLinkMiu()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    return v0
.end method

.method public getSap()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    return v0
.end method

.method public open(Ljava/lang/String;I)I
    .locals 1
    .param p1, "localServiceName"    # Ljava/lang/String;
    .param p2, "localSap"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doOpen(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    return v0
.end method

.method public receive()Lcom/android/nfc/LlcpPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/android/nfc/LlcpPacket;

    invoke-direct {v0}, Lcom/android/nfc/LlcpPacket;-><init>()V

    .line 162
    .local v0, "packet":Lcom/android/nfc/LlcpPacket;
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doReceiveFrom(I)Lcom/android/nfc/LlcpPacket;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    .line 165
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 168
    :cond_0
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    iget v3, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doReceiveFrom(Lcom/android/nfc/LlcpPacket;II)I

    move-result v1

    .line 169
    .local v1, "remoteSap":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 170
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 174
    .end local v1    # "remoteSap":I
    :cond_1
    return-object v0
.end method

.method public send(I[B)V
    .locals 2
    .param p1, "sap"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "status":Z
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doSendTo(I[B)Z

    move-result v0

    .line 152
    :goto_0
    if-nez v0, :cond_1

    .line 153
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 150
    :cond_0
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doSendTo(I[BI)Z

    move-result v0

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method public send(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "remoteServiceName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->checkIsOpen()V

    .line 90
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doSendTo(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 93
    :cond_0
    return-void
.end method
