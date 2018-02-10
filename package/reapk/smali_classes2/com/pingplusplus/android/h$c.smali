.class Lcom/pingplusplus/android/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/pingplusplus/android/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/pingplusplus/android/h;

    invoke-static {}, Lcom/pingplusplus/android/h;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pingplusplus/android/h$c;->a:Lcom/pingplusplus/android/h;

    return-void
.end method

.method static synthetic a()Lcom/pingplusplus/android/h;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/pingplusplus/android/h$c;->a:Lcom/pingplusplus/android/h;

    return-object v0
.end method
