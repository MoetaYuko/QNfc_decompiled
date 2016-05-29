.class Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;
.super Landroid/database/ContentObserver;
.source "NfcTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;


# direct methods
.method public constructor <init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .line 86
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    # setter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$202(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;)Landroid/content/Context;

    .line 88
    # setter for: Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;
    invoke-static {p1, p3}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$302(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/os/Handler;)Landroid/os/Handler;

    .line 89
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 93
    const-string v0, "NfcTransferHistory"

    const-string v1, "ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    # invokes: Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$400(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    .line 95
    return-void
.end method
