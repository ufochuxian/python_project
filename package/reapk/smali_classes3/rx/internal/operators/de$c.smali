.class final Lrx/internal/operators/de$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lrx/internal/operators/de$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/de$d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLrx/internal/operators/de$d;)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/internal/operators/de$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    .local p3, "parent":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 388
    iput-wide p1, p0, Lrx/internal/operators/de$c;->a:J

    .line 389
    iput-object p3, p0, Lrx/internal/operators/de$c;->b:Lrx/internal/operators/de$d;

    .line 390
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/de$c;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/de$c;

    .prologue
    .line 381
    iget-wide v0, p0, Lrx/internal/operators/de$c;->a:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 409
    .local p0, "this":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/de$c;->b:Lrx/internal/operators/de$d;

    iget-wide v2, p0, Lrx/internal/operators/de$c;->a:J

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/de$d;->a(J)V

    .line 410
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/de$c;->b:Lrx/internal/operators/de$d;

    iget-wide v2, p0, Lrx/internal/operators/de$c;->a:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/de$d;->a(Ljava/lang/Throwable;J)V

    .line 405
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/de$c;->b:Lrx/internal/operators/de$d;

    invoke-virtual {v0, p1, p0}, Lrx/internal/operators/de$d;->a(Ljava/lang/Object;Lrx/internal/operators/de$c;)V

    .line 400
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 4
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 394
    .local p0, "this":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/de$c;->b:Lrx/internal/operators/de$d;

    iget-wide v2, p0, Lrx/internal/operators/de$c;->a:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/de$d;->a(Lrx/g;J)V

    .line 395
    return-void
.end method
