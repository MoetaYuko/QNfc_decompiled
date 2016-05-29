.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, "needsHandover":Z
    const/4 v3, 0x0

    .line 900
    .local v3, "needsNdef":Z
    const/4 v6, 0x0

    .line 901
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 902
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v5, 0x0

    .line 903
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v4, 0x0

    .line 905
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 906
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 907
    const/4 v2, 0x1

    .line 910
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v7, :cond_1

    .line 911
    const/4 v3, 0x1

    .line 913
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    if-eqz v2, :cond_2

    .line 917
    new-instance v1, Lcom/android/nfc/handover/HandoverClient;

    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 919
    .restart local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    const/4 v6, 0x1

    .line 926
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 927
    :cond_3
    new-instance v5, Lcom/android/nfc/snep/SnepClient;

    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v5}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .line 929
    .restart local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 930
    const/4 v6, 0x1

    .line 935
    :goto_1
    if-nez v6, :cond_4

    .line 936
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 938
    .restart local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_3
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 939
    const/4 v6, 0x1

    .line 946
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 947
    :try_start_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 949
    if-eqz v1, :cond_5

    .line 950
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 952
    :cond_5
    if-eqz v5, :cond_6

    .line 953
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 955
    :cond_6
    if-eqz v4, :cond_7

    .line 956
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 958
    :cond_7
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 966
    :goto_3
    return-object v7

    .line 913
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 931
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 932
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 940
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 941
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_2

    .line 963
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v1, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 964
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v5, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 965
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 966
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8

    goto :goto_3

    .line 968
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 882
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return-void

    .line 889
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_0

    .line 892
    :cond_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 882
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
