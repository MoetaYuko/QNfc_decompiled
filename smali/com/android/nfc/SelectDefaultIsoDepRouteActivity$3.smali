.class Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;
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

.field final synthetic val$routeList:[Ljava/lang/String;

.field final synthetic val$selectedRoute:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->this$0:Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;

    iput-object p2, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->val$selectedRoute:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->val$routeList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->val$selectedRoute:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->val$selectedRoute:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;->val$routeList:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
