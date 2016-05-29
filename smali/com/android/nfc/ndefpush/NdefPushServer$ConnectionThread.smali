.class Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 1
    .param p2, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 68
    const-string v0, "NdefPushServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x400

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 77
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v4, v6, [B
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v4, "partial":[B
    const/4 v1, 0x0

    .line 82
    .local v1, "connectionBroken":Z
    :goto_0
    if-nez v1, :cond_0

    .line 84
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 86
    .local v5, "size":I
    if-gez v5, :cond_1

    .line 87
    const/4 v1, 0x1

    .line 100
    .end local v5    # "size":I
    :cond_0
    :try_start_2
    new-instance v3, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>([B)V

    .line 104
    .local v3, "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v6, v6, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-virtual {v3}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->getImmediate()Landroid/nfc/NdefMessage;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/nfc/ndefpush/NdefPushServer$Callback;->onMessageReceived(Landroid/nfc/NdefMessage;)V
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 116
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v4    # "partial":[B
    :goto_1
    return-void

    .line 90
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v4    # "partial":[B
    .restart local v5    # "size":I
    :cond_1
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 92
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 96
    goto :goto_0

    .line 105
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "partial":[B
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Landroid/nfc/FormatException;
    :try_start_5
    const-string v6, "NdefPushServer"

    const-string v7, "badly formatted NDEF message, ignoring"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    :try_start_6
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 111
    :catch_2
    move-exception v6

    goto :goto_1

    .line 108
    .end local v2    # "e":Landroid/nfc/FormatException;
    :catchall_0
    move-exception v6

    .line 110
    :try_start_7
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 113
    :goto_2
    throw v6

    .line 111
    :catch_3
    move-exception v7

    goto :goto_2

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v4    # "partial":[B
    :catch_4
    move-exception v6

    goto :goto_1
.end method
