.class final Lrx/internal/operators/am$a$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/am$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TD1;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lrx/internal/operators/am$a;


# direct methods
.method public constructor <init>(Lrx/internal/operators/am$a;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/am$a$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.a;"
    iput-object p1, p0, Lrx/internal/operators/am$a$a;->c:Lrx/internal/operators/am$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/am$a$a;->b:Z

    .line 275
    iput p2, p0, Lrx/internal/operators/am$a$a;->a:I

    .line 276
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/operators/am$a$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.a;"
    iget-boolean v1, p0, Lrx/internal/operators/am$a$a;->b:Z

    if-eqz v1, :cond_1

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/am$a$a;->b:Z

    .line 283
    iget-object v2, p0, Lrx/internal/operators/am$a$a;->c:Lrx/internal/operators/am$a;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/am$a$a;->c:Lrx/internal/operators/am$a;

    invoke-virtual {v1}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lrx/internal/operators/am$a$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/f;

    .line 285
    .local v0, "gr":Lrx/f;, "Lrx/f<TT2;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 289
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/am$a$a;->c:Lrx/internal/operators/am$a;

    iget-object v1, v1, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    invoke-virtual {v1, p0}, Lrx/i/b;->b(Lrx/m;)V

    .line 291
    .end local v0    # "gr":Lrx/f;, "Lrx/f<TT2;>;"
    :cond_1
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/operators/am$a$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.a;"
    iget-object v0, p0, Lrx/internal/operators/am$a$a;->c:Lrx/internal/operators/am$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/am$a;->b(Ljava/lang/Throwable;)V

    .line 296
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD1;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lrx/internal/operators/am$a$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.a;"
    .local p1, "args":Ljava/lang/Object;, "TD1;"
    invoke-virtual {p0}, Lrx/internal/operators/am$a$a;->onCompleted()V

    .line 301
    return-void
.end method
