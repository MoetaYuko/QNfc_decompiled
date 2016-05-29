.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 277
    new-instance v0, Lcom/android/nfc/BeamShareActivity$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$5;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private beamData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)V
    .locals 4
    .param p1, "ndefmessage"    # Landroid/nfc/NdefMessage;
    .param p2, "uriarray"    # [Landroid/net/Uri;

    .prologue
    .line 265
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 266
    .local v0, "myUserHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/nfc/BeamShareData;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v0, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 267
    .local v1, "shareData":Landroid/nfc/BeamShareData;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;Landroid/nfc/BeamShareData;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 275
    return-void
.end method

.method private showNfcDialogAndExit(I)V
    .locals 8
    .param p1, "msgId"    # I

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "androidhwext:style/Theme.Emui.Dialog.Alert"

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 103
    .local v7, "themeID":I
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 106
    .local v6, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v0, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    const v0, 0x1040013

    new-instance v1, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const v0, 0x1040009

    new-instance v1, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 133
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->requestWindowFeature(I)Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 82
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 83
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    const v0, 0x7f080026

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const-string v14, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 169
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v14

    if-ge v3, v14, :cond_5

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 173
    .local v5, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 174
    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "plainText":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 176
    const-string v14, "BeamShareActivity"

    const-string v15, "Found uri in ClipData."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 170
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_2
    if-eqz v8, :cond_3

    .line 179
    const-string v14, "BeamShareActivity"

    const-string v15, "Found text in ClipData."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_3
    const-string v14, "BeamShareActivity"

    const-string v15, "Did not find any shareable data in ClipData."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 186
    .end local v3    # "i":I
    .end local v5    # "item":Landroid/content/ClipData$Item;
    .end local v8    # "plainText":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 187
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 188
    .restart local v11    # "uri":Landroid/net/Uri;
    const-string v14, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 189
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v11, :cond_6

    .line 190
    const-string v14, "BeamShareActivity"

    const-string v15, "Found uri in ACTION_SEND intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 220
    .end local v9    # "text":Ljava/lang/CharSequence;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v12, v14, [Landroid/net/Uri;

    .line 223
    .local v12, "uriArray":[Landroid/net/Uri;
    const/4 v6, 0x0

    .line 224
    .local v6, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 226
    .restart local v11    # "uri":Landroid/net/Uri;
    :try_start_0
    const-string v14, "com.android.nfc"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v15}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numValidUris":I
    .local v7, "numValidUris":I
    :try_start_1
    aput-object v11, v12, v6

    .line 228
    const-string v14, "BeamShareActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found uri: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v7

    .line 234
    .end local v7    # "numValidUris":I
    .restart local v6    # "numValidUris":I
    goto :goto_4

    .line 192
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "numValidUris":I
    .end local v12    # "uriArray":[Landroid/net/Uri;
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v9, :cond_7

    .line 193
    const-string v14, "BeamShareActivity"

    const-string v15, "Found EXTRA_TEXT in ACTION_SEND intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_3

    .line 196
    :cond_7
    const-string v14, "BeamShareActivity"

    const-string v15, "Did not find any shareable data in ACTION_SEND intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 199
    .end local v9    # "text":Ljava/lang/CharSequence;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 200
    .local v13, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v14, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 203
    .local v10, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 204
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 205
    .restart local v11    # "uri":Landroid/net/Uri;
    const-string v14, "BeamShareActivity"

    const-string v15, "Found uri in ACTION_SEND_MULTIPLE intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_5

    .line 208
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 210
    const-string v14, "BeamShareActivity"

    const-string v15, "Found text in ACTION_SEND_MULTIPLE intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    :cond_a
    const-string v14, "BeamShareActivity"

    const-string v15, "Did not find any shareable data in ACTION_SEND_MULTIPLE intent."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 229
    .end local v10    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "numValidUris":I
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "uriArray":[Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_6
    const-string v14, "BeamShareActivity"

    const-string v15, "Security exception granting uri permission to NFC process."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v6, 0x0

    .line 235
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_b
    const-string v14, "BeamShareActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "numValidUris = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-lez v6, :cond_c

    .line 238
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/nfc/BeamShareActivity;->beamData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 244
    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/nfc/BeamShareActivity;->beamData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 248
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "numValidUris":I
    .end local v12    # "uriArray":[Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v14, :cond_e

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/nfc/BeamShareActivity;->beamData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)V

    .line 251
    const-string v14, "BeamShareActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Created NDEF message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 255
    :cond_e
    const-string v14, "BeamShareActivity"

    const-string v15, "Could not find any data to parse."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/nfc/BeamShareActivity;->beamData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 229
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "numValidUris":I
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "uriArray":[Landroid/net/Uri;
    :catch_1
    move-exception v2

    move v6, v7

    .end local v7    # "numValidUris":I
    .restart local v6    # "numValidUris":I
    goto/16 :goto_6
.end method

.method tryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 153
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method
