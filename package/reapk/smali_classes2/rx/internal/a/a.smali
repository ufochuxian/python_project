.class public Lrx/internal/a/a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/e/a",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/b/b;
.end annotation


# instance fields
.field private final a:Lrx/e/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "ts":Lrx/e/j;, "Lrx/e/j<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    .line 44
    return-void
.end method

.method public static a(J)Lrx/internal/a/a;
    .locals 2
    .param p0, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lrx/internal/a/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lrx/e/j;

    invoke-direct {v0, p0, p1}, Lrx/e/j;-><init>(J)V

    .line 48
    .local v0, "t1":Lrx/e/j;, "Lrx/e/j<TT;>;"
    new-instance v1, Lrx/internal/a/a;

    invoke-direct {v1, v0}, Lrx/internal/a/a;-><init>(Lrx/e/j;)V

    .line 49
    .local v1, "t2":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/a/a;->add(Lrx/m;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->c()I

    move-result v0

    return v0
.end method

.method public a(I)Lrx/e/a;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(I)V

    .line 268
    return-object p0
.end method

.method public final a(IJLjava/util/concurrent/TimeUnit;)Lrx/e/a;
    .locals 4
    .param p1, "expected"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/e/j;->a(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not receive enough values in time. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v2}, Lrx/e/j;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 142
    :cond_0
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lrx/e/a;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1, p2, p3}, Lrx/e/j;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 187
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(Ljava/lang/Class;)V

    .line 232
    return-object p0
.end method

.method public final varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lrx/e/a;
    .locals 4
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            "[TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v1, p3}, Lrx/e/j;->a([Ljava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v1, p1}, Lrx/e/j;->a(Ljava/lang/Class;)V

    .line 334
    iget-object v1, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v1}, Lrx/e/j;->m()V

    .line 336
    iget-object v1, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v1}, Lrx/e/j;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "actualMessage":Ljava/lang/String;
    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error message differs. Expected: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Received: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 341
    :cond_1
    return-object p0
.end method

.method public final varargs a(Ljava/lang/Class;[Ljava/lang/Object;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;[TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p2}, Lrx/e/j;->a([Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(Ljava/lang/Class;)V

    .line 325
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->m()V

    .line 326
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(Ljava/lang/Object;)V

    .line 286
    return-object p0
.end method

.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "expectedFirstValue":Ljava/lang/Object;, "TT;"
    .local p2, "expectedRestValues":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1, p2}, Lrx/e/j;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 296
    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lrx/e/a;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(Ljava/lang/Throwable;)V

    .line 241
    return-object p0
.end method

.method public a(Ljava/util/List;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a(Ljava/util/List;)V

    .line 131
    return-object p0
.end method

.method public final a(Lrx/c/b;)Lrx/e/a;
    .locals 0
    .param p1, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    invoke-interface {p1}, Lrx/c/b;->call()V

    .line 305
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a([Ljava/lang/Object;)V

    .line 277
    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lrx/e/a;
    .locals 1
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1, p2}, Lrx/e/j;->b(J)V

    .line 114
    return-object p0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lrx/e/a;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1, p2, p3}, Lrx/e/j;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 197
    return-object p0
.end method

.method public final varargs b([Ljava/lang/Object;)Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->a([Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->i()V

    .line 317
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->l()V

    .line 318
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->e()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->g()V

    .line 151
    return-object p0
.end method

.method public f()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->h()V

    .line 160
    return-object p0
.end method

.method public g()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->i()V

    .line 169
    return-object p0
.end method

.method public h()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->j()V

    .line 178
    return-object p0
.end method

.method public i()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->k()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public j()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->l()V

    .line 214
    return-object p0
.end method

.method public k()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->m()V

    .line 223
    return-object p0
.end method

.method public l()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->n()V

    .line 250
    return-object p0
.end method

.method public m()Lrx/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->o()V

    .line 259
    return-object p0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->onCompleted()V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 97
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->onNext(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Lrx/e/j;->onStart()V

    .line 59
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0, p1}, Lrx/e/j;->setProducer(Lrx/g;)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    iget-object v0, p0, Lrx/internal/a/a;->a:Lrx/e/j;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
