.class Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;
.super Ljava/lang/Object;
.source "SelectDefaultIsoDepRouteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$selectedRoute:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    iput-object p2, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->val$selectedRoute:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->val$selectedRoute:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.SET_DEFAULT_ISO_DEP_ROUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc_extras.extra.SE_NAME"

    iget-object v1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->val$selectedRoute:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;->this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    invoke-virtual {v1}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->finish()V

    .line 98
    return-void
.end method
