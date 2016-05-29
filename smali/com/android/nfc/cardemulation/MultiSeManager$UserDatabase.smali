.class public Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;
.super Ljava/lang/Object;
.source "MultiSeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/MultiSeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserDatabase"
.end annotation


# instance fields
.field final mAppPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/MultiSeManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->this$0:Lcom/android/nfc/cardemulation/MultiSeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/MultiSeManager$UserDatabase;->mAppPackages:Ljava/util/HashMap;

    return-void
.end method
