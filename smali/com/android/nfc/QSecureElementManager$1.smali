.class Lcom/android/nfc/QSecureElementManager$1;
.super Landroid/content/BroadcastReceiver;
.source "QSecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QSecureElementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/QSecureElementManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/QSecureElementManager;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/nfc/QSecureElementManager$1;->this$0:Lcom/android/nfc/QSecureElementManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.nfc.action.GET_DEFAULT_ISO_DEP_ROUTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager$1;->this$0:Lcom/android/nfc/QSecureElementManager;

    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager$1;->this$0:Lcom/android/nfc/QSecureElementManager;

    # getter for: Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;
    invoke-static {v3}, Lcom/android/nfc/QSecureElementManager;->access$000(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v2, "com.android.nfc.action.SET_DEFAULT_ISO_DEP_ROUTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const-string v2, "com.android.nfc_extras.extra.SE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "seName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager$1;->this$0:Lcom/android/nfc/QSecureElementManager;

    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager$1;->this$0:Lcom/android/nfc/QSecureElementManager;

    # getter for: Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;
    invoke-static {v3}, Lcom/android/nfc/QSecureElementManager;->access$000(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3, v1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method
