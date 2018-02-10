.class Lio/fabric/sdk/android/services/concurrency/d$a$1;
.super Lio/fabric/sdk/android/services/concurrency/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/d$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/f",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/concurrency/d$a;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/d$a;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/concurrency/d$a;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 114
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d$a$1;, "Lio/fabric/sdk/android/services/concurrency/d$a$1;"
    .local p3, "result":Ljava/lang/Object;, "TResult;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/d$a$1;->a:Lio/fabric/sdk/android/services/concurrency/d$a;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/concurrency/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lio/fabric/sdk/android/services/concurrency/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/b",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d$a$1;, "Lio/fabric/sdk/android/services/concurrency/d$a$1;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d$a$1;->a:Lio/fabric/sdk/android/services/concurrency/d$a;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/d$a;->a(Lio/fabric/sdk/android/services/concurrency/d$a;)Lio/fabric/sdk/android/services/concurrency/d;

    move-result-object v0

    return-object v0
.end method
