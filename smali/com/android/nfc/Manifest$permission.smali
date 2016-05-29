.class public final Lcom/android/nfc/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_INTERFACE:Ljava/lang/String; = "com.android.nfc.permission.ACCESS_INTERFACE"

.field public static final ACCESS_RECEIVE_HISTORY:Ljava/lang/String; = "com.android.nfc.permission.ACCESS_RECEIVE_HISTORY"

.field public static final NFC_ENABLE:Ljava/lang/String; = "android.permission.NFC_ENABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
