.class Lcom/android/nfc/beam/BeamReceiveService$1;
.super Landroid/content/BroadcastReceiver;
.source "BeamReceiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamReceiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/BeamReceiveService;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/BeamReceiveService;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z
    invoke-static {v2, v3}, Lcom/android/nfc/beam/BeamReceiveService;->access$002(Lcom/android/nfc/beam/BeamReceiveService;Z)Z

    .line 47
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
