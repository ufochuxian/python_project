.class final Lrx/internal/operators/cn$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cn;
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
.field private final a:Lrx/internal/operators/cn$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cn$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/cn$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cn$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    .local p1, "producer":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 200
    iput-object p1, p0, Lrx/internal/operators/cn$c;->a:Lrx/internal/operators/cn$b;

    .line 201
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/cn$c;->request(J)V

    .line 225
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cn$c;->a:Lrx/internal/operators/cn$b;

    invoke-virtual {v0}, Lrx/internal/operators/cn$b;->onCompleted()V

    .line 222
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cn$c;->a:Lrx/internal/operators/cn$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cn$b;->onError(Ljava/lang/Throwable;)V

    .line 217
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
    .line 211
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cn$c;->a:Lrx/internal/operators/cn$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cn$b;->onNext(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cn$c;->request(J)V

    .line 207
    return-void
.end method
