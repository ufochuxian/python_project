.class Lrx/internal/operators/dn$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dn;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/internal/operators/dn;

.field private c:J


# direct methods
.method constructor <init>(Lrx/internal/operators/dn;Lrx/l;Lrx/l;)V
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/dn$1;, "Lrx/internal/operators/dn.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/dn$1;->b:Lrx/internal/operators/dn;

    iput-object p3, p0, Lrx/internal/operators/dn$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lrx/internal/operators/dn$1;->c:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/dn$1;, "Lrx/internal/operators/dn.1;"
    iget-object v0, p0, Lrx/internal/operators/dn$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 60
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/dn$1;, "Lrx/internal/operators/dn.1;"
    iget-object v0, p0, Lrx/internal/operators/dn$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 65
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
    .line 50
    .local p0, "this":Lrx/internal/operators/dn$1;, "Lrx/internal/operators/dn.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/dn$1;->b:Lrx/internal/operators/dn;

    iget-object v2, v2, Lrx/internal/operators/dn;->b:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->now()J

    move-result-wide v0

    .line 51
    .local v0, "now":J
    iget-wide v2, p0, Lrx/internal/operators/dn$1;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lrx/internal/operators/dn$1;->c:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lrx/internal/operators/dn$1;->b:Lrx/internal/operators/dn;

    iget-wide v4, v4, Lrx/internal/operators/dn;->a:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 52
    :cond_0
    iput-wide v0, p0, Lrx/internal/operators/dn$1;->c:J

    .line 53
    iget-object v2, p0, Lrx/internal/operators/dn$1;->a:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 55
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/dn$1;, "Lrx/internal/operators/dn.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dn$1;->request(J)V

    .line 46
    return-void
.end method
