.class public final Lrx/internal/operators/cp;
.super Lrx/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cp$a;,
        Lrx/internal/operators/cp$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cp$b",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/e$a;Lrx/e;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cp$b",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/cp;, "Lrx/internal/operators/cp<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/cp$b<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/d/c;-><init>(Lrx/e$a;)V

    .line 168
    iput-object p2, p0, Lrx/internal/operators/cp;->b:Lrx/e;

    .line 169
    iput-object p3, p0, Lrx/internal/operators/cp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    return-void
.end method

.method public static a(Lrx/e;Lrx/c/p;Z)Lrx/e;
    .locals 1
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;Z)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    new-instance v0, Lrx/internal/operators/cp$2;

    invoke-direct {v0, p2, p1, p0}, Lrx/internal/operators/cp$2;-><init>(ZLrx/c/p;Lrx/e;)V

    invoke-static {v0}, Lrx/internal/operators/cp;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/internal/operators/cp;->a(Lrx/e;Lrx/c/p;Z)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static u(Lrx/e;)Lrx/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 50
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/cp$b<TT;>;>;"
    new-instance v1, Lrx/internal/operators/cp$1;

    invoke-direct {v1, v0}, Lrx/internal/operators/cp$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 116
    .local v1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    new-instance v2, Lrx/internal/operators/cp;

    invoke-direct {v2, v1, p0, v0}, Lrx/internal/operators/cp;-><init>(Lrx/e$a;Lrx/e;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v2
.end method


# virtual methods
.method public h(Lrx/c/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cp;, "Lrx/internal/operators/cp<TT;>;"
    .local p1, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 179
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/cp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cp$b;

    .line 181
    .local v1, "ps":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/cp$b;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_1
    new-instance v2, Lrx/internal/operators/cp$b;

    iget-object v4, p0, Lrx/internal/operators/cp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v4}, Lrx/internal/operators/cp$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 185
    .local v2, "u":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/cp$b;->a()V

    .line 187
    iget-object v4, p0, Lrx/internal/operators/cp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    move-object v1, v2

    .line 196
    .end local v2    # "u":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    :cond_2
    iget-object v4, v1, Lrx/internal/operators/cp$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lrx/internal/operators/cp$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 213
    if-eqz v0, :cond_3

    .line 214
    iget-object v3, p0, Lrx/internal/operators/cp;->b:Lrx/e;

    invoke-virtual {v3, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 216
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v3

    .line 196
    goto :goto_0
.end method
