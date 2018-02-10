.class final Lrx/internal/util/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/g;"
    }
.end annotation


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

.field c:Z


# direct methods
.method public constructor <init>(Lrx/l;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/util/k$d;, "Lrx/internal/util/k$d<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lrx/internal/util/k$d;->a:Lrx/l;

    .line 255
    iput-object p2, p0, Lrx/internal/util/k$d;->b:Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/k$d;, "Lrx/internal/util/k$d<TT;>;"
    const-wide/16 v4, 0x0

    .line 260
    iget-boolean v3, p0, Lrx/internal/util/k$d;->c:Z

    if-eqz v3, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 264
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_2
    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/util/k$d;->c:Z

    .line 270
    iget-object v0, p0, Lrx/internal/util/k$d;->a:Lrx/l;

    .line 271
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    iget-object v2, p0, Lrx/internal/util/k$d;->b:Ljava/lang/Object;

    .line 276
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {v0, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method
