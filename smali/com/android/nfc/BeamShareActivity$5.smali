.class Lcom/android/nfc/BeamShareActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "BeamShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/BeamShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    if-nez p2, :cond_1

    .line 281
    const-string v2, "BeamShareActivity"

    const-string v3, "intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, v3, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method
