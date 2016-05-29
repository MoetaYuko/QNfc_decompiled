.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 2
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 119
    const-string v0, "SnepServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 120
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 121
    new-instance v0, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 122
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 131
    .local v0, "running":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    if-eqz v0, :cond_0

    .line 134
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v1, v2}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    .line 148
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v1, v1, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v1}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    .end local v0    # "running":Z
    :goto_1
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    :catch_0
    move-exception v1

    .line 148
    :try_start_6
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v1, v1, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v1}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 154
    :catch_1
    move-exception v1

    goto :goto_1

    .line 138
    .restart local v0    # "running":Z
    :cond_3
    :try_start_7
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    :try_start_8
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 140
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 145
    .end local v0    # "running":Z
    :catchall_2
    move-exception v1

    .line 148
    :try_start_a
    invoke-static {}, Landroid/nfc/dta/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v2}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 156
    :goto_2
    throw v1

    .line 154
    :catch_2
    move-exception v2

    goto :goto_2

    .restart local v0    # "running":Z
    :catch_3
    move-exception v1

    goto :goto_1
.end method
