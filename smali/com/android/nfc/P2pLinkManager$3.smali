.class Lcom/android/nfc/P2pLinkManager$3;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClean()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 3
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v2, -0x20

    .line 1234
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 1237
    .local v0, "response":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 1239
    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1244
    .end local v0    # "response":Landroid/nfc/NdefMessage;
    :goto_0
    return-object v1

    .line 1241
    .restart local v0    # "response":Landroid/nfc/NdefMessage;
    :cond_0
    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0

    .line 1244
    .end local v0    # "response":Landroid/nfc/NdefMessage;
    :cond_1
    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->onReceiveComplete(Landroid/nfc/NdefMessage;)V

    .line 1223
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method
