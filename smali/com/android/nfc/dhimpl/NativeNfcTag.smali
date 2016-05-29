.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .prologue
    const/4 v5, 0x0

    .line 494
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 495
    .local v1, "mNewTechList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 496
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    aput p1, v1, v3

    .line 497
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 499
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 500
    .local v0, "mNewHandleList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 501
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    aput p2, v0, v3

    .line 502
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 504
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 505
    .local v2, "mNewTypeList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 506
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    aput p3, v2, v3

    .line 507
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 508
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 356
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_1
    monitor-exit p0

    return v0

    .line 352
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 591
    const/4 v1, -0x1

    .line 592
    .local v1, "techIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 594
    move v1, v0

    .line 598
    :cond_0
    return v1

    .line 592
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasTechOnHandle(II)Z
    .locals 3
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_1

    .line 616
    const/4 v0, 0x1

    .line 620
    :cond_0
    return v0

    .line 614
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isUltralightC()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "isUltralightC":Z
    new-array v1, v6, [B

    fill-array-data v1, :array_0

    .line 638
    .local v1, "readCmd":[B
    new-array v3, v6, [I

    .line 639
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v2

    .line 640
    .local v2, "respData":[B
    if-eqz v2, :cond_0

    array-length v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 643
    aget-byte v4, v2, v6

    if-nez v4, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    aget-byte v4, v2, v8

    if-nez v4, :cond_2

    aget-byte v4, v2, v9

    if-nez v4, :cond_2

    aget-byte v4, v2, v7

    if-nez v4, :cond_2

    const/4 v4, 0x7

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    .line 647
    const/16 v4, 0x8

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    if-nez v4, :cond_1

    .line 649
    const/4 v0, 0x1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 658
    :cond_2
    aget-byte v4, v2, v8

    const/16 v5, -0x1f

    if-ne v4, v5, :cond_3

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    .line 665
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    if-le v4, v7, :cond_0

    .line 666
    const/4 v0, 0x1

    goto :goto_0

    .line 670
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .prologue
    .line 562
    monitor-enter p0

    .line 563
    const/4 v4, 0x6

    :try_start_0
    invoke-direct {p0, v4, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "ndefmsg"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    const-string v4, "ndefmaxlength"

    invoke-virtual {v1, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string v4, "ndefcardstate"

    invoke-virtual {v1, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string v4, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v0

    .line 575
    .local v0, "builtTechExtras":[Landroid/os/Bundle;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-object v1, v0, v4

    .line 587
    .end local v0    # "builtTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 588
    return-void

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    .line 580
    .local v3, "oldTechExtras":[Landroid/os/Bundle;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 581
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    array-length v4, v3

    aput-object v1, v2, v4

    .line 583
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    goto :goto_0

    .line 587
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    .end local v3    # "oldTechExtras":[Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 1
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 4
    .param p1, "technology"    # I

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 171
    :cond_0
    const/4 v1, -0x1

    .line 172
    .local v1, "status":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_7

    .line 175
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 182
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 185
    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v1

    .line 192
    :goto_1
    if-nez v1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 194
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 238
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_2
    monitor-exit p0

    return v1

    .line 188
    :cond_3
    :try_start_1
    const-string v2, "NativeNfcTag"

    const-string v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    goto :goto_1

    .line 203
    :cond_4
    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    .line 206
    :cond_5
    const/4 v0, 0x0

    .line 209
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    .line 230
    if-nez v1, :cond_1

    .line 231
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 168
    .end local v0    # "i":I
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 172
    .restart local v0    # "i":I
    .restart local v1    # "status":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    const/4 v0, 0x0

    .line 289
    .local v0, "result":Z
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 290
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 299
    const/4 v0, 0x1

    .line 304
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 305
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    monitor-exit p0

    return v0

    .line 301
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public declared-synchronized dta_fake_ndef_tech()V
    .locals 7

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    const-string v0, "NativeNfcTag"

    const-string v1, "[DTA] dta_fake_ndef_tech, fake tag capacity is 10000 and it supports read and write"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v4

    const/16 v5, 0x2710

    const/4 v6, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 30

    .prologue
    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v29

    .line 780
    .local v29, "technologies":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    move-object/from16 v23, v0

    .line 781
    .local v23, "handles":[I
    const/16 v25, 0x0

    .line 782
    .local v25, "ndefMsg":Landroid/nfc/NdefMessage;
    const/16 v21, 0x0

    .line 783
    .local v21, "foundFormattable":Z
    const/16 v19, 0x0

    .line 784
    .local v19, "formattableHandle":I
    const/16 v20, 0x0

    .line 787
    .local v20, "formattableLibNfcType":I
    const/16 v28, 0x0

    .local v28, "techIndex":I
    :goto_0
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v28

    if-ge v0, v3, :cond_b

    .line 789
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 790
    aget v3, v23, v24

    aget v5, v23, v28

    if-ne v3, v5, :cond_0

    .line 789
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 795
    :cond_1
    aget v3, v29, v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v27

    .line 796
    .local v27, "status":I
    if-eqz v27, :cond_4

    .line 797
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_a

    move-object/from16 v4, v25

    .line 874
    .end local v24    # "i":I
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v27    # "status":I
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    if-eqz v21, :cond_3

    .line 877
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 882
    :cond_3
    return-object v4

    .line 804
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v24    # "i":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v27    # "status":I
    :cond_4
    if-nez v21, :cond_6

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 806
    const/16 v21, 0x1

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v19

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v20

    .line 813
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    .line 816
    :cond_6
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 817
    .local v26, "ndefinfo":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v27

    .line 818
    if-eqz v27, :cond_7

    .line 819
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check NDEF Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_a

    move-object/from16 v4, v25

    .line 821
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_2

    .line 827
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_7
    const/16 v22, 0x0

    .line 829
    .local v22, "generateEmptyNdef":Z
    const/4 v3, 0x0

    aget v8, v26, v3

    .line 830
    .local v8, "supportedNdefLength":I
    const/4 v3, 0x1

    aget v9, v26, v3

    .line 831
    .local v9, "cardState":I
    const/16 v17, 0x0

    .line 835
    .local v17, "buff":[B
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 836
    const-string v3, "NativeNfcTag"

    const-string v5, "[DTA] do_not_read NDEF"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v17, 0x0

    .line 844
    :goto_3
    if-eqz v17, :cond_9

    .line 846
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    :goto_4
    if-eqz v22, :cond_2

    .line 862
    const/4 v4, 0x0

    .line 863
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v14

    move-object/from16 v10, p0

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 868
    const/16 v21, 0x0

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    goto/16 :goto_2

    .line 841
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v17

    goto :goto_3

    .line 853
    :catch_0
    move-exception v18

    move-object/from16 v4, v25

    .line 855
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v18, "e":Landroid/nfc/FormatException;
    :goto_5
    const/16 v22, 0x1

    .line 856
    goto :goto_4

    .line 858
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v18    # "e":Landroid/nfc/FormatException;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_4

    .line 787
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v26    # "ndefinfo":[I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 853
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "supportedNdefLength":I
    .restart local v9    # "cardState":I
    .restart local v17    # "buff":[B
    .restart local v22    # "generateEmptyNdef":Z
    .restart local v26    # "ndefinfo":[I
    :catch_1
    move-exception v18

    goto :goto_5

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v24    # "i":I
    .end local v26    # "ndefinfo":[I
    .end local v27    # "status":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_b
    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_2
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 412
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_1
    monitor-exit p0

    return v0

    .line 408
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedTechnology()I
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v0, v1, v0

    .line 454
    :cond_0
    return v0
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    .line 772
    :goto_0
    return-object v8

    .line 681
    :cond_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 682
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 683
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    .line 682
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    :pswitch_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v0, v8, v3

    .line 687
    .local v0, "actBytes":[B
    if-eqz v0, :cond_1

    array-length v8, v0

    if-lez v8, :cond_1

    .line 688
    const-string v8, "sak"

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 693
    :cond_1
    const-string v8, "atqa"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 770
    .end local v0    # "actBytes":[B
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v8, v3

    goto :goto_2

    .line 773
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 701
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "i":I
    :pswitch_2
    const/4 v8, 0x4

    :try_start_1
    new-array v1, v8, [B

    .line 702
    .local v1, "appData":[B
    const/4 v8, 0x3

    new-array v6, v8, [B

    .line 703
    .local v6, "protInfo":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_2

    .line 704
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 705
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 707
    const-string v8, "appdata"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 708
    const-string v8, "protinfo"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 714
    .end local v1    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_3
    const/16 v8, 0x8

    new-array v5, v8, [B

    .line 715
    .local v5, "pmm":[B
    const/4 v8, 0x2

    new-array v7, v8, [B

    .line 716
    .local v7, "sc":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v12, :cond_3

    .line 718
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 719
    const-string v8, "pmm"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 721
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 722
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 723
    const-string v8, "systemcode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 729
    .end local v5    # "pmm":[B
    .end local v7    # "sc":[B
    :pswitch_4
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 730
    const-string v8, "histbytes"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 733
    :cond_4
    const-string v8, "hiresp"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_3

    .line 740
    :pswitch_5
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v13, :cond_2

    .line 741
    const-string v8, "respflags"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 742
    const-string v8, "dsfid"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    .line 750
    :pswitch_6
    const/4 v4, 0x0

    .line 751
    .local v4, "isUlc":Z
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInDtaMode()Z

    move-result v8

    if-nez v8, :cond_5

    .line 752
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v4

    .line 755
    :cond_5
    const-string v8, "isulc"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 761
    .end local v4    # "isUlc":Z
    :pswitch_7
    const-string v8, "barcodetype"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 772
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public hasTech(I)Z
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 605
    const/4 v0, 0x1

    .line 609
    :cond_0
    return v0

    .line 603
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 3

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 425
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 431
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_1
    monitor-exit p0

    return v0

    .line 429
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 421
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 399
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    monitor-exit p0

    return v0

    .line 395
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 373
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_1
    monitor-exit p0

    return-object v0

    .line 369
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 315
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    monitor-exit p0

    return v0

    .line 311
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 331
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_1
    monitor-exit p0

    return v0

    .line 327
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeTechnology(I)V
    .locals 8
    .param p1, "tech"    # I

    .prologue
    .line 512
    monitor-enter p0

    .line 513
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v4

    .line 514
    .local v4, "techIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 515
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 516
    .local v2, "mNewTechList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 517
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 519
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 521
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [I

    .line 522
    .local v0, "mNewHandleList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 523
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 525
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 527
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [I

    .line 528
    .local v3, "mNewTypeList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 529
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 531
    iput-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 537
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 539
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [Landroid/os/Bundle;

    .line 540
    .local v1, "mNewTechExtras":[Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 546
    .end local v0    # "mNewHandleList":[I
    .end local v1    # "mNewTechExtras":[Landroid/os/Bundle;
    .end local v2    # "mNewTechList":[I
    .end local v3    # "mNewTypeList":[I
    :cond_0
    monitor-exit p0

    .line 547
    return-void

    .line 546
    .end local v4    # "techIndex":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public declared-synchronized setIsPresent(Z)V
    .locals 3
    .param p1, "isPresent"    # Z

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    const-string v0, "NativeNfcTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DTA] mIsPresent set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 1
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 254
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 256
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 343
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 344
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_1
    monitor-exit p0

    return-object v0

    .line 340
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 386
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_1
    monitor-exit p0

    return v0

    .line 382
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
