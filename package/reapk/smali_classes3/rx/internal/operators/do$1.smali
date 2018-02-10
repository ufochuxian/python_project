.class Lrx/internal/operators/do$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/do;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/do;

.field private c:J


# direct methods
.method constructor <init>(Lrx/internal/operators/do;Lrx/l;Lrx/l;)V
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/do$1;, "Lrx/internal/operators/do.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/do$1;->b:Lrx/internal/operators/do;

    iput-object p3, p0, Lrx/internal/operators/do$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 39
    iget-object v0, p0, Lrx/internal/operators/do$1;->b:Lrx/internal/operators/do;

    iget-object v0, v0, Lrx/internal/operators/do;->a:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/do$1;->c:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/do$1;, "Lrx/internal/operators/do.1;"
    iget-object v0, p0, Lrx/internal/operators/do$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/do$1;, "Lrx/internal/operators/do.1;"
    iget-object v0, p0, Lrx/internal/operators/do$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/do$1;, "Lrx/internal/operators/do.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/do$1;->b:Lrx/internal/operators/do;

    iget-object v2, v2, Lrx/internal/operators/do;->a:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->now()J

    move-result-wide v0

    .line 45
    .local v0, "nowTimestamp":J
    iget-object v2, p0, Lrx/internal/operators/do$1;->a:Lrx/l;

    new-instance v3, Lrx/schedulers/b;

    iget-wide v4, p0, Lrx/internal/operators/do$1;->c:J

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5, p1}, Lrx/schedulers/b;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 46
    iput-wide v0, p0, Lrx/internal/operators/do$1;->c:J

    .line 47
    return-void
.end method
