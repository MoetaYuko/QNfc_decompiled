.class public Lcom/android/nfc/cardemulation/MultiSeManager;
.super Ljava/lang/Object;
.source "MultiSeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;,
        Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;,
        Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;,
        Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final MAX_DB_SZ:C = '('

.field static final NCI_CLR_PRV_PPSE_RSP:I = 0x2

.field static final NCI_GET_MAX_PPSE_SZ:I = 0x0

.field static final NCI_SET_DEFAULT_PPSE:I = 0x3

.field static final NCI_SET_PPSE_RSP:I = 0x1

.field static final PPSE_AID:Ljava/lang/String; = "325041592E5359532E4444463031"

.field static final TAG:Ljava/lang/String; = "MultiSeManager"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field static mDbCount:I

.field private static mPpseRespSent:Z

.field static mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

.field private static mService:Lcom/android/nfc/cardemulation/MultiSeManager;

.field static mValidServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field final mContext:Landroid/content/Context;

.field final mOffHostServicesFile:Landroid/util/AtomicFile;

.field mPpseResponse:[B

.field public mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mUserDatabase:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseRespSent:Z

    .line 79
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    sput-object v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardEmulationManager"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    .line 104
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 111
    .local v2, "userId":I
    iput-object p1, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 113
    iget-object v3, p2, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 115
    sput-object p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mService:Lcom/android/nfc/cardemulation/MultiSeManager;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x28

    if-ge v1, v3, :cond_0

    .line 118
    sget-object v3, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    new-instance v4, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    invoke-direct {v4, p0}, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V

    aput-object v4, v3, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 122
    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "offhost_services.xml"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    .line 123
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/MultiSeManager;->readOffHostServices()V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->updateDataBase(I)V

    .line 125
    return-void
.end method

.method static bytesToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 449
    const/16 v4, 0x10

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 450
    .local v2, "hexChars":[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 452
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 453
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 454
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 455
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "byteValue":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 449
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private checkAndUpdateInstalledPackages(I)Z
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 538
    const/4 v3, 0x0

    .line 539
    .local v3, "isUpdated":Z
    iget-object v9, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 540
    .local v8, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-nez v8, :cond_0

    move v4, v3

    .line 561
    .end local v3    # "isUpdated":Z
    .local v4, "isUpdated":I
    :goto_0
    return v4

    .line 545
    .end local v4    # "isUpdated":I
    .restart local v3    # "isUpdated":Z
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 552
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 553
    .local v6, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 554
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 555
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 556
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndUpdateInstalledPackages(): remove "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v9, v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/4 v3, 0x1

    goto :goto_1

    .line 547
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "MultiSeManager"

    const-string v10, "checkAndUpdateInstalledPackages(): Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 549
    .restart local v4    # "isUpdated":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "isUpdated":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v4, v3

    .line 561
    .restart local v4    # "isUpdated":I
    goto :goto_0
.end method

.method private createApduServiceFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;)V
    .locals 27
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appPackage"    # Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    const-string v2, "MultiSeManager"

    const-string v3, "createApduServiceFromXml()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/16 v17, 0x0

    .line 828
    .local v17, "foundAttribute":Z
    const/4 v4, 0x0

    .line 829
    .local v4, "seName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 830
    .local v5, "description":Ljava/lang/String;
    const/4 v6, -0x1

    .line 831
    .local v6, "bannerId":I
    const/4 v7, -0x1

    .line 832
    .local v7, "uid":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v8, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v9, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v13, 0x0

    .line 836
    .local v13, "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const/16 v22, 0x0

    .line 838
    .local v22, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 839
    .local v16, "eventType":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 842
    .local v19, "minDepth":I
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_4

    .line 844
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_0

    .line 883
    .local v12, "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "bannerIdString":Ljava/lang/String;
    .local v15, "category":Ljava/lang/String;
    .local v18, "groupDescription":Ljava/lang/String;
    .local v20, "numAidGroups":I
    .local v21, "numAidGroupsString":Ljava/lang/String;
    .local v23, "tagName":Ljava/lang/String;
    .local v24, "uidString":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 884
    const-string v2, "aid_group"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 885
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 886
    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v11, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v11, v12, v15}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 888
    .local v11, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 891
    .end local v11    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    add-int/lit8 v20, v20, -0x1

    .line 892
    if-nez v20, :cond_5

    .line 901
    :cond_2
    const/16 v17, 0x1

    .line 923
    .end local v12    # "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "bannerIdString":Ljava/lang/String;
    .end local v15    # "category":Ljava/lang/String;
    .end local v18    # "groupDescription":Ljava/lang/String;
    .end local v20    # "numAidGroups":I
    .end local v21    # "numAidGroupsString":Ljava/lang/String;
    .end local v24    # "uidString":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 847
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_c

    .line 848
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 849
    .restart local v23    # "tagName":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 850
    const-string v2, "apdu_service"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 851
    const/4 v2, 0x0

    const-string v3, "se_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 852
    const/4 v2, 0x0

    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 853
    const/4 v2, 0x0

    const-string v3, "banner_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 854
    .restart local v14    # "bannerIdString":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 855
    const/4 v2, 0x0

    const-string v3, "uid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 856
    .restart local v24    # "uidString":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 857
    const/4 v2, 0x0

    const-string v3, "num_of_aid_groups"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 858
    .restart local v21    # "numAidGroupsString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 860
    .restart local v20    # "numAidGroups":I
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): seName = "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v26, ", description = "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v26, ", numAidGroups = "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v15, 0x0

    .line 864
    .restart local v15    # "category":Ljava/lang/String;
    const/16 v18, 0x0

    .line 865
    .restart local v18    # "groupDescription":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .restart local v12    # "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 868
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_2

    .line 869
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 870
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 871
    const-string v2, "aid_group"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 872
    const/4 v2, 0x0

    const-string v3, "category"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 873
    const/4 v2, 0x0

    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 875
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): category = "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v26, ", groupDescription = "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_2

    .line 877
    :cond_6
    const-string v2, "aid"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 878
    const/4 v2, 0x0

    const-string v3, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 879
    .local v10, "aid":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 881
    .end local v10    # "aid":Ljava/lang/String;
    :cond_7
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): Ignoring unexpected START_TAG: "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 894
    :cond_8
    const-string v2, "aid"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 896
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): Ignoring unexpected END_TAG: "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 903
    .end local v12    # "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "bannerIdString":Ljava/lang/String;
    .end local v15    # "category":Ljava/lang/String;
    .end local v18    # "groupDescription":Ljava/lang/String;
    .end local v20    # "numAidGroups":I
    .end local v21    # "numAidGroupsString":Ljava/lang/String;
    .end local v24    # "uidString":Ljava/lang/String;
    :cond_9
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): Ignoring unexpected START_TAG: "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 905
    :cond_a
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 906
    const-string v2, "apdu_service"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 907
    if-eqz v17, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 908
    invoke-virtual/range {v2 .. v9}, Lcom/android/nfc/cardemulation/MultiSeManager;->CreateApduServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-result-object v13

    .line 912
    new-instance v22, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .end local v22    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v6}, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;Lcom/android/nfc/cardemulation/QApduServiceInfo;I)V

    .line 913
    .restart local v22    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    const/16 v25, 0x0

    .local v25, "xx":I
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_b

    .line 914
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    move/from16 v0, v25

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 916
    :cond_b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v25    # "xx":I
    :cond_c
    return-void

    .line 920
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_d
    const-string v2, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "createApduServiceFromXml(): Ignoring unexpected END_TAG: "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private createOffHostServicesFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userDatabase"    # Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    const-string v8, "MultiSeManager"

    const-string v9, "createOffHostServicesFromXml()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v5, 0x0

    .line 931
    .local v5, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 933
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 934
    .local v1, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 937
    .local v2, "minDepth":I
    :goto_0
    const/4 v8, 0x2

    if-eq v1, v8, :cond_2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-lt v8, v2, :cond_2

    .line 939
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 958
    .local v3, "numApduServices":I
    .local v4, "numApduServicesString":Ljava/lang/String;
    .local v6, "tagName":Ljava/lang/String;
    .local v7, "xx":I
    :cond_0
    iget-object v8, p2, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .end local v3    # "numApduServices":I
    .end local v4    # "numApduServicesString":Ljava/lang/String;
    .end local v7    # "xx":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 942
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    if-eq v1, v8, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-lt v8, v2, :cond_5

    .line 943
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 944
    .restart local v6    # "tagName":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4

    .line 945
    const-string v8, "package"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 946
    const/4 v8, 0x0

    const-string v9, "package_name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 947
    const/4 v8, 0x0

    const-string v9, "num_of_apdu_services"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 948
    .restart local v4    # "numApduServicesString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 950
    .restart local v3    # "numApduServices":I
    const-string v8, "MultiSeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createOffHostServicesFromXml(): packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numApduServices = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .end local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V

    .line 954
    .restart local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    const/4 v7, 0x0

    .restart local v7    # "xx":I
    :goto_2
    if-ge v7, v3, :cond_0

    .line 955
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 956
    invoke-direct {p0, p1, v5, v0}, Lcom/android/nfc/cardemulation/MultiSeManager;->createApduServiceFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;)V

    .line 954
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 960
    .end local v3    # "numApduServices":I
    .end local v4    # "numApduServicesString":Ljava/lang/String;
    .end local v7    # "xx":I
    :cond_3
    const-string v8, "MultiSeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createOffHostServicesFromXml(): Ignoring unexpected START_TAG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 962
    :cond_4
    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    .line 963
    const-string v8, "package"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 971
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_5
    return-void

    .line 966
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_6
    const-string v8, "MultiSeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createOffHostServicesFromXml(): Ignoring unexpected END_TAG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private createUserDataBaseFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    const-string v9, "MultiSeManager"

    const-string v10, "createUserDataBaseFromXml()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v6, -0x1

    .line 978
    .local v6, "userId":I
    const/4 v5, 0x0

    .line 980
    .local v5, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 981
    .local v0, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 984
    .local v1, "minDepth":I
    :goto_0
    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-lt v9, v1, :cond_2

    .line 986
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 1007
    .local v4, "tagName":Ljava/lang/String;
    :cond_0
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createUserDataBaseFromXml(): Ignoring unexpected START_TAG: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 989
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-eq v0, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-lt v9, v1, :cond_4

    .line 990
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 991
    .restart local v4    # "tagName":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v0, v9, :cond_3

    .line 992
    const-string v9, "user"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 993
    new-instance v5, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .end local v5    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    invoke-direct {v5, p0}, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V

    .line 994
    .restart local v5    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    const/4 v9, 0x0

    const-string v10, "user_id"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 995
    .local v7, "userIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 996
    const/4 v9, 0x0

    const-string v10, "num_of_packages"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "numPackagesString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 999
    .local v2, "numPackages":I
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createUserDataBaseFromXml(): userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", numPackages = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1003
    const/4 v8, 0x0

    .local v8, "xx":I
    :goto_2
    if-ge v8, v2, :cond_1

    .line 1004
    invoke-direct {p0, p1, v5}, Lcom/android/nfc/cardemulation/MultiSeManager;->createOffHostServicesFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;)V

    .line 1003
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1009
    .end local v2    # "numPackages":I
    .end local v3    # "numPackagesString":Ljava/lang/String;
    .end local v7    # "userIdString":Ljava/lang/String;
    .end local v8    # "xx":I
    :cond_3
    const/4 v9, 0x3

    if-ne v0, v9, :cond_1

    .line 1010
    const-string v9, "user"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1011
    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    if-eqz v5, :cond_4

    .line 1012
    iget-object v9, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1021
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    return-void

    .line 1016
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createUserDataBaseFromXml(): Ignoring unexpected END_TAG: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static dumpList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "seName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "powerState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump_list: aid size ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    .local v0, "aid":Ljava/lang/String;
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 360
    .local v4, "se":Ljava/lang/String;
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    .end local v4    # "se":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, "pr":Ljava/lang/String;
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Priority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v2    # "pr":Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 366
    .local v3, "pw":Ljava/lang/String;
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PowerState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 368
    .end local v3    # "pw":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method private findOrCreateUserDatabase(I)Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 485
    .local v0, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .end local v0    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V

    .line 487
    .restart local v0    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    :cond_0
    return-object v0
.end method

.method private findOrCreateUserOffHostService(ILjava/lang/String;Ljava/lang/String;Lcom/android/nfc/cardemulation/QApduServiceInfo;I)Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seName"    # Ljava/lang/String;
    .param p4, "apduServiceInfo"    # Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .param p5, "bannerId"    # I

    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/MultiSeManager;->findOrCreateUserPackage(ILjava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    move-result-object v0

    .line 517
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .line 518
    .local v1, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    if-nez v1, :cond_0

    .line 519
    new-instance v1, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .end local v1    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    invoke-direct {v1, p0, p4, p5}, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;Lcom/android/nfc/cardemulation/QApduServiceInfo;I)V

    .line 520
    .restart local v1    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    return-object v1
.end method

.method private findOrCreateUserPackage(ILjava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/MultiSeManager;->findOrCreateUserDatabase(I)Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    move-result-object v1

    .line 494
    .local v1, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 495
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .end local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;-><init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V

    .line 497
    .restart local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    return-object v0
.end method

.method static getAidMappedPowerState(Ljava/lang/String;)I
    .locals 3
    .param p0, "aids"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "i":I
    const-string v1, "MultiSeManager"

    const-string v2, "Find the Priority from the given AID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    if-ge v0, v1, :cond_1

    .line 442
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->aid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pw:I

    .line 445
    :goto_1
    return v1

    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getAidMappedPriority(Ljava/lang/String;)I
    .locals 3
    .param p0, "aids"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "i":I
    const-string v1, "MultiSeManager"

    const-string v2, "Find the Priority from the given AID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    if-ge v0, v1, :cond_1

    .line 432
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->aid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pr:I

    .line 435
    :goto_1
    return v1

    .line 431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getAidMappedSe(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "aids"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "i":I
    const-string v1, "MultiSeManager"

    const-string v2, "Find the SE name from the given AID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    if-ge v0, v1, :cond_1

    .line 421
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->aid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->seName:Ljava/lang/String;

    .line 424
    :goto_1
    return-object v1

    .line 420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/MultiSeManager;
    .locals 2

    .prologue
    .line 461
    const-string v0, "MultiSeManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mService:Lcom/android/nfc/cardemulation/MultiSeManager;

    return-object v0
.end method

.method private getOffHostService(ILjava/lang/String;Ljava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seName"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 504
    .local v2, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-eqz v2, :cond_0

    .line 505
    iget-object v3, v2, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 506
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    if-eqz v0, :cond_0

    .line 507
    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .line 511
    .end local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 331
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 332
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 333
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 332
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 336
    :cond_0
    return-object v0
.end method

.method static multiSeDataBase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "seName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "powerState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v8, 0x28

    const/16 v9, 0x27

    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    sput v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    .line 374
    sget v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    if-le v7, v8, :cond_0

    .line 375
    sput v8, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, "aid":Ljava/lang/String;
    sget-object v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v7, v7, v1

    iput-object v0, v7, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->aid:Ljava/lang/String;

    .line 380
    if-lt v2, v9, :cond_5

    move v1, v2

    .line 384
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 386
    .local v6, "se":Ljava/lang/String;
    sget-object v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v7, v7, v1

    iput-object v6, v7, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->seName:Ljava/lang/String;

    .line 387
    if-lt v2, v9, :cond_6

    move v1, v2

    .line 391
    .end local v2    # "i":I
    .end local v6    # "se":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .line 392
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    .local v4, "pr":Ljava/lang/String;
    sget-object v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v7, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pr:I

    .line 394
    if-lt v2, v9, :cond_7

    move v1, v2

    .line 398
    .end local v2    # "i":I
    .end local v4    # "pr":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .line 399
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 400
    .local v5, "pw":Ljava/lang/String;
    sget-object v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v7, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pw:I

    .line 401
    if-lt v2, v9, :cond_8

    move v1, v2

    .line 407
    .end local v2    # "i":I
    .end local v5    # "pw":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_4
    const-string v7, "MultiSeManager"

    const-string v8, "Print the stored data base"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, 0x0

    :goto_4
    sget v7, Lcom/android/nfc/cardemulation/MultiSeManager;->mDbCount:I

    if-ge v1, v7, :cond_9

    .line 409
    const-string v7, "MultiSeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->aid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  SE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->seName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  Priority:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pr:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  PowerState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mSeDataBase:[Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->pw:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_5
    move v1, v2

    .line 382
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v6    # "se":Ljava/lang/String;
    :cond_6
    move v1, v2

    .line 389
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v6    # "se":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "pr":Ljava/lang/String;
    :cond_7
    move v1, v2

    .line 396
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_2

    .end local v1    # "i":I
    .end local v4    # "pr":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "pw":Ljava/lang/String;
    :cond_8
    move v1, v2

    .line 403
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 413
    .end local v5    # "pw":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x1

    return v7
.end method

.method private readOffHostServices()V
    .locals 10

    .prologue
    .line 1024
    const-string v8, "MultiSeManager"

    const-string v9, "readOffHostServices()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v2, 0x0

    .line 1027
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1028
    const-string v8, "MultiSeManager"

    const-string v9, "OffHostServices file does not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    if-eqz v2, :cond_0

    .line 1057
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1032
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1033
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1035
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1036
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x2

    if-eq v1, v8, :cond_2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    .line 1038
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 1041
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1042
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "users"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1043
    const/4 v8, 0x0

    const-string v9, "num_of_users"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1044
    .local v4, "numUsersString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1046
    .local v3, "numUsers":I
    const/4 v7, 0x0

    .local v7, "xx":I
    :goto_2
    if-ge v7, v3, :cond_3

    .line 1047
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1048
    invoke-direct {p0, v5}, Lcom/android/nfc/cardemulation/MultiSeManager;->createUserDataBaseFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1046
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1055
    .end local v3    # "numUsers":I
    .end local v4    # "numUsersString":Ljava/lang/String;
    .end local v7    # "xx":I
    :cond_3
    if-eqz v2, :cond_0

    .line 1057
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1051
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "MultiSeManager"

    const-string v9, "Could not parse OffHostServices file, trashing."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v8, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1055
    if-eqz v2, :cond_0

    .line 1057
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1058
    :catch_2
    move-exception v8

    goto :goto_0

    .line 1055
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_4

    .line 1057
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1059
    :cond_4
    :goto_3
    throw v8

    .line 1058
    :catch_3
    move-exception v8

    goto :goto_0

    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method private writeOffHostServices()Z
    .locals 23

    .prologue
    .line 752
    const-string v19, "MultiSeManager"

    const-string v20, "writeOffHostServices()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v9, 0x0

    .line 755
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 756
    new-instance v17, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 757
    .local v17, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v19, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 758
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 759
    const-string v19, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 761
    const/16 v19, 0x0

    const-string v20, "users"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const/16 v19, 0x0

    const-string v20, "num_of_users"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 764
    const-string v19, "MultiSeManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writeOffHostServices(): user_id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v19, 0x0

    const-string v20, "user"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const/16 v19, 0x0

    const-string v20, "user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 769
    .local v18, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    const/16 v19, 0x0

    const-string v20, "num_of_packages"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 772
    .local v7, "appPackageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;>;"
    const-string v20, "MultiSeManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writeOffHostServices(): package = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v19, 0x0

    const-string v20, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    const/16 v20, 0x0

    const-string v21, "package_name"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 777
    .local v6, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    const/16 v19, 0x0

    const-string v20, "num_of_apdu_services"

    iget-object v0, v6, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    iget-object v0, v6, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 780
    .local v16, "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .line 781
    .local v15, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    const-string v20, "MultiSeManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writeOffHostServices(): apdu_service on "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v19, 0x0

    const-string v20, "apdu_service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 784
    const/16 v20, 0x0

    const-string v21, "se_name"

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    const/16 v19, 0x0

    const-string v20, "description"

    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    const/16 v19, 0x0

    const-string v20, "banner_id"

    iget v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mBannerId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    const/16 v19, 0x0

    const-string v20, "uid"

    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    const/16 v19, 0x0

    const-string v20, "num_of_aid_groups"

    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/AidGroup;

    .line 790
    .local v5, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    const-string v20, "MultiSeManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writeOffHostServices(): aid_group = {"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "}, {"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "}"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 v19, 0x0

    const-string v20, "aid_group"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    const/16 v19, 0x0

    const-string v20, "category"

    invoke-virtual {v5}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const/16 v20, 0x0

    const-string v21, "description"

    iget-object v0, v15, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    invoke-virtual {v5}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 796
    .local v4, "aid":Ljava/lang/String;
    const-string v19, "MultiSeManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writeOffHostServices(): aid = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/16 v19, 0x0

    const-string v20, "aid"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    const/16 v19, 0x0

    const-string v20, "aid"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 814
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v6    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .end local v7    # "appPackageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;>;"
    .end local v10    # "i":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .end local v16    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    .end local v17    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v18    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    :catch_0
    move-exception v8

    .line 815
    .local v8, "e":Ljava/lang/Exception;
    const-string v19, "MultiSeManager"

    const-string v20, "Error writing OffHostServices"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    if-eqz v9, :cond_0

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 819
    :cond_0
    const/16 v19, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_5
    return v19

    .line 801
    .restart local v5    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v6    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .restart local v7    # "appPackageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;>;"
    .restart local v10    # "i":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .restart local v16    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    .restart local v17    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v18    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    :cond_1
    const/16 v19, 0x0

    :try_start_1
    const-string v20, "aid_group"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    .line 803
    .end local v5    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2
    const/16 v19, 0x0

    const-string v20, "apdu_service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 805
    .end local v15    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .end local v16    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    :cond_3
    const/16 v19, 0x0

    const-string v20, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 807
    .end local v6    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .end local v7    # "appPackageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;>;"
    :cond_4
    const/16 v19, 0x0

    const-string v20, "user"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 809
    .end local v18    # "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    :cond_5
    const/16 v19, 0x0

    const-string v20, "users"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mOffHostServicesFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    const/16 v19, 0x1

    goto :goto_5
.end method


# virtual methods
.method public CreateApduServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;"
        }
    .end annotation

    .prologue
    .line 633
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const-string v3, "MultiSeManager"

    const-string v4, "CreateApduServiceInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 635
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 636
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 637
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 638
    const-string v3, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    const-string p2, "SIM1"

    .line 640
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 641
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v6, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v15, 0x0

    .line 644
    .local v15, "index":I
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/AidGroup;

    .line 646
    .local v12, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_0
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v4, "MultiSeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateApduServiceInfo() AidGroup:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 653
    goto :goto_0

    .line 649
    :catch_0
    move-exception v13

    .line 650
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "MultiSeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateApduServiceInfo(): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 654
    .end local v12    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/nfc/cardemulation/QApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Ljava/lang/String;)V

    .line 664
    .local v1, "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const-string v3, "MultiSeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApduServiceInfo:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v1
.end method

.method public checkAidGroupToRemove(Lcom/android/nfc/cardemulation/QApduServiceInfo;IILjava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .locals 8
    .param p1, "serviceInfo"    # Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;"
        }
    .end annotation

    .prologue
    .line 612
    .local p4, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {p1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 613
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v4, "removedGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "payment"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v5, "other"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 618
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 622
    .local v3, "removeCategory":Ljava/lang/String;
    const-string v5, "MultiSeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAidGroupToRemove() remove AidGroup for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v5, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v5, p2, p3, v1, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 624
    invoke-virtual {p1, v3}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->removeDynamicAidGroupForCategory(Ljava/lang/String;)Z

    goto :goto_1

    .line 626
    .end local v3    # "removeCategory":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    .line 592
    const-string v3, "MultiSeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOffHostService() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 595
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 596
    .local v1, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-eqz v1, :cond_0

    .line 597
    iget-object v3, v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 598
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    if-eqz v0, :cond_0

    .line 599
    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 600
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->updateDataBase(I)V

    .line 601
    iget-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 602
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/MultiSeManager;->writeOffHostServices()Z

    .line 603
    const/4 v3, 0x1

    .line 607
    .end local v0    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 317
    const-string v2, "    AID cache entries: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/MultiSeManager;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v1, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 302
    .local v1, "defaultServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 305
    .local v0, "defaultComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 306
    .local v4, "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const-string v5, "        "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    const-string v5, "*DEFAULT* "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (Description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    .end local v0    # "defaultComponent":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    .restart local v0    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public generatePpseResponse()[B
    .locals 29

    .prologue
    .line 156
    const-string v26, "MultiSeManager"

    const-string v27, "generatePpseResponse"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v24, 0x0

    .line 159
    .local v24, "totalLength":I
    const/4 v7, 0x0

    .line 160
    .local v7, "appLabelLength":I
    const/4 v6, 0x0

    .line 161
    .local v6, "appLabel":Ljava/lang/String;
    const/16 v22, 0x0

    .line 162
    .local v22, "seName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 163
    .local v14, "mseName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 164
    .local v13, "mseCheck":Ljava/lang/String;
    const/16 v21, 0x0

    .line 165
    .local v21, "sPriority":Ljava/lang/String;
    const/4 v12, 0x0

    .line 166
    .local v12, "moreSecureElements":Z
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v11, v0, [B

    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-byte v27, v11, v26

    .line 168
    .local v11, "mPrioritycnt":[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v5, "aidsInPPSE":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v8, "appLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v17, "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 177
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 181
    .local v20, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v26, "325041592E5359532E4444463031"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 182
    const-string v26, "MultiSeManager"

    const-string v27, "Skip PPSE AID"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 188
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v23, v0

    .line 192
    .local v23, "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getSeName()Ljava/lang/String;

    move-result-object v14

    .line 193
    if-nez v14, :cond_2

    .line 194
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->isOnHost()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 195
    new-instance v14, Ljava/lang/String;

    .end local v14    # "mseName":Ljava/lang/String;
    const-string v26, "DH"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v14    # "mseName":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v26, "MULTISE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 201
    invoke-static {v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->getAidMappedSe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 202
    const-string v26, "MultiSeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Selected SE: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v12, :cond_3

    if-eqz v13, :cond_3

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 205
    const/4 v12, 0x1

    .line 206
    const-string v26, "MultiSeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "More SEs Selected, 1st: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  2nd: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    move-object/from16 v13, v22

    .line 221
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    .line 222
    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 224
    const/16 v26, 0x0

    invoke-static {v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->getAidMappedPriority(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v11, v26

    .line 225
    invoke-static {v11}, Lcom/android/nfc/cardemulation/MultiSeManager;->bytesToString([B)Ljava/lang/String;

    move-result-object v21

    .line 231
    add-int/lit8 v26, v24, 0x9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    add-int v26, v26, v7

    const/16 v27, 0x400

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 232
    const-string v26, "MultiSeManager"

    const-string v27, "Too much data for PPSE response"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v20    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v23    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-eqz v26, :cond_5

    if-nez v12, :cond_a

    .line 245
    :cond_5
    const-string v26, "MultiSeManager"

    const-string v27, "No AID for PPSE Response"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    .line 295
    :goto_3
    return-object v26

    .line 197
    .restart local v2    # "aid":Ljava/lang/String;
    .restart local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v20    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v23    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_6
    new-instance v14, Ljava/lang/String;

    .end local v14    # "mseName":Ljava/lang/String;
    const-string v26, "SIM1"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v14    # "mseName":Ljava/lang/String;
    goto/16 :goto_1

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    goto :goto_3

    .line 213
    .end local v23    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 215
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .restart local v23    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    goto :goto_2

    .line 237
    :cond_9
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int/lit8 v26, v26, 0x9

    add-int v26, v26, v7

    add-int v24, v24, v26

    .line 242
    goto/16 :goto_0

    .line 249
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v20    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v23    # "service":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_a
    const/4 v15, 0x0

    .line 250
    .local v15, "nextWrite":I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    .line 253
    const/16 v25, 0x0

    .local v25, "xx":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 255
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 258
    .local v3, "aidBytes":[B
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "appLabel":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 259
    .restart local v6    # "appLabel":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 260
    const/4 v7, 0x0

    .line 264
    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "sPriority":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 265
    .restart local v21    # "sPriority":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/nfc/cardemulation/MultiSeManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v19

    .line 266
    .local v19, "priorityBytes":[B
    const/16 v26, 0x0

    aget-byte v18, v19, v26

    .line 268
    .local v18, "priority":I
    const-string v26, "MultiSeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "AID = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", appLabel = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", priority = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "nextWrite":I
    .local v16, "nextWrite":I
    const/16 v27, 0x61

    aput-byte v27, v26, v15

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x7

    add-int v27, v27, v7

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    const/16 v27, 0x4f

    aput-byte v27, v26, v15

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    array-length v0, v3

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 279
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_c

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    aget-byte v27, v3, v9

    aput-byte v27, v26, v15

    .line 279
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v16

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    goto :goto_6

    .line 262
    .end local v9    # "i":I
    .end local v18    # "priority":I
    .end local v19    # "priorityBytes":[B
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    goto/16 :goto_5

    .line 283
    .restart local v9    # "i":I
    .restart local v18    # "priority":I
    .restart local v19    # "priorityBytes":[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    const/16 v27, 0x50

    aput-byte v27, v26, v15

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    int-to-byte v0, v7

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 285
    const/4 v9, 0x0

    move/from16 v16, v15

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    :goto_7
    if-ge v9, v7, :cond_d

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 285
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    goto :goto_7

    .line 289
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    const/16 v27, -0x79

    aput-byte v27, v26, v16

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "nextWrite":I
    .restart local v16    # "nextWrite":I
    const/16 v27, 0x1

    aput-byte v27, v26, v15

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "nextWrite":I
    .restart local v15    # "nextWrite":I
    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 253
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 294
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "aidBytes":[B
    .end local v9    # "i":I
    .end local v18    # "priority":I
    .end local v19    # "priorityBytes":[B
    :cond_e
    const-string v26, "MultiSeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " mPpseResponse = 0x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/nfc/cardemulation/MultiSeManager;->bytesToString([B)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseResponse:[B

    move-object/from16 v26, v0

    goto/16 :goto_3
.end method

.method public getMultiSeServices(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/QApduServiceInfo;>;"
    const-string v3, "MultiSeManager"

    const-string v4, "getMultiSeServices()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 469
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->checkAndUpdateInstalledPackages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->updateDataBase(I)V

    .line 471
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/MultiSeManager;->writeOffHostServices()Z

    .line 475
    :cond_0
    sget-object v3, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 476
    .local v0, "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const-string v3, "MultiSeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiSeServices() add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v0    # "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public getOffHostServiceForPackage(Ljava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 526
    const-string v3, "MultiSeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOffHostServiceForPackage()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 529
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 530
    .local v1, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-eqz v1, :cond_0

    .line 531
    iget-object v3, v1, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiSeCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 671
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const-string v3, "MultiSeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multiSeCommit() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v14, 0x0

    .line 674
    .local v14, "index":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 675
    .local v4, "userId":I
    const/4 v7, 0x0

    .line 676
    .local v7, "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    const/4 v15, 0x0

    .line 677
    .local v15, "newApduService":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/nfc/cardemulation/MultiSeManager;->findOrCreateUserDatabase(I)Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    move-result-object v17

    .line 678
    .local v17, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/nfc/cardemulation/MultiSeManager;->findOrCreateUserPackage(ILjava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    move-result-object v11

    .line 679
    .local v11, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->getOffHostService(ILjava/lang/String;Ljava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    move-result-object v16

    .line 681
    .local v16, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    if-nez v16, :cond_0

    .line 682
    const-string v3, "MultiSeManager"

    const-string v5, "multiSeCommit() create new service"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual/range {p0 .. p7}, Lcom/android/nfc/cardemulation/MultiSeManager;->CreateApduServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    .line 687
    invoke-direct/range {v3 .. v8}, Lcom/android/nfc/cardemulation/MultiSeManager;->findOrCreateUserOffHostService(ILjava/lang/String;Ljava/lang/String;Lcom/android/nfc/cardemulation/QApduServiceInfo;I)Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    move-result-object v16

    .line 688
    const/4 v15, 0x1

    .line 715
    :goto_0
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 716
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 717
    .local v9, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    invoke-virtual {v3, v9}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 719
    add-int/lit8 v14, v14, 0x1

    .line 720
    goto :goto_1

    .line 690
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v3, "MultiSeManager"

    const-string v5, "multiSeCommit() update service"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mBannerId:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_3

    .line 693
    const-string v3, "MultiSeManager"

    const-string v5, "multiSeCommit() banner ID changed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual/range {p0 .. p7}, Lcom/android/nfc/cardemulation/MultiSeManager;->CreateApduServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-result-object v7

    .line 698
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 699
    move/from16 v0, p4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mBannerId:I

    .line 701
    sget-object v3, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 702
    .local v10, "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 703
    move-object v10, v7

    .line 708
    .end local v10    # "apduServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->AddDynamicServices(ILandroid/content/ComponentName;Lcom/android/nfc/cardemulation/QApduServiceInfo;)V

    .line 711
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p7

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/nfc/cardemulation/MultiSeManager;->checkAidGroupToRemove(Lcom/android/nfc/cardemulation/QApduServiceInfo;IILjava/util/List;)Lcom/android/nfc/cardemulation/QApduServiceInfo;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 712
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    goto/16 :goto_0

    .line 723
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, v11, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    if-eqz v15, :cond_5

    .line 729
    const-string v3, "MultiSeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multiSeCommit() add component : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v3, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->AddDynamicServices(ILandroid/content/ComponentName;Lcom/android/nfc/cardemulation/QApduServiceInfo;)V

    .line 735
    :cond_5
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 737
    .restart local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_0
    const-string v3, "MultiSeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multiSeCommit() register the AidGroup("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/MultiSeManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v3, v4, v0, v5, v9}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 742
    :catch_0
    move-exception v12

    .line 743
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "MultiSeManager"

    const-string v5, "multiSeCommit() register AID failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 747
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/MultiSeManager;->writeOffHostServices()Z

    .line 748
    const/4 v3, 0x1

    return v3
.end method

.method public multiSeRegisterAid(Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .param p2, "paymentService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "seName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "powerState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "payment"

    .line 131
    .local v1, "category":Ljava/lang/String;
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p1, v1}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 132
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 135
    .local v3, "userId":I
    const-string v4, "MultiSeManager"

    const-string v5, "print... the received list "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1, p3, p4, p5}, Lcom/android/nfc/cardemulation/MultiSeManager;->dumpList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 139
    const-string v4, "MultiSeManager"

    const-string v5, "save the list in database "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1, p3, p4, p5}, Lcom/android/nfc/cardemulation/MultiSeManager;->multiSeDataBase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 142
    const-string v4, "MultiSeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "component info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    const-string v4, "MultiSeManager"

    const-string v5, "Register the AIDs"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v4

    invoke-interface {v4, v3, p2, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "MultiSeManager"

    const-string v5, "Register AID failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processPpse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/MultiSeManager;->generatePpseResponse()[B

    move-result-object v0

    .line 341
    .local v0, "ppse_rsp":[B
    if-eqz v0, :cond_1

    .line 342
    const-string v1, "MultiSeManager"

    const-string v2, "Sending PPSE response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getInstance()Lcom/android/nfc/QSecureElementManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/nfc/QSecureElementManager;->multiSeControlCmd([BI)Z

    .line 344
    sput-boolean v3, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseRespSent:Z

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget-boolean v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseRespSent:Z

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "MultiSeManager"

    const-string v2, "Clear previous PPSE response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getInstance()Lcom/android/nfc/QSecureElementManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/nfc/QSecureElementManager;->multiSeControlCmd([BI)Z

    .line 348
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/nfc/cardemulation/MultiSeManager;->mPpseRespSent:Z

    goto :goto_0
.end method

.method public updateDataBase(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 565
    const-string v9, "MultiSeManager"

    const-string v10, "updateDataBase()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v9, p0, Lcom/android/nfc/cardemulation/MultiSeManager;->mUserDatabase:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;

    .line 567
    .local v8, "userDatabase":Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
    if-nez v8, :cond_1

    .line 589
    :cond_0
    return-void

    .line 570
    :cond_1
    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 571
    iget-object v9, v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 572
    .local v5, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 574
    .local v4, "packageName":Ljava/lang/String;
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDataBase() PackageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v9, v8, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    .line 576
    .local v0, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    if-eqz v0, :cond_2

    .line 577
    iget-object v9, v0, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 578
    .local v7, "seNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 579
    .local v6, "seName":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v6}, Lcom/android/nfc/cardemulation/MultiSeManager;->getOffHostService(ILjava/lang/String;Ljava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    move-result-object v3

    .line 580
    .local v3, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    if-eqz v3, :cond_3

    .line 581
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDataBase() SEName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-object v9, Lcom/android/nfc/cardemulation/MultiSeManager;->mValidServices:Ljava/util/List;

    iget-object v10, v3, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_3
    const-string v9, "MultiSeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDataBase() : OffHostService is not found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
