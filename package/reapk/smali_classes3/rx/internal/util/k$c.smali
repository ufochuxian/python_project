.class final Lrx/internal/util/k$c;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/k;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/c/b;",
        "Lrx/g;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223a1f24fb024573L


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final c:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Lrx/c/b;",
            "Lrx/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;Ljava/lang/Object;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;TT;",
            "Lrx/c/p",
            "<",
            "Lrx/c/b;",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/util/k$c;, "Lrx/internal/util/k$c<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "onSchedule":Lrx/c/p;, "Lrx/c/p<Lrx/c/b;Lrx/m;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 177
    iput-object p1, p0, Lrx/internal/util/k$c;->a:Lrx/l;

    .line 178
    iput-object p2, p0, Lrx/internal/util/k$c;->b:Ljava/lang/Object;

    .line 179
    iput-object p3, p0, Lrx/internal/util/k$c;->c:Lrx/c/p;

    .line 180
    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/util/k$c;, "Lrx/internal/util/k$c<TT;>;"
    iget-object v0, p0, Lrx/internal/util/k$c;->a:Lrx/l;

    .line 195
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lrx/internal/util/k$c;->b:Ljava/lang/Object;

    .line 200
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {v0, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/k$c;, "Lrx/internal/util/k$c<TT;>;"
    const-wide/16 v2, 0x0

    .line 184
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/k$c;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lrx/internal/util/k$c;->a:Lrx/l;

    iget-object v0, p0, Lrx/internal/util/k$c;->c:Lrx/c/p;

    invoke-interface {v0, p0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    invoke-virtual {v1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 190
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/util/k$c;, "Lrx/internal/util/k$c<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScalarAsyncProducer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/util/k$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/k$c;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
