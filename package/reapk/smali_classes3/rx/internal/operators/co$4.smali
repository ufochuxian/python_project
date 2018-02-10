.class Lrx/internal/operators/co$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/co;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/l;

.field final synthetic c:Lrx/internal/producers/a;

.field final synthetic d:Lrx/i/e;

.field final synthetic e:Lrx/internal/operators/co;

.field private f:Z


# direct methods
.method constructor <init>(Lrx/internal/operators/co;Lrx/l;Lrx/internal/producers/a;Lrx/i/e;)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/co$4;, "Lrx/internal/operators/co.4;"
    iput-object p1, p0, Lrx/internal/operators/co$4;->e:Lrx/internal/operators/co;

    iput-object p2, p0, Lrx/internal/operators/co$4;->b:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/co$4;->c:Lrx/internal/producers/a;

    iput-object p4, p0, Lrx/internal/operators/co$4;->d:Lrx/i/e;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/co$4;, "Lrx/internal/operators/co.4;"
    iget-boolean v0, p0, Lrx/internal/operators/co$4;->f:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/co$4;->f:Z

    .line 101
    iget-object v0, p0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/co$4;, "Lrx/internal/operators/co.4;"
    iget-boolean v5, p0, Lrx/internal/operators/co$4;->f:Z

    if-eqz v5, :cond_0

    .line 107
    invoke-static {p1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lrx/internal/operators/co$4;->f:Z

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lrx/internal/operators/co$4;->unsubscribe()V

    .line 115
    new-instance v1, Lrx/internal/operators/co$4$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/co$4$1;-><init>(Lrx/internal/operators/co$4;)V

    .line 133
    .local v1, "next":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/co$4;->d:Lrx/i/e;

    invoke-virtual {v5, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 135
    iget-wide v2, p0, Lrx/internal/operators/co$4;->a:J

    .line 136
    .local v2, "p":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lrx/internal/operators/co$4;->c:Lrx/internal/producers/a;

    invoke-virtual {v5, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 140
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/co$4;->e:Lrx/internal/operators/co;

    iget-object v5, v5, Lrx/internal/operators/co;->a:Lrx/c/p;

    invoke-interface {v5, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/e;

    .line 142
    .local v4, "resume":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {v4, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "next":Lrx/l;, "Lrx/l<TT;>;"
    .end local v2    # "p":J
    .end local v4    # "resume":Lrx/e;, "Lrx/e<+TT;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v5, p0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-static {v0, v5}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

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
    .line 150
    .local p0, "this":Lrx/internal/operators/co$4;, "Lrx/internal/operators/co.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/co$4;->f:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/co$4;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/co$4;->a:J

    .line 154
    iget-object v0, p0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/co$4;, "Lrx/internal/operators/co.4;"
    iget-object v0, p0, Lrx/internal/operators/co$4;->c:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 160
    return-void
.end method
