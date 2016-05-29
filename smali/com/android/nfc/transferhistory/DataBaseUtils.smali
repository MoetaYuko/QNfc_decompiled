.class public Lcom/android/nfc/transferhistory/DataBaseUtils;
.super Ljava/lang/Object;
.source "DataBaseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteHistoryfromDB(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public static getFileNameFromBtopp(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 36
    sget-object v1, Lcom/android/nfc/transferhistory/HwBeamStore;->BLUETOOTH_URI:Landroid/net/Uri;

    .line 37
    .local v1, "mUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "mUserWhere":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 42
    .local v4, "mUserWhereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore;->getBTColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 45
    .local v9, "mCur":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 65
    :goto_0
    return-object v5

    .line 48
    :cond_0
    const/4 v7, 0x0

    .line 51
    .local v7, "fileName":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const-string v0, "hint"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 53
    .local v8, "index":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 54
    if-eqz v7, :cond_1

    .line 62
    .end local v8    # "index":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 65
    goto :goto_0

    .line 58
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insertHistoryIntoDB(Lcom/android/nfc/transferhistory/NfcTransferInfo;Landroid/content/Context;)V
    .locals 6
    .param p0, "info"    # Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "file_path"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v3, "mime_type"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v3, "file_name"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v3, "file_size"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    const-string v3, "current_size"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    const-string v3, "friendly_name"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "transfer_direction"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    const-string v3, "transfer_result"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    const-string v3, "failed_reason"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 30
    .local v1, "date":Ljava/util/Date;
    const-string v3, "complete_time"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 32
    .local v0, "apUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public static queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 70
    .local v3, "mUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transfer_direction"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "mUserWhere":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 75
    .local v6, "mUserWhereArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore;->getTransferColumns()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 78
    .local v24, "mCur":Landroid/database/Cursor;
    if-nez v24, :cond_0

    .line 79
    const/16 v23, 0x0

    .line 121
    :goto_0
    return-object v23

    .line 82
    :cond_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    :goto_1
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 88
    .local v8, "id":I
    const-string v2, "file_path"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "filePath":Ljava/lang/String;
    const-string v2, "mime_type"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "mimeType":Ljava/lang/String;
    const-string v2, "file_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "fileName":Ljava/lang/String;
    const-string v2, "file_size"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 96
    .local v12, "fileSize":J
    const-string v2, "current_size"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 98
    .local v14, "currentSize":J
    const-string v2, "friendly_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 100
    .local v16, "friendName":Ljava/lang/String;
    const-string v2, "transfer_direction"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 102
    .local v17, "transferDir":I
    const-string v2, "transfer_result"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 104
    .local v18, "result":I
    const-string v2, "failed_reason"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 106
    .local v19, "resason":I
    const-string v2, "complete_time"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 109
    .local v20, "completeTime":J
    new-instance v7, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-direct/range {v7 .. v21}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    .line 111
    .local v7, "transerinfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 114
    .end local v7    # "transerinfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .end local v8    # "id":I
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "fileSize":J
    .end local v14    # "currentSize":J
    .end local v16    # "friendName":Ljava/lang/String;
    .end local v17    # "transferDir":I
    .end local v18    # "result":I
    .end local v19    # "resason":I
    .end local v20    # "completeTime":J
    :catch_0
    move-exception v22

    .line 115
    .local v22, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/16 v23, 0x0

    .line 118
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    :cond_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v2
.end method
