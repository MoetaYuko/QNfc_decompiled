.class Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;
.super Ljava/lang/Object;
.source "MultiSeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/MultiSeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myDataBase"
.end annotation


# instance fields
.field aid:Ljava/lang/String;

.field pr:I

.field pw:I

.field seName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/MultiSeManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/MultiSeManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/cardemulation/MultiSeManager$myDataBase;->this$0:Lcom/android/nfc/cardemulation/MultiSeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
