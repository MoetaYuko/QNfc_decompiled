.class public Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;
.super Ljava/lang/Object;
.source "EchoServer2.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServer"
.end annotation


# instance fields
.field final echoDelay:I

.field echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

.field inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field private volatile isAlive:Z

.field final ltMode:Z

.field outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final remoteSap:I

.field final sapIn:I

.field final serviceNameIn:Ljava/lang/String;

.field final serviceNameOut:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer2;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "inputParameters"    # Ljava/lang/String;
    .param p3, "outputParameters"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 584
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 579
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 581
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->isAlive:Z

    .line 586
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EchoServer2"

    const-string v2, "registering LLCP CL service....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    invoke-static {p2}, Lcom/android/nfc/echoserver/EchoServer2;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameIn:Ljava/lang/String;

    .line 589
    invoke-static {p3}, Lcom/android/nfc/echoserver/EchoServer2;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameOut:Ljava/lang/String;

    .line 590
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->sapIn:I

    .line 591
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    .line 594
    invoke-static {p3}, Lcom/android/nfc/echoserver/EchoServer2;->getEchoDelay(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoDelay:I

    .line 596
    invoke-static {p2}, Lcom/android/nfc/echoserver/EchoServer2;->getLTMode(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->ltMode:Z

    .line 598
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EchoServer2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceName IN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "EchoServer2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceName OUT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameOut:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "EchoServer2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input socket\'s SAP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->sapIn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_3
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "EchoServer2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote SAP for sending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_4
    :try_start_0
    new-instance v1, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    invoke-direct {v1}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 605
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    check-cast v1, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameIn:Ljava/lang/String;

    iget v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->sapIn:I

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->open(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 606
    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL error: could not open the CL input socket!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_5
    :goto_0
    new-instance v1, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    invoke-direct {v1}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 614
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    check-cast v1, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->open(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 615
    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL error: could not open the CL output socket!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    :goto_1
    return-void

    .line 610
    :cond_7
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL input socket created successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL output socket created successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public closeSockets()V
    .locals 3

    .prologue
    .line 631
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EchoServer2"

    const-string v2, "close LLCP CL sockets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v1, :cond_3

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V

    .line 636
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL input socket closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v1, :cond_4

    .line 646
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V

    .line 647
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL output socket closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 654
    :cond_2
    :goto_1
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL input socket closing failed: IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL input socket was already closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    :catch_1
    move-exception v0

    .line 649
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL output socket closing failed: IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "EchoServer2"

    const-string v2, "LLCP CL output socket was already closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    .line 659
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start LLCP CL echo server, LT mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->ltMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->isAlive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    .line 664
    :try_start_1
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL about to receive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->inputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v2

    .line 666
    .local v2, "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v4

    if-nez v4, :cond_4

    .line 667
    :cond_2
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL received packet is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    .end local v2    # "packet":Lcom/android/nfc/LlcpPacket;
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer2"

    const-string v5, "IOException while running LLCP CL server thread"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "EchoServer2"

    const-string v5, "LLCP error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 689
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL thread stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v4}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 692
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 670
    .restart local v2    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v0

    .line 671
    .local v0, "dataUnit":[B
    array-length v3, v0

    .line 672
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "EchoServer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LLCP CL read "

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

    .line 674
    :cond_5
    invoke-static {v0}, Lcom/android/nfc/echoserver/EchoServer2;->isStartOfTest([B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 675
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL: received START OF TEST command"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameOut:Ljava/lang/String;

    sget-object v6, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST_RESPONSE:[B

    invoke-interface {v4, v5, v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(Ljava/lang/String;[B)V

    .line 677
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL: SNL done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 689
    .end local v0    # "dataUnit":[B
    .end local v2    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "EchoServer2"

    const-string v6, "LLCP CL thread stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_7
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    throw v4

    .line 680
    .restart local v0    # "dataUnit":[B
    .restart local v2    # "packet":Lcom/android/nfc/LlcpPacket;
    .restart local v3    # "size":I
    :cond_8
    :try_start_5
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v4, v0, v3}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->pushUnit([BI)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 689
    .end local v0    # "dataUnit":[B
    .end local v2    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v3    # "size":I
    :cond_9
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "EchoServer2"

    const-string v5, "LLCP CL thread stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_a
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v4}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    goto :goto_1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->isAlive:Z

    .line 717
    return-void
.end method

.method public startThread()V
    .locals 3

    .prologue
    .line 698
    monitor-enter p0

    .line 700
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->isAlive:Z

    if-nez v1, :cond_0

    .line 701
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->isAlive:Z

    .line 702
    new-instance v1, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;Z)V

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    .line 703
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v1, v1, Lcom/android/nfc/echoserver/EchoServer2;->mConnectionlessServer:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 704
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 707
    .end local v0    # "th":Ljava/lang/Thread;
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->ltMode:Z

    if-eqz v1, :cond_2

    .line 708
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EchoServer2"

    const-string v2, "writing START_OF_TEST to LLCP CL output socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1
    sget-object v1, Lcom/android/nfc/echoserver/EchoServer2;->START_OF_TEST:[B

    invoke-virtual {p0, v1}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->write([B)V

    .line 711
    :cond_2
    monitor-exit p0

    .line 713
    return-void

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 722
    :try_start_0
    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->remoteSap:I

    invoke-interface {v1, v2, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->outputSocket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServer;->serviceNameOut:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EchoServer2"

    const-string v2, "Error writing data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
