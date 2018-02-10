.class Lcom/pingplusplus/android/PingppObject$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/pingplusplus/android/PingppObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/pingplusplus/android/PingppObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/PingppObject;-><init>(Lcom/pingplusplus/android/e;)V

    sput-object v0, Lcom/pingplusplus/android/PingppObject$a;->a:Lcom/pingplusplus/android/PingppObject;

    return-void
.end method

.method static synthetic a()Lcom/pingplusplus/android/PingppObject;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/pingplusplus/android/PingppObject$a;->a:Lcom/pingplusplus/android/PingppObject;

    return-object v0
.end method
