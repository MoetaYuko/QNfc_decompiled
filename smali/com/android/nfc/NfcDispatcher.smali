.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 103
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 107
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v2, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 108
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 124
    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 125
    return-void

    .line 109
    .end local v1    # "provisionMimes":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 120
    .restart local v1    # "provisionMimes":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 838
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 14
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 438
    const/4 v3, 0x1

    .line 439
    .local v3, "URI_PREFIX_HTTP_WWW":B
    const/4 v2, 0x2

    .line 440
    .local v2, "URI_PREFIX_HTTPS_WWW":B
    const/4 v0, 0x3

    .line 441
    .local v0, "URI_PREFIX_HTTP":B
    const/4 v1, 0x4

    .line 443
    .local v1, "URI_PREFIX_HTTPS":B
    const/4 v5, 0x0

    .line 444
    .local v5, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/Tag;->getId()[B

    move-result-object v7

    .line 446
    .local v7, "tagId":[B
    array-length v9, v7

    if-lt v9, v13, :cond_2

    aget-byte v9, v7, v11

    if-eq v9, v11, :cond_0

    aget-byte v9, v7, v11

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    aget-byte v9, v7, v11

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    aget-byte v9, v7, v11

    if-ne v9, v13, :cond_2

    .line 453
    :cond_0
    const/4 v4, 0x2

    .line 454
    .local v4, "end":I
    :goto_0
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ge v4, v9, :cond_1

    .line 455
    aget-byte v9, v7, v4

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    .line 459
    :cond_1
    add-int/lit8 v9, v4, -0x1

    new-array v6, v9, [B

    .line 460
    .local v6, "payload":[B
    array-length v9, v6

    invoke-static {v7, v11, v6, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 461
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v8, v11, v9, v7, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 463
    .local v8, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    .end local v5    # "message":Landroid/nfc/NdefMessage;
    new-array v9, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v5, v8, v9}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 465
    .end local v4    # "end":I
    .end local v6    # "payload":[B
    .end local v8    # "uriRecord":Landroid/nfc/NdefRecord;
    .restart local v5    # "message":Landroid/nfc/NdefMessage;
    :cond_2
    return-object v5

    .line 454
    .restart local v4    # "end":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 672
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 673
    .local v5, "record":Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 675
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 848
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 852
    const/4 v2, 0x0

    .line 853
    .local v2, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 860
    const/4 v2, 0x1

    .line 865
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 866
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    return v2

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 12
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 268
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 269
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 270
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 271
    .local v9, "provisioningOnly":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v10, 0x0

    .line 274
    .local v10, "screenUnlocked":Z
    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v10

    .line 277
    if-nez v10, :cond_0

    .line 278
    const/4 v0, 0x2

    .line 340
    :goto_0
    return v0

    .line 271
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v9    # "provisioningOnly":Z
    .end local v10    # "screenUnlocked":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 282
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v9    # "provisioningOnly":Z
    .restart local v10    # "screenUnlocked":Z
    :cond_0
    const/4 v3, 0x0

    .line 283
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 284
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_2

    .line 285
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 293
    :cond_1
    :goto_1
    const-string v0, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatch tag: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " message: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 297
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 299
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    if-eqz v10, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 287
    .end local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_2
    invoke-static {p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v8

    .line 288
    .local v8, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 289
    invoke-direct {p0, v8}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v3

    goto :goto_1

    .line 301
    .end local v8    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    .restart local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz v10, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    const-string v0, "NfcDispatcher"

    const-string v2, "matched NFC WPS TOKEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v10, :cond_7

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 314
    :cond_8
    invoke-virtual {p0, v1, v3, v9}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    if-eqz v10, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 318
    :cond_a
    if-eqz v10, :cond_b

    .line 320
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 323
    :cond_b
    if-eqz v9, :cond_c

    .line 325
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 329
    :cond_c
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 333
    :cond_d
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 334
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 335
    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 339
    :cond_e
    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method public dispatchTag(Landroid/nfc/dta/TagDta;)Z
    .locals 10
    .param p1, "tag"    # Landroid/nfc/dta/TagDta;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 345
    const/4 v3, 0x0

    .line 359
    .local v3, "message":Landroid/nfc/NdefMessage;
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/dta/TagDta;Landroid/nfc/NdefMessage;)V

    .line 360
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 362
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 363
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 364
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 365
    .local v7, "provisioningOnly":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 369
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/dta/TagDta;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 398
    :goto_0
    return v0

    .line 365
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v7    # "provisioningOnly":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 373
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v7    # "provisioningOnly":Z
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 375
    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0, v1, v3, v7}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    if-eqz v7, :cond_3

    move v0, v9

    .line 384
    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/dta/TagDta;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    .line 388
    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 392
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 394
    goto :goto_0

    .line 397
    :cond_5
    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 398
    goto :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 872
    monitor-enter p0

    .line 873
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    monitor-exit p0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 823
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v4

    .line 825
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 826
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 830
    .end local v3    # "tech":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 566
    if-eqz p2, :cond_2

    .line 567
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 568
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "NfcDispatcher"

    invoke-virtual {v1, v6, p1, v5, v7}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 575
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 567
    .restart local v0    # "arr$":[Landroid/content/IntentFilter;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    if-eqz p3, :cond_0

    :cond_3
    move v4, v5

    .line 575
    goto :goto_1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 579
    if-nez p2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v5

    .line 583
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "tagTechs":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 585
    move-object v0, p2

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 586
    .local v1, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v1}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 587
    const/4 v5, 0x1

    goto :goto_0

    .line 585
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method isTechMatch(Landroid/nfc/dta/TagDta;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Landroid/nfc/dta/TagDta;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 594
    if-nez p2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v5

    .line 598
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/dta/TagDta;->getTechList()[Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "tagTechs":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 600
    move-object v0, p2

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 601
    .local v1, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v1}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 602
    const/4 v5, 0x1

    goto :goto_0

    .line 600
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method resumeAppSwitches()V
    .locals 1

    .prologue
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 131
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 132
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .locals 13
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 609
    if-nez p2, :cond_0

    .line 610
    const/4 v10, 0x0

    .line 667
    :goto_0
    return v10

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v6

    .line 615
    .local v6, "intent":Landroid/content/Intent;
    if-nez v6, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 617
    :cond_1
    if-eqz p3, :cond_3

    .line 618
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 620
    :cond_2
    const-string v10, "NfcDispatcher"

    const-string v11, "Dropping NFC intent in provisioning mode."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v10, 0x0

    goto :goto_0

    .line 626
    :cond_3
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 628
    .local v8, "pkg":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 630
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v10, 0x1

    goto :goto_0

    .line 636
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 637
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 640
    .local v4, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 641
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 647
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 648
    .local v1, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 649
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to application launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 643
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 644
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "NfcDispatcher"

    const-string v11, "Could not create user package context"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 653
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v2    # "currentUser":Landroid/os/UserHandle;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 654
    .local v7, "marketIntent":Landroid/content/Intent;
    if-eqz v7, :cond_7

    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 655
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to market launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 661
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "firstPackage":Ljava/lang/String;
    .end local v7    # "marketIntent":Landroid/content/Intent;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 663
    const-string v10, "NfcDispatcher"

    const-string v11, "matched NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 667
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 470
    if-nez p4, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    if-eqz p3, :cond_3

    .line 477
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 478
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 481
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 482
    const-string v2, "NfcDispatcher"

    const-string v5, "matched NDEF override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 483
    goto :goto_0

    :cond_2
    move v2, v4

    .line 478
    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 491
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 492
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 495
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TECH override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .line 496
    goto :goto_0

    .line 497
    :catch_1
    move-exception v0

    .line 498
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 503
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v1

    .line 504
    if-eqz p6, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 507
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TAG override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v3

    .line 508
    goto :goto_0

    :cond_5
    move v2, v4

    .line 504
    goto :goto_2

    .line 509
    :catch_2
    move-exception v0

    .line 510
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/dta/TagDta;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/dta/TagDta;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 518
    if-nez p4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v4

    .line 524
    :cond_1
    if-eqz p3, :cond_3

    .line 525
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 530
    const-string v2, "NfcDispatcher"

    const-string v5, "matched NDEF override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 531
    goto :goto_0

    :cond_2
    move v2, v4

    .line 526
    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 539
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 540
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/dta/TagDta;[[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 543
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TECH override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .line 544
    goto :goto_0

    .line 545
    :catch_1
    move-exception v0

    .line 546
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 551
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v1

    .line 552
    if-eqz p6, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 555
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TAG override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v3

    .line 556
    goto :goto_0

    :cond_5
    move v2, v4

    .line 552
    goto :goto_2

    .line 557
    :catch_2
    move-exception v0

    .line 558
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 790
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v3, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v2

    .line 792
    :cond_1
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryHandover(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 795
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v3, :cond_0

    .line 797
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "device"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 799
    const-string v2, "headsetname"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v2, "transporttype"

    iget v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 803
    const/4 v2, 0x1

    goto :goto_0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 684
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v8

    .line 685
    .local v8, "tagTechs":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 688
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v5, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    .line 693
    .local v7, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 694
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 701
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 703
    .local v3, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 706
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 707
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 696
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NfcDispatcher"

    const-string v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v9, 0x0

    .line 732
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v9

    .line 712
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 714
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 715
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 717
    const-string v9, "NfcDispatcher"

    const-string v10, "matched single TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v9, 0x1

    goto :goto_1

    .line 720
    :cond_2
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 732
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 721
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 723
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    const-string v9, "rlist"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 728
    const-string v9, "NfcDispatcher"

    const-string v10, "matched multiple TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v9, 0x1

    goto :goto_1
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/dta/TagDta;)Z
    .locals 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/dta/TagDta;

    .prologue
    .line 736
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 738
    invoke-virtual {p2}, Landroid/nfc/dta/TagDta;->getTechList()[Ljava/lang/String;

    move-result-object v8

    .line 739
    .local v8, "tagTechs":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 742
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v5, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    .line 747
    .local v7, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 748
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 755
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 757
    .local v3, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 760
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 761
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NfcDispatcher"

    const-string v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v9, 0x0

    .line 786
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v9

    .line 766
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 768
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 769
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 771
    const-string v9, "NfcDispatcher"

    const-string v10, "matched single TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v9, 0x1

    goto :goto_1

    .line 774
    :cond_2
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 786
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 775
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 777
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    const-string v9, "rlist"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 781
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 782
    const-string v9, "NfcDispatcher"

    const-string v10, "matched multiple TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v9, 0x1

    goto :goto_1
.end method
