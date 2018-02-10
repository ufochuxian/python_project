.class public final Lrx/h/d;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/d$b;,
        Lrx/h/d$c;,
        Lrx/h/d$d;,
        Lrx/h/d$f;,
        Lrx/h/d$a;,
        Lrx/h/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/Object;


# instance fields
.field final b:Lrx/h/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/h/d;->c:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/h/d$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    .local p1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 237
    iput-object p1, p0, Lrx/h/d;->b:Lrx/h/d$e;

    .line 238
    return-void
.end method

.method public static K()Lrx/h/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/h/d;->o(I)Lrx/h/d;

    move-result-object v0

    return-object v0
.end method

.method static M()Lrx/h/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lrx/h/d$d;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Lrx/h/d$d;-><init>(I)V

    .line 114
    .local v0, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    new-instance v1, Lrx/h/d$e;

    invoke-direct {v1, v0}, Lrx/h/d$e;-><init>(Lrx/h/d$a;)V

    .line 115
    .local v1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    new-instance v2, Lrx/h/d;

    invoke-direct {v2, v1}, Lrx/h/d;-><init>(Lrx/h/d$e;)V

    return-object v2
.end method

.method static N()Lrx/h/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lrx/h/d$c;

    const v2, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/h;

    move-result-object v3

    invoke-direct {v0, v2, v4, v5, v3}, Lrx/h/d$c;-><init>(IJLrx/h;)V

    .line 132
    .local v0, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    new-instance v1, Lrx/h/d$e;

    invoke-direct {v1, v0}, Lrx/h/d$e;-><init>(Lrx/h/d$a;)V

    .line 133
    .local v1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    new-instance v2, Lrx/h/d;

    invoke-direct {v2, v1}, Lrx/h/d;-><init>(Lrx/h/d$e;)V

    return-object v2
.end method

.method public static c(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/h/d;
    .locals 4
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/h;",
            ")",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lrx/h/d$c;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, p3, v2, v3, p4}, Lrx/h/d$c;-><init>(IJLrx/h;)V

    .line 231
    .local v0, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    new-instance v1, Lrx/h/d$e;

    invoke-direct {v1, v0}, Lrx/h/d$e;-><init>(Lrx/h/d$a;)V

    .line 232
    .local v1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    new-instance v2, Lrx/h/d;

    invoke-direct {v2, v1}, Lrx/h/d;-><init>(Lrx/h/d$e;)V

    return-object v2
.end method

.method public static o(I)Lrx/h/d;
    .locals 5
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    if-gtz p0, :cond_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capacity > 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    new-instance v0, Lrx/h/d$f;

    invoke-direct {v0, p0}, Lrx/h/d$f;-><init>(I)V

    .line 96
    .local v0, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    new-instance v1, Lrx/h/d$e;

    invoke-direct {v1, v0}, Lrx/h/d$e;-><init>(Lrx/h/d$a;)V

    .line 97
    .local v1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    new-instance v2, Lrx/h/d;

    invoke-direct {v2, v1}, Lrx/h/d;-><init>(Lrx/h/d$e;)V

    return-object v2
.end method

.method public static p(I)Lrx/h/d;
    .locals 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lrx/h/d$d;

    invoke-direct {v0, p0}, Lrx/h/d$d;-><init>(I)V

    .line 157
    .local v0, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    new-instance v1, Lrx/h/d$e;

    invoke-direct {v1, v0}, Lrx/h/d$e;-><init>(Lrx/h/d$a;)V

    .line 158
    .local v1, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    new-instance v2, Lrx/h/d;

    invoke-direct {v2, v1}, Lrx/h/d;-><init>(Lrx/h/d$e;)V

    return-object v2
.end method

.method public static s(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/h/d;
    .locals 2
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/h/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0, p3}, Lrx/h/d;->c(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/h/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 263
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method O()I
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    array-length v0, v0

    return v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()I
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->e()I

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    invoke-virtual {p0}, Lrx/h/d;->T()Z

    move-result v0

    return v0
.end method

.method public V()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 338
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    sget-object v1, Lrx/h/d;->c:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/h/d;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 339
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/h/d;->c:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 340
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 342
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v0
.end method

.method public W()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0}, Lrx/h/d$a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0, p1}, Lrx/h/d$a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 252
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0}, Lrx/h/d$e;->onCompleted()V

    .line 253
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0, p1}, Lrx/h/d$e;->onError(Ljava/lang/Throwable;)V

    .line 248
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
    .line 242
    .local p0, "this":Lrx/h/d;, "Lrx/h/d<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/d;->b:Lrx/h/d$e;

    invoke-virtual {v0, p1}, Lrx/h/d$e;->onNext(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
