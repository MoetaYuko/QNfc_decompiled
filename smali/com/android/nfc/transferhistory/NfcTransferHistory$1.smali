.class Lcom/android/nfc/transferhistory/NfcTransferHistory$1;
.super Landroid/os/Handler;
.source "NfcTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;
    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->notifyDataSetChanged()V

    .line 74
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # invokes: Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateDeleteListMenu()V
    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$100(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
