.class Lrx/d/a$b$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a$b;->b(Lrx/e;)V
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
.field a:J

.field final synthetic b:J

.field final synthetic c:Lrx/internal/operators/g;

.field final synthetic d:Lrx/d/a$b;


# direct methods
.method constructor <init>(Lrx/d/a$b;JLrx/internal/operators/g;)V
    .locals 2

    .prologue
    .line 601
    .local p0, "this":Lrx/d/a$b$1;, "Lrx/d/a$b.1;"
    iput-object p1, p0, Lrx/d/a$b$1;->d:Lrx/d/a$b;

    iput-wide p2, p0, Lrx/d/a$b$1;->b:J

    iput-object p4, p0, Lrx/d/a$b$1;->c:Lrx/internal/operators/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 602
    iget-wide v0, p0, Lrx/d/a$b$1;->b:J

    iput-wide v0, p0, Lrx/d/a$b$1;->a:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 614
    .local p0, "this":Lrx/d/a$b$1;, "Lrx/d/a$b.1;"
    iget-object v2, p0, Lrx/d/a$b$1;->c:Lrx/internal/operators/g;

    invoke-virtual {v2}, Lrx/internal/operators/g;->onCompleted()V

    .line 615
    iget-wide v0, p0, Lrx/d/a$b$1;->a:J

    .line 616
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 617
    iget-object v2, p0, Lrx/d/a$b$1;->d:Lrx/d/a$b;

    invoke-virtual {v2, v0, v1}, Lrx/d/a$b;->b(J)V

    .line 619
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 610
    .local p0, "this":Lrx/d/a$b$1;, "Lrx/d/a$b.1;"
    iget-object v0, p0, Lrx/d/a$b$1;->c:Lrx/internal/operators/g;

    invoke-virtual {v0, p1}, Lrx/internal/operators/g;->onError(Ljava/lang/Throwable;)V

    .line 611
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lrx/d/a$b$1;, "Lrx/d/a$b.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lrx/d/a$b$1;->a:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lrx/d/a$b$1;->a:J

    .line 606
    iget-object v0, p0, Lrx/d/a$b$1;->c:Lrx/internal/operators/g;

    invoke-virtual {v0, p1}, Lrx/internal/operators/g;->onNext(Ljava/lang/Object;)V

    .line 607
    return-void
.end method
