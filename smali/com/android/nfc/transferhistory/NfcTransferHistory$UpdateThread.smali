.class Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
.super Ljava/lang/Thread;
.source "NfcTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;


# direct methods
.method public constructor <init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .line 111
    const-string v0, "Nfc transfer history"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "keepService":Z
    :goto_0
    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    monitor-enter v9

    .line 121
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$500(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 122
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "multiple UpdateThreads in NfcTransferHistory"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 128
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    const/4 v7, 0x0

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    invoke-static {v6, v7}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$502(Lcom/android/nfc/transferhistory/NfcTransferHistory;Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .line 130
    monitor-exit v9

    .line 139
    :cond_1
    return-void

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    const/4 v10, 0x0

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z
    invoke-static {v6, v10}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$602(Lcom/android/nfc/transferhistory/NfcTransferHistory;Z)Z

    .line 133
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$200(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/nfc/transferhistory/DataBaseUtils;->queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6, v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$702(Lcom/android/nfc/transferhistory/NfcTransferHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 138
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, "listarrayPos":I
    const/4 v5, 0x0

    .line 145
    .local v5, "templistarrayPos":I
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v0, v7

    .line 149
    .local v0, "isAfterTempList":Z
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 150
    :cond_4
    if-eqz v0, :cond_3

    .line 154
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getID()I

    move-result v4

    .line 156
    .local v4, "templistId":I
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_7

    .line 158
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    add-int/lit8 v5, v5, 0x1

    .line 170
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    move v0, v7

    :goto_2
    goto :goto_1

    .end local v0    # "isAfterTempList":Z
    .end local v4    # "templistId":I
    :cond_5
    move v0, v8

    .line 145
    goto :goto_1

    .restart local v0    # "isAfterTempList":Z
    .restart local v4    # "templistId":I
    :cond_6
    move v0, v8

    .line 170
    goto :goto_2

    .line 173
    :cond_7
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getID()I

    move-result v2

    .line 175
    .local v2, "listId":I
    if-ge v2, v4, :cond_8

    .line 181
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_8
    if-ne v2, v4, :cond_a

    .line 189
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 196
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    move v0, v7

    :goto_3
    goto/16 :goto_1

    :cond_9
    move v0, v8

    goto :goto_3

    .line 204
    :cond_a
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 209
    add-int/lit8 v5, v5, 0x1

    .line 211
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    move v0, v7

    :goto_4
    goto/16 :goto_1

    :cond_b
    move v0, v8

    goto :goto_4

    .line 219
    .end local v2    # "listId":I
    .end local v4    # "templistId":I
    :cond_c
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$300(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
