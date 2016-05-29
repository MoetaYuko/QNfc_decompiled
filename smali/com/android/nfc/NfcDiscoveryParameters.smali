.class public final Lcom/android/nfc/NfcDiscoveryParameters;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDiscoveryParameters$1;,
        Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    }
.end annotation


# static fields
.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_DEFAULT:I = -0x1

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20


# instance fields
.field private mEnableHostRouting:Z

.field private mEnableLowPowerDiscovery:Z

.field private mEnableP2p:Z

.field private mEnableReaderMode:Z

.field private mOffHostRouting:Ljava/lang/String;

.field private mTechMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcDiscoveryParameters;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/nfc/NfcDiscoveryParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>(Lcom/android/nfc/NfcDiscoveryParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    if-ne p1, p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 142
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 144
    check-cast v1, Lcom/android/nfc/NfcDiscoveryParameters;

    .line 147
    .local v1, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 148
    iget-object v4, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 149
    const/4 v0, 0x1

    .line 156
    .local v0, "isSameOffHostRouting":Z
    :goto_1
    iget v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    iget v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    iget-boolean v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    iget-boolean v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    iget-boolean v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    iget-boolean v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    if-eq v4, v5, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 151
    .end local v0    # "isSameOffHostRouting":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isSameOffHostRouting":Z
    goto :goto_1

    .line 153
    .end local v0    # "isSameOffHostRouting":Z
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "isSameOffHostRouting":Z
    goto :goto_1
.end method

.method public getOffHostRouting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    return-object v0
.end method

.method public getTechMask()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return v0
.end method

.method public shouldEnableDiscovery()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldEnableHostRouting()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return v0
.end method

.method public shouldEnableLowPowerDiscovery()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method public shouldEnableP2p()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method public shouldEnableReaderMode()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 168
    const-string v1, "mTechMask: default\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableLPD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableReader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableHostRouting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOffHostRouting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mOffHostRouting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableP2p: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTechMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
