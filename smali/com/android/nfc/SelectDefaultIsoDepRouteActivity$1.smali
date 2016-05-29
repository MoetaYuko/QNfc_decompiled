.class Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$1;
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


# direct methods
.method constructor <init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$1;->this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 103
    const-string v0, "nfc:SelectDefaultIsoDepRouteActivity"

    const-string v1, "Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$1;->this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    invoke-virtual {v0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->finish()V

    .line 105
    return-void
.end method
