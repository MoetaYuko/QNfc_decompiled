.class public Lcom/android/nfc/echoserver/EchoServer2;
.super Ljava/lang/Object;
.source "EchoServer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/echoserver/EchoServer2$1;,
        Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;,
        Lcom/android/nfc/echoserver/EchoServer2$ServerThread;,
        Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;,
        Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;
    }
.end annotation


# static fields
.field public static final ANY_SAP:I = 0xff

.field static final CONNECTIONLESS_SERVICE_NAME_IN:Ljava/lang/String; = "urn:nfc:sn:dta-cl-echo-in"

.field static final CONNECTIONLESS_SERVICE_NAME_OUT:Ljava/lang/String; = "urn:nfc:sn:dta-cl-echo-out"

.field static DBG:Z = false

.field static final DEFAULT_CL_IN_SAP:I = 0x21

.field static final DEFAULT_CL_OUT_SAP:I = 0x11

.field static final DEFAULT_CO_IN_SAP:I = 0x20

.field static final DEFAULT_CO_OUT_SAP:I = 0x12

.field public static final DEFAULT_ECHO_DELAY:I = 0xbb8

.field static final MIU:I = 0x80

.field public static final SEPARATOR:C = ','

.field public static final START_OF_TEST:[B

.field public static final START_OF_TEST_RESPONSE:[B

.field static final TAG:Ljava/lang/String; = "EchoServer2"


# instance fields
.field private mCoServiceNameIn:Ljava/lang/String;

.field private mCoServiceNameOut:Ljava/lang/String;

.field mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

.field mLtMode:Z

.field mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    .line 432
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST:[B

    .line 437
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST_RESPONSE:[B

    return-void

    .line 432
    nop

    :array_0
    .array-data 1
        0x53t
        0x4ft
        0x54t
    .end array-data

    .line 437
    :array_1
    .array-data 1
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    .line 88
    return-void
.end method

.method public static final getEchoDelay(Ljava/lang/String;)I
    .locals 5
    .param p0, "parameters"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string v3, "echo_delay"

    invoke-static {p0, v3}, Lcom/android/nfc/echoserver/EchoServer2;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "delayStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 539
    const/16 v0, 0xbb8

    .line 551
    :goto_0
    return v0

    .line 542
    :cond_0
    const/16 v0, 0xbb8

    .line 545
    .local v0, "delay":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EchoServer2"

    const-string v4, "LLCP CL error: parsing echo delay failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final getLTMode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "parameters"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string v1, "ltmode"

    invoke-static {p0, v1}, Lcom/android/nfc/echoserver/EchoServer2;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "modeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 558
    :cond_0
    const/4 v1, 0x0

    .line 561
    :goto_0
    return v1

    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final getSAP(Ljava/lang/String;)I
    .locals 5
    .param p0, "parameters"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string v3, "sap"

    invoke-static {p0, v3}, Lcom/android/nfc/echoserver/EchoServer2;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "sapStr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 520
    const/16 v1, 0xff

    .line 532
    :goto_0
    return v1

    .line 523
    :cond_0
    const/16 v1, 0xff

    .line 526
    .local v1, "sap":I
    :try_start_0
    invoke-static {v2}, Lcom/android/nfc/echoserver/EchoServer2;->parseIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EchoServer2"

    const-string v4, "LLCP CL error: parsing SAP failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parameters"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string v1, "sn"

    invoke-static {p0, v1}, Lcom/android/nfc/echoserver/EchoServer2;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 490
    :cond_0
    const/4 v0, 0x0

    .line 493
    .end local v0    # "serviceName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, "i":I
    if-ne v0, v4, :cond_0

    .line 467
    const/4 v2, 0x0

    .line 478
    :goto_0
    return-object v2

    .line 470
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 472
    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 474
    .local v1, "j":I
    if-ne v1, v4, :cond_1

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 478
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isStartOfTest([B)Z
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 449
    if-eqz p0, :cond_0

    array-length v2, p0

    sget-object v3, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 454
    aget-byte v2, p0, v0

    sget-object v3, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final parseIntValue(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    .line 506
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 513
    :goto_0
    return v0

    .line 509
    :cond_0
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 513
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onLlcpActivated()V
    .locals 2

    .prologue
    .line 732
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->ltMode:Z

    if-eqz v0, :cond_2

    .line 746
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EchoServer2"

    const-string v1, "onLlcpActivated(): in LT mode -> sleep for 100ms before sending START_OF_TEST packet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->startThread()V

    .line 755
    :cond_3
    return-void

    .line 749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLlcpDeactivated()V
    .locals 2

    .prologue
    .line 759
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "onLlcpDeactivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    return-void
.end method

.method public setCoServiceNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public startClService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;-><init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    .line 770
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "LLCP CL service registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "LLCP CL service is registered already - ignoring call!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startCoService()V
    .locals 3

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 802
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;-><init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .line 803
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->start()V

    .line 807
    :cond_0
    :goto_0
    monitor-exit p0

    .line 808
    return-void

    .line 805
    :cond_1
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "Couldn\'t start LLCP CO echo service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopClService()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    if-nez v0, :cond_1

    .line 785
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "no LLCP CL service registered - ignoring call!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->shutdown()V

    .line 790
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->closeSockets()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    .line 793
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer2"

    const-string v1, "LLCP CL servise closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCoService()V
    .locals 1

    .prologue
    .line 815
    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->shutdown()V

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .line 820
    :cond_0
    monitor-exit p0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
