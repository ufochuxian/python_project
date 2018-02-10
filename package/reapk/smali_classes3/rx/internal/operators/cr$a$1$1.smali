.class Lrx/internal/operators/cr$a$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cr$a$1;->call()V
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
.field a:Z

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/internal/operators/cr$a$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/cr$a$1;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/cr$a$1$1;, "Lrx/internal/operators/cr$a$1.1;"
    iput-object p1, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iput-object p2, p0, Lrx/internal/operators/cr$a$1$1;->b:Lrx/c/b;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/cr$a$1$1;, "Lrx/internal/operators/cr$a$1.1;"
    iget-boolean v0, p0, Lrx/internal/operators/cr$a$1$1;->a:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cr$a$1$1;->a:Z

    .line 94
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 96
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/cr$a$1$1;, "Lrx/internal/operators/cr$a$1.1;"
    iget-boolean v0, p0, Lrx/internal/operators/cr$a$1$1;->a:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cr$a$1$1;->a:Z

    .line 102
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->b:Lrx/c/q;

    iget-object v1, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v1, v1, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v1, v1, Lrx/internal/operators/cr$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->c:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->c:Lrx/h$a;

    iget-object v1, p0, Lrx/internal/operators/cr$a$1$1;->b:Lrx/c/b;

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/cr$a$1$1;, "Lrx/internal/operators/cr$a$1.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/cr$a$1$1;->a:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->e:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 118
    :cond_0
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/cr$a$1$1;, "Lrx/internal/operators/cr$a$1.1;"
    iget-object v0, p0, Lrx/internal/operators/cr$a$1$1;->c:Lrx/internal/operators/cr$a$1;

    iget-object v0, v0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v0, v0, Lrx/internal/operators/cr$a;->e:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 123
    return-void
.end method
