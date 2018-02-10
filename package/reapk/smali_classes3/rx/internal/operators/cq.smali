.class public final Lrx/internal/operators/cq;
.super Lrx/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cq$f;,
        Lrx/internal/operators/cq$g;,
        Lrx/internal/operators/cq$a;,
        Lrx/internal/operators/cq$c;,
        Lrx/internal/operators/cq$h;,
        Lrx/internal/operators/cq$d;,
        Lrx/internal/operators/cq$b;,
        Lrx/internal/operators/cq$e;
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


# static fields
.field static final e:Lrx/c/o;


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
            "Lrx/internal/operators/cq$e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/internal/operators/cq$d",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/cq$1;

    invoke-direct {v0}, Lrx/internal/operators/cq$1;-><init>()V

    sput-object v0, Lrx/internal/operators/cq;->e:Lrx/c/o;

    return-void
.end method

.method private constructor <init>(Lrx/e$a;Lrx/e;Ljava/util/concurrent/atomic/AtomicReference;Lrx/c/o;)V
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
            "Lrx/internal/operators/cq$e",
            "<TT;>;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/internal/operators/cq$d",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/cq;, "Lrx/internal/operators/cq<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/cq$e<TT;>;>;"
    .local p4, "bufferFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/internal/operators/cq$d<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/d/c;-><init>(Lrx/e$a;)V

    .line 252
    iput-object p2, p0, Lrx/internal/operators/cq;->b:Lrx/e;

    .line 253
    iput-object p3, p0, Lrx/internal/operators/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lrx/internal/operators/cq;->d:Lrx/c/o;

    .line 255
    return-void
.end method

.method public static a(Lrx/d/c;Lrx/h;)Lrx/d/c;
    .locals 3
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d/c",
            "<TT;>;",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "co":Lrx/d/c;, "Lrx/d/c<TT;>;"
    invoke-virtual {p0, p1}, Lrx/d/c;->a(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 96
    .local v0, "observable":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/operators/cq$3;

    invoke-direct {v1, v0}, Lrx/internal/operators/cq$3;-><init>(Lrx/e;)V

    .line 116
    .local v1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    new-instance v2, Lrx/internal/operators/cq$4;

    invoke-direct {v2, v1, p0}, Lrx/internal/operators/cq$4;-><init>(Lrx/e$a;Lrx/d/c;)V

    return-object v2
.end method

.method public static a(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;
    .locals 7
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/cq;->a(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;I)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;I)Lrx/d/c;
    .locals 3
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            "I)",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 184
    .local v0, "maxAgeInMillis":J
    new-instance v2, Lrx/internal/operators/cq$6;

    invoke-direct {v2, p5, v0, v1, p4}, Lrx/internal/operators/cq$6;-><init>(IJLrx/h;)V

    invoke-static {p0, v2}, Lrx/internal/operators/cq;->a(Lrx/e;Lrx/c/o;)Lrx/d/c;

    move-result-object v2

    return-object v2
.end method

.method static a(Lrx/e;Lrx/c/o;)Lrx/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/internal/operators/cq$d",
            "<TT;>;>;)",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "bufferFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/internal/operators/cq$d<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/cq$e<TT;>;>;"
    new-instance v1, Lrx/internal/operators/cq$7;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/cq$7;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/c/o;)V

    .line 246
    .local v1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    new-instance v2, Lrx/internal/operators/cq;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/cq;-><init>(Lrx/e$a;Lrx/e;Ljava/util/concurrent/atomic/AtomicReference;Lrx/c/o;)V

    return-object v2
.end method

.method public static c(Lrx/c/o;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/d/c",
            "<TU;>;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TU;>;+",
            "Lrx/e",
            "<TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "connectableFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/d/c<TU;>;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TU;>;+Lrx/e<TR;>;>;"
    new-instance v0, Lrx/internal/operators/cq$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/cq$2;-><init>(Lrx/c/o;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;I)Lrx/d/c;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;I)",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 146
    invoke-static {p0}, Lrx/internal/operators/cq;->u(Lrx/e;)Lrx/d/c;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/cq$5;

    invoke-direct {v0, p1}, Lrx/internal/operators/cq$5;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/cq;->a(Lrx/e;Lrx/c/o;)Lrx/d/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static u(Lrx/e;)Lrx/d/c;
    .locals 1
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
    .line 132
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    sget-object v0, Lrx/internal/operators/cq;->e:Lrx/c/o;

    invoke-static {p0, v0}, Lrx/internal/operators/cq;->a(Lrx/e;Lrx/c/o;)Lrx/d/c;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lrx/internal/operators/cq;, "Lrx/internal/operators/cq<TT;>;"
    .local p1, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 264
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$e;

    .line 266
    .local v1, "ps":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/cq$e;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    :cond_1
    new-instance v2, Lrx/internal/operators/cq$e;

    iget-object v3, p0, Lrx/internal/operators/cq;->d:Lrx/c/o;

    invoke-interface {v3}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/cq$d;

    invoke-direct {v2, v3}, Lrx/internal/operators/cq$e;-><init>(Lrx/internal/operators/cq$d;)V

    .line 270
    .local v2, "u":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/cq$e;->a()V

    .line 272
    iget-object v3, p0, Lrx/internal/operators/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    move-object v1, v2

    .line 281
    .end local v2    # "u":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    :cond_2
    iget-object v3, v1, Lrx/internal/operators/cq$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lrx/internal/operators/cq$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 298
    if-eqz v0, :cond_3

    .line 299
    iget-object v3, p0, Lrx/internal/operators/cq;->b:Lrx/e;

    invoke-virtual {v3, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 301
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v4

    .line 281
    goto :goto_0
.end method
