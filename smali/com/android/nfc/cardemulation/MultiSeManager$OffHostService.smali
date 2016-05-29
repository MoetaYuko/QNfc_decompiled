.class public Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
.super Ljava/lang/Object;
.source "MultiSeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/MultiSeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OffHostService"
.end annotation


# instance fields
.field public final mAidGroupDescriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

.field public mBannerId:I

.field final synthetic this$0:Lcom/android/nfc/cardemulation/MultiSeManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/MultiSeManager;Lcom/android/nfc/cardemulation/QApduServiceInfo;I)V
    .locals 1
    .param p2, "apduServiceInfo"    # Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .param p3, "bannerId"    # I

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->this$0:Lcom/android/nfc/cardemulation/MultiSeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    .line 90
    iput-object p2, p0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 91
    iput p3, p0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mBannerId:I

    .line 92
    return-void
.end method
