.class Lcom/android/nfc/NfcService$DtaHelperService$2;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$DtaHelperService;->snep_server_create(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private storedNdef:Landroid/nfc/NdefMessage;

.field final synthetic this$1:Lcom/android/nfc/NfcService$DtaHelperService;

.field final synthetic val$enableExtendedDTAServer:Z


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$DtaHelperService;Z)V
    .locals 1

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->this$1:Lcom/android/nfc/NfcService$DtaHelperService;

    iput-boolean p2, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->val$enableExtendedDTAServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->storedNdef:Landroid/nfc/NdefMessage;

    return-void
.end method


# virtual methods
.method public doClean()V
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->storedNdef:Landroid/nfc/NdefMessage;

    .line 1244
    return-void
.end method

.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1206
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NfcAdapterService::SnepMessage::doGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    if-eqz p2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->this$1:Lcom/android/nfc/NfcService$DtaHelperService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SnepServer GET: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->this$1:Lcom/android/nfc/NfcService$DtaHelperService;

    invoke-virtual {v4, p2}, Lcom/android/nfc/NfcService$DtaHelperService;->get_text_from_ndef(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$DtaHelperService;->showToast(Ljava/lang/String;)V

    .line 1212
    :cond_0
    iget-boolean v2, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->val$enableExtendedDTAServer:Z

    if-nez v2, :cond_1

    .line 1213
    const/16 v2, -0x20

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1237
    :goto_0
    return-object v1

    .line 1218
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->storedNdef:Landroid/nfc/NdefMessage;

    if-eqz v2, :cond_4

    .line 1220
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1221
    .local v0, "firstRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1222
    const-string v2, "NfcService"

    const-string v3, "NfcAdapterService::SnepMessage::doGet: Requested data found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->storedNdef:Landroid/nfc/NdefMessage;

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1225
    .local v1, "successResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 1226
    const-string v2, "NfcService"

    const-string v3, "NfcAdapterService::SnepMessage::doGet: Requested data is too long!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v2, -0x3f

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0

    .line 1229
    :cond_2
    const-string v2, "NfcService"

    const-string v3, "NfcAdapterService::SnepMessage::doGet: Requested data length OK! Returning in Success Response"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    .end local v1    # "successResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_3
    const-string v2, "NfcService"

    const-string v3, "NfcAdapterService::SnepMessage::doGet: NDEF of type other than RTD_TEXT requested. Returning not found."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getNotFoundResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0

    .line 1237
    .end local v0    # "firstRecord":Landroid/nfc/NdefRecord;
    :cond_4
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getNotFoundResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1189
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NfcAdapterService::SnepMessage::doPut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->this$1:Lcom/android/nfc/NfcService$DtaHelperService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnepServer PUT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->this$1:Lcom/android/nfc/NfcService$DtaHelperService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService$DtaHelperService;->get_text_from_ndef(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$DtaHelperService;->showToast(Ljava/lang/String;)V

    .line 1195
    :cond_0
    if-eqz p1, :cond_1

    .line 1196
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1197
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    iput-object p1, p0, Lcom/android/nfc/NfcService$DtaHelperService$2;->storedNdef:Landroid/nfc/NdefMessage;

    .line 1199
    const-string v1, "NfcService"

    const-string v2, "NfcAdapterService::SnepMessage::doPut: NDEF Stored!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v0    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    const/16 v1, -0x7f

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1
.end method
