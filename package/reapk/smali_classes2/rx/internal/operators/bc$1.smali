.class Lrx/internal/operators/bc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bc;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/bc;


# direct methods
.method constructor <init>(Lrx/internal/operators/bc;Lrx/l;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/internal/operators/bc$1;->b:Lrx/internal/operators/bc;

    iput-object p2, p0, Lrx/internal/operators/bc$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/bc$1;->a:Lrx/l;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v1, p0, Lrx/internal/operators/bc$1;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/bc$1;->a:Lrx/l;

    invoke-static {v0, v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method
