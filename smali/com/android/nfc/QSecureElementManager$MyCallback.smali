.class final Lcom/android/nfc/QSecureElementManager$MyCallback;
.super Lcom/android/nfc/QNfcService$HandlerCallback;
.source "QSecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QSecureElementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyCallback"
.end annotation


# static fields
.field static final MSG_CARD_EMULATION:I = 0x1

.field static final MSG_COMMIT_ROUTING:I = 0x12

.field static final MSG_DISABLE_CARD_EMULATION_MODE:I = 0x17

.field static final MSG_DISABLE_CLF_AID_FILTER_COND:I = 0x1b

.field static final MSG_ENABLE_CARD_EMULATION_MODE:I = 0x16

.field static final MSG_ENABLE_CLF_AID_FILTER_COND:I = 0x1a

.field static final MSG_ENABLE_NFC_ADAPTER:I = 0x14

.field static final MSG_GET_DEFAULT_ISO_DEP_ROUTE:I = 0x1d

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x2

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x3

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0xf

.field static final MSG_MOCK_NDEF:I = 0x7

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_NOTIFY_RF_INTF_DEACTIVATED:I = 0x1c

.field static final MSG_ROUTE_AID:I = 0x10

.field static final MSG_SET_ACTIVE_SECURE_ELEMENT:I = 0x18

.field static final MSG_SET_CLF_AID_FILTER_LIST:I = 0x19

.field static final MSG_SET_DEFAULT_ISO_DEP_ROUTE:I = 0x1e

.field static final MSG_SE_APDU_RECEIVED:I = 0xa

.field static final MSG_SE_DELIVER_INTENT:I = 0x13

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0xb

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0xd

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0xe

.field static final MSG_SE_MIFARE_ACCESS:I = 0xc

.field static final MSG_TARGET_DESELECTED:I = 0x4

.field static final MSG_UNROUTE_AID:I = 0x11

.field static final MSG_UPDATE_CARD_EMULATION_ROUTE:I = 0x15


# instance fields
.field final synthetic this$0:Lcom/android/nfc/QSecureElementManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/QSecureElementManager;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    invoke-direct {p0}, Lcom/android/nfc/QNfcService$HandlerCallback;-><init>()V

    return-void
.end method

.method private applyRouting(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static {v0}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 307
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 46
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    if-nez p1, :cond_1

    .line 311
    const-string v42, "nfc:QSecureElementManager"

    const-string v43, "SecureElementManager callback handler discarding null message"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    .line 660
    :pswitch_0
    const-string v42, "nfc:QSecureElementManager"

    const-string v43, "Unknown message received"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 325
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v14, v42

    check-cast v14, [B

    .line 326
    .local v14, "dataBuf":[B
    const/4 v4, 0x0

    .line 327
    .local v4, "aid":[B
    const/16 v33, 0x0

    .line 328
    .local v33, "param":[B
    const/16 v32, 0x0

    .line 330
    .local v32, "nfceeId":[B
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 331
    const/16 v42, 0x0

    const/16 v43, 0x0

    aget-byte v43, v14, v43

    aput-byte v43, v32, v42

    .line 333
    const/16 v42, 0x1

    aget-byte v24, v14, v42

    .line 334
    .local v24, "lengthOfAid":I
    const/16 v25, 0x0

    .line 335
    .local v25, "lengthOfParam":I
    array-length v0, v14

    move/from16 v42, v0

    add-int/lit8 v43, v24, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    .line 336
    add-int/lit8 v42, v24, 0x2

    aget-byte v25, v14, v42

    .line 338
    :cond_3
    if-lez v24, :cond_4

    .line 339
    move/from16 v0, v24

    new-array v4, v0, [B

    .line 340
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 341
    add-int/lit8 v42, v21, 0x2

    aget-byte v42, v14, v42

    aput-byte v42, v4, v21

    .line 340
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 344
    .end local v21    # "i":I
    :cond_4
    if-lez v25, :cond_5

    .line 345
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v33, v0

    .line 346
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 347
    add-int/lit8 v42, v24, 0x2

    add-int v42, v42, v21

    add-int/lit8 v42, v42, 0x1

    aget-byte v42, v14, v42

    aput-byte v42, v33, v21

    .line 346
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 351
    .end local v21    # "i":I
    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v5, "aidIntent":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    if-lez v24, :cond_6

    .line 354
    const-string v42, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v42

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 355
    :cond_6
    if-lez v25, :cond_7

    .line 356
    const-string v42, "com.android.nfc_extras.extra.DATA"

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 357
    :cond_7
    if-eqz v32, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    const/16 v43, 0x0

    aget-byte v43, v32, v43

    invoke-interface/range {v42 .. v43}, Lcom/android/nfc/DeviceHost;->getSecureElementName(I)Ljava/lang/String;

    move-result-object v38

    .line 359
    .local v38, "seName":Ljava/lang/String;
    if-eqz v38, :cond_8

    .line 360
    const-string v42, "com.android.nfc_extras.extra.SE_NAME"

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    .end local v38    # "seName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/nfc/QSecureElementManager;->mIsSentUnicastReception:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v5}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    .end local v4    # "aid":[B
    .end local v5    # "aidIntent":Landroid/content/Intent;
    .end local v14    # "dataBuf":[B
    .end local v24    # "lengthOfAid":I
    .end local v25    # "lengthOfParam":I
    .end local v32    # "nfceeId":[B
    .end local v33    # "param":[B
    :pswitch_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v11, "cardRemovalIntent":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v11}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    .end local v11    # "cardRemovalIntent":Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v6, v42

    check-cast v6, [B

    .line 384
    .local v6, "apduBytes":[B
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v7, "apduReceivedIntent":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v42, v0

    if-lez v42, :cond_9

    .line 387
    const-string v42, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v42

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 390
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    .end local v6    # "apduBytes":[B
    .end local v7    # "apduReceivedIntent":Landroid/content/Intent;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v30, v42

    check-cast v30, [B

    .line 397
    .local v30, "mifareCmd":[B
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v28, "mifareAccessIntent":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    if-eqz v30, :cond_a

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_a

    .line 400
    const/16 v42, 0x1

    aget-byte v42, v30, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 402
    .local v29, "mifareBlock":I
    const-string v42, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    .end local v29    # "mifareBlock":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 411
    .end local v28    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v30    # "mifareCmd":[B
    :pswitch_5
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v22, "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 419
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v26, "listenModeActivated":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 427
    .end local v26    # "listenModeActivated":Landroid/content/Intent;
    :pswitch_7
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v27, "listenModeDeactivated":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    # invokes: Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/nfc/QSecureElementManager;->access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 435
    .end local v27    # "listenModeDeactivated":Landroid/content/Intent;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/content/Intent;

    .line 437
    .local v36, "seIntent":Landroid/content/Intent;
    invoke-virtual/range {v36 .. v36}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "action":Ljava/lang/String;
    const-string v42, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 439
    const-string v42, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 440
    .local v9, "byteAid":[B
    const-string v42, "com.android.nfc_extras.extra.DATA"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 441
    .local v13, "data":[B
    const-string v42, "com.android.nfc_extras.extra.SE_NAME"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 442
    .restart local v38    # "seName":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuffer;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v40, "strAid":Ljava/lang/StringBuffer;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_3
    array-length v0, v9

    move/from16 v42, v0

    move/from16 v0, v21

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    .line 444
    aget-byte v42, v9, v21

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    .line 445
    .local v20, "hex":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_b

    .line 446
    const/16 v42, 0x30

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 447
    :cond_b
    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 449
    .end local v20    # "hex":Ljava/lang/String;
    :cond_c
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v19, "gsmaIntent":Landroid/content/Intent;
    const-string v42, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    if-eqz v9, :cond_d

    .line 452
    const-string v42, "com.gsma.services.nfc.extra.AID"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 453
    :cond_d
    if-eqz v13, :cond_e

    .line 454
    const-string v42, "com.gsma.services.nfc.extra.DATA"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 457
    :cond_e
    new-instance v41, Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "nfc://secure:0/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 458
    .local v41, "url":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    const/16 v42, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    invoke-virtual/range {v36 .. v36}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager;->mMultiReceptionMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Boolean;

    .line 463
    .local v35, "receptionMode":Ljava/lang/Boolean;
    if-nez v35, :cond_f

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$400(Lcom/android/nfc/QSecureElementManager;)Ljava/lang/Boolean;

    move-result-object v35

    .line 466
    :cond_f
    # getter for: Lcom/android/nfc/QSecureElementManager;->multiReceptionMode:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$500()Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_10

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 472
    :cond_10
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/nfc/QSecureElementManager;->mIsSentUnicastReception:Z

    move/from16 v42, v0

    if-nez v42, :cond_0

    .line 474
    const/high16 v42, 0x10000000

    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$600(Lcom/android/nfc/QSecureElementManager;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/nfc/QSecureElementManager;->mIsSentUnicastReception:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception v42

    goto/16 :goto_0

    .line 483
    .end local v9    # "byteAid":[B
    .end local v13    # "data":[B
    .end local v19    # "gsmaIntent":Landroid/content/Intent;
    .end local v21    # "i":I
    .end local v35    # "receptionMode":Ljava/lang/Boolean;
    .end local v38    # "seName":Ljava/lang/String;
    .end local v40    # "strAid":Ljava/lang/StringBuffer;
    .end local v41    # "url":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 490
    .end local v3    # "action":Ljava/lang/String;
    .end local v36    # "seIntent":Landroid/content/Intent;
    :pswitch_9
    const/16 v23, 0x1

    .line 492
    .local v23, "isSuccess":Z
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_12

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    :goto_4
    if-nez v23, :cond_0

    .line 502
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 503
    .local v34, "pkg":Ljava/lang/String;
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 505
    .local v31, "nfcEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 495
    .end local v31    # "nfcEnableIntent":Landroid/content/Intent;
    .end local v34    # "pkg":Ljava/lang/String;
    :cond_12
    const/16 v23, 0x0

    goto :goto_4

    .line 497
    :catch_1
    move-exception v16

    .line 498
    .local v16, "e":Landroid/os/RemoteException;
    const-string v42, "nfc:QSecureElementManager"

    const-string v43, "failed to enable NfcAdapter"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v23, 0x0

    goto :goto_4

    .line 514
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v23    # "isSuccess":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    .line 515
    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$700()Landroid/content/SharedPreferences$Editor;

    move-result-object v42

    const-string v43, "ee_routing_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    move/from16 v44, v0

    invoke-interface/range {v42 .. v44}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 516
    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$700()Landroid/content/SharedPreferences$Editor;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 523
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$800()Landroid/content/SharedPreferences;

    move-result-object v43

    const-string v44, "ee_routing_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v45, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v45 .. v45}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/nfc/DeviceHost;->getEeRoutingState()I

    move-result v45

    invoke-interface/range {v43 .. v45}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$800()Landroid/content/SharedPreferences;

    move-result-object v43

    const-string v44, "ee_routing_state"

    const/16 v45, 0x0

    invoke-interface/range {v43 .. v45}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    .line 525
    new-instance v8, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v42

    invoke-direct {v8, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 526
    .local v8, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    :try_start_2
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 534
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 535
    .restart local v34    # "pkg":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v10, "cardEmulationEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/nfc/QSecureElementManager;->mNfceeRouteEnabled:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_13

    .line 541
    :cond_13
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    .end local v10    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v34    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 531
    .local v16, "e":Ljava/lang/Exception;
    const-string v42, "nfc:QSecureElementManager"

    const-string v43, "failed to enable card emulation mode"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 549
    .end local v8    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    .line 550
    new-instance v8, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v42

    invoke-direct {v8, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 551
    .restart local v8    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 554
    :try_start_3
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 559
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 560
    .restart local v34    # "pkg":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 567
    .restart local v10    # "cardEmulationEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 555
    .end local v10    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v34    # "pkg":Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 556
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v42, "nfc:QSecureElementManager"

    const-string v43, "failed to disable card emulation mode"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 574
    .end local v8    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 575
    .restart local v38    # "seName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    .line 577
    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$700()Landroid/content/SharedPreferences$Editor;

    move-result-object v42

    const-string v43, "active_secure_element"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v44, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v44 .. v44}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-interface/range {v42 .. v44}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    # getter for: Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->access$700()Landroid/content/SharedPreferences$Editor;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/nfc/QSecureElementManager$MyCallback;->applyRouting(Z)V

    goto/16 :goto_0

    .line 586
    .end local v38    # "seName":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v18, v42

    check-cast v18, [B

    .line 589
    .local v18, "filterList":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->setClfAidFilterList([B)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v43, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v43 .. v43}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService;->mHciUiState:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v44, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v44 .. v44}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    move/from16 v44, v0

    invoke-interface/range {v42 .. v44}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    goto/16 :goto_0

    .line 595
    .end local v18    # "filterList":[B
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 598
    .local v17, "filterConditionTag":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->enableClfAidFilterCondition(B)Z

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v43, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v43 .. v43}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService;->mHciUiState:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v44, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v44 .. v44}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    move/from16 v44, v0

    invoke-interface/range {v42 .. v44}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    goto/16 :goto_0

    .line 604
    .end local v17    # "filterConditionTag":B
    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 607
    .restart local v17    # "filterConditionTag":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->disableClfAidFilterCondition(B)Z

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v43, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v43 .. v43}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService;->mHciUiState:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v44, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v44 .. v44}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    move/from16 v44, v0

    invoke-interface/range {v42 .. v44}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    goto/16 :goto_0

    .line 614
    .end local v17    # "filterConditionTag":B
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/nfc/DeviceHost;->notifyApduGateRfIntfDeactivated()V

    goto/16 :goto_0

    .line 622
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/nfc/DeviceHost;->getSecureElementList()Ljava/lang/String;

    move-result-object v37

    .line 623
    .local v37, "seListWithComma":Ljava/lang/String;
    if-eqz v37, :cond_15

    .line 624
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Device Host,"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 629
    .local v39, "selectionListWithComma":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/nfc/DeviceHost;->getDefaultRoute()Ljava/lang/String;

    move-result-object v12

    .line 630
    .local v12, "currentDefaultRoute":Ljava/lang/String;
    if-nez v12, :cond_16

    .line 631
    new-instance v12, Ljava/lang/String;

    .end local v12    # "currentDefaultRoute":Ljava/lang/String;
    const-string v42, "TBD"

    move-object/from16 v0, v42

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 639
    .restart local v12    # "currentDefaultRoute":Ljava/lang/String;
    :cond_14
    :goto_8
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$600(Lcom/android/nfc/QSecureElementManager;)Landroid/content/Context;

    move-result-object v42

    const-class v43, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    .local v15, "dialogIntent":Landroid/content/Intent;
    const-string v42, "com.android.nfc_extras.extra.SE_NAME"

    move-object/from16 v0, v42

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v42, "com.android.nfc_extras.extra.SE_NAME_LIST"

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const/high16 v42, 0x10000000

    move/from16 v0, v42

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$600(Lcom/android/nfc/QSecureElementManager;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 626
    .end local v12    # "currentDefaultRoute":Ljava/lang/String;
    .end local v15    # "dialogIntent":Landroid/content/Intent;
    .end local v39    # "selectionListWithComma":Ljava/lang/String;
    :cond_15
    new-instance v39, Ljava/lang/String;

    const-string v42, "Device Host"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v39    # "selectionListWithComma":Ljava/lang/String;
    goto :goto_7

    .line 632
    .restart local v12    # "currentDefaultRoute":Ljava/lang/String;
    :cond_16
    const-string v42, "DH"

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_14

    .line 633
    new-instance v12, Ljava/lang/String;

    .end local v12    # "currentDefaultRoute":Ljava/lang/String;
    const-string v42, "Device Host"

    move-object/from16 v0, v42

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v12    # "currentDefaultRoute":Ljava/lang/String;
    goto :goto_8

    .line 650
    .end local v12    # "currentDefaultRoute":Ljava/lang/String;
    .end local v37    # "seListWithComma":Ljava/lang/String;
    .end local v39    # "selectionListWithComma":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 651
    .restart local v38    # "seName":Ljava/lang/String;
    const-string v42, "Device Host"

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_17

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    const-string v43, "DH"

    invoke-virtual/range {v42 .. v43}, Lcom/android/nfc/NfcService;->setDefaultRoute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$MyCallback;->this$0:Lcom/android/nfc/QSecureElementManager;

    move-object/from16 v42, v0

    # getter for: Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;
    invoke-static/range {v42 .. v42}, Lcom/android/nfc/QSecureElementManager;->access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->setDefaultRoute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
