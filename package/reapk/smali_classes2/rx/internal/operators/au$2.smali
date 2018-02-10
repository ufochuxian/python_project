.class Lrx/internal/operators/au$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/h/f;

.field final synthetic c:Lrx/internal/producers/a;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic e:Lrx/i/e;

.field final synthetic f:Lrx/internal/operators/au;


# direct methods
.method constructor <init>(Lrx/internal/operators/au;Lrx/l;Lrx/h/f;Lrx/internal/producers/a;Ljava/util/concurrent/atomic/AtomicLong;Lrx/i/e;)V
    .locals 0

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/operators/au$2;, "Lrx/internal/operators/au.2;"
    iput-object p1, p0, Lrx/internal/operators/au$2;->f:Lrx/internal/operators/au;

    iput-object p2, p0, Lrx/internal/operators/au$2;->a:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/au$2;->b:Lrx/h/f;

    iput-object p4, p0, Lrx/internal/operators/au$2;->c:Lrx/internal/producers/a;

    iput-object p5, p0, Lrx/internal/operators/au$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/internal/operators/au$2;->e:Lrx/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/au$2;, "Lrx/internal/operators/au.2;"
    iget-object v1, p0, Lrx/internal/operators/au$2;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lrx/internal/operators/au$2$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/au$2$1;-><init>(Lrx/internal/operators/au$2;)V

    .line 272
    .local v0, "terminalDelegatingSubscriber":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/au$2;->e:Lrx/i/e;

    invoke-virtual {v1, v0}, Lrx/i/e;->a(Lrx/m;)V

    .line 273
    iget-object v1, p0, Lrx/internal/operators/au$2;->f:Lrx/internal/operators/au;

    iget-object v1, v1, Lrx/internal/operators/au;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    goto :goto_0
.end method
