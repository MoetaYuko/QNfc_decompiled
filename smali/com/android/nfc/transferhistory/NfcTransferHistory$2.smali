.class Lcom/android/nfc/transferhistory/NfcTransferHistory$2;
.super Ljava/lang/Object;
.source "NfcTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 409
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # invokes: Lcom/android/nfc/transferhistory/NfcTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$900(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    .line 413
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # getter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$1000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    return-void
.end method
