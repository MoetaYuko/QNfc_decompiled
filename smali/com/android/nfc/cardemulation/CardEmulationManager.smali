.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 77
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 78
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 79
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 80
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 82
    new-instance v0, Lcom/android/nfc/cardemulation/MultiSeManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/MultiSeManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    .line 84
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 85
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    const-string v3, "CardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowing defaults for category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_payment_default_component"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 245
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v2, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getNumSecureElement()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getNumSecureElement()I

    move-result v0

    return v0
.end method

.method public hasAnyServices()Z
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/QApduServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "CardEmulationManager"

    const-string v2, "hasAnyServices return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    .line 142
    :cond_0
    const-string v1, "CardEmulationManager"

    const-string v2, "hasAnyServices return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 276
    .local v0, "serviceFound":Z
    if-nez v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    .line 94
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    .line 98
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 102
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    .line 103
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 120
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 116
    return-void
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 107
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 428
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 429
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 422
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 423
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/QApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 159
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 111
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 112
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultRoute(Ljava/lang/String;)V
    .locals 1
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultRoute(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 271
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 269
    :cond_3
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method verifyDefaults(ILjava/util/List;)V
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/QApduServiceInfo;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 162
    const-string v7, "payment"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 165
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    if-eqz v0, :cond_8

    .line 167
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-result-object v6

    .line 168
    .local v6, "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    if-eqz v6, :cond_0

    const-string v7, "payment"

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 169
    :cond_0
    if-nez v6, :cond_3

    .line 170
    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service unexpectedly removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 175
    .local v4, "numPaymentServices":I
    const/4 v3, 0x0

    .line 176
    .local v3, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 177
    .local v5, "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    add-int/lit8 v4, v4, 0x1

    .line 179
    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    .line 171
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v5    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_3
    const-string v7, "payment"

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 184
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v4    # "numPaymentServices":I
    :cond_4
    if-nez v4, :cond_6

    .line 187
    const-string v7, "payment"

    invoke-virtual {p0, p1, v10, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 231
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_5
    :goto_2
    return-void

    .line 188
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v4    # "numPaymentServices":I
    .restart local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_6
    if-ne v4, v9, :cond_7

    .line 191
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2

    .line 193
    :cond_7
    if-le v4, v9, :cond_5

    .line 197
    const-string v7, "payment"

    invoke-virtual {p0, p1, v10, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 199
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    const v7, 0x10008000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 210
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_8
    const/4 v4, 0x0

    .line 211
    .restart local v4    # "numPaymentServices":I
    const/4 v3, 0x0

    .line 212
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 213
    .restart local v5    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 214
    add-int/lit8 v4, v4, 0x1

    .line 215
    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_3

    .line 218
    .end local v5    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_a
    if-gt v4, v9, :cond_5

    .line 221
    if-ne v4, v9, :cond_5

    .line 224
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2
.end method
