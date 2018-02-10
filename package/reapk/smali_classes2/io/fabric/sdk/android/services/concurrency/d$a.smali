.class Lio/fabric/sdk/android/services/concurrency/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lio/fabric/sdk/android/services/concurrency/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/d;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;
    .param p2, "task"    # Lio/fabric/sdk/android/services/concurrency/d;

    .prologue
    .line 107
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d$a;, "Lio/fabric/sdk/android/services/concurrency/d$a<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/d$a;->a:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/d$a;->b:Lio/fabric/sdk/android/services/concurrency/d;

    .line 110
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/d$a;)Lio/fabric/sdk/android/services/concurrency/d;
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/d$a;

    .prologue
    .line 104
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d$a;->b:Lio/fabric/sdk/android/services/concurrency/d;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 114
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d$a;, "Lio/fabric/sdk/android/services/concurrency/d$a<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d$a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/d$a$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/fabric/sdk/android/services/concurrency/d$a$1;-><init>(Lio/fabric/sdk/android/services/concurrency/d$a;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
