.class public Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;
.super Landroid/app/Activity;
.source "SelectDefaultIsoDepRouteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nfc:SelectDefaultIsoDepRouteActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x2

    invoke-direct {v2, p0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 48
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 49
    .local v6, "launchIntent":Landroid/content/Intent;
    const-string v11, "com.android.nfc_extras.extra.SE_NAME"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "currentRoute":Ljava/lang/String;
    const-string v11, "com.android.nfc_extras.extra.SE_NAME_LIST"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "seListWithComma":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 53
    const-string v11, "nfc:SelectDefaultIsoDepRouteActivity"

    const-string v12, "current default route is not valid"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Ljava/lang/String;

    .end local v3    # "currentRoute":Ljava/lang/String;
    const-string v11, "TBD"

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v3    # "currentRoute":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 57
    const-string v11, "nfc:SelectDefaultIsoDepRouteActivity"

    const-string v12, "no secure element found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "seList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v11, v8

    if-nez v11, :cond_3

    .line 63
    :cond_2
    const-string v11, "nfc:SelectDefaultIsoDepRouteActivity"

    const-string v12, "no secure element found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_3
    array-length v11, v8

    new-array v7, v11, [Ljava/lang/String;

    .line 69
    .local v7, "routeList":[Ljava/lang/String;
    const/4 v4, -0x1

    .line 70
    .local v4, "currentRouteIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eqz v8, :cond_5

    array-length v11, v8

    if-ge v5, v11, :cond_5

    .line 71
    aget-object v11, v8, v5

    aput-object v11, v7, v5

    .line 72
    aget-object v11, v8, v5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 73
    move v4, v5

    .line 70
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v10, "selectedRoute":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, -0x1

    if-eq v4, v11, :cond_6

    .line 78
    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_6
    const-string v11, "Select Default ISO-DEP route"

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;

    invoke-direct {v12, p0, v10, v7}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$3;-><init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {v11, v7, v4, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const-string v12, "OK"

    new-instance v13, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;

    invoke-direct {v13, p0, v10, v1}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$2;-><init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const-string v12, "Cancel"

    new-instance v13, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$1;

    invoke-direct {v13, p0}, Lcom/android/nfc/SelectDefaultIsoDepRouteActivity$1;-><init>(Lcom/android/nfc/SelectDefaultIsoDepRouteActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 109
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
