.class Lcom/android/nfc/NfcApplication$1;
.super Ljava/lang/Thread;
.source "NfcApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcApplication;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcApplication;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/nfc/NfcApplication$1;->this$0:Lcom/android/nfc/NfcApplication;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v1, p0, Lcom/android/nfc/NfcApplication$1;->this$0:Lcom/android/nfc/NfcApplication;

    invoke-virtual {v1}, Lcom/android/nfc/NfcApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getTableCount"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "key_table_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 89
    const-string v1, "NfcApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "key_table_count"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/nfc/NfcApplication$1;->this$0:Lcom/android/nfc/NfcApplication;

    invoke-virtual {v1}, Lcom/android/nfc/NfcApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "deleteRedundanceRecord"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 92
    :cond_0
    return-void
.end method
