.class final Lrx/internal/operators/be$a;
.super Lrx/internal/operators/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/u",
        "<TT;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final j:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final k:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Ljava/util/Map;Lrx/c/p;Lrx/c/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/Map",
            "<TK;TV;>;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/be$a;, "Lrx/internal/operators/be$a<TT;TK;TV;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Ljava/util/Map<TK;TV;>;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p4, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/u;-><init>(Lrx/l;)V

    .line 108
    iput-object p2, p0, Lrx/internal/operators/be$a;->c:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/be$a;->b:Z

    .line 110
    iput-object p3, p0, Lrx/internal/operators/be$a;->j:Lrx/c/p;

    .line 111
    iput-object p4, p0, Lrx/internal/operators/be$a;->k:Lrx/c/p;

    .line 112
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/be$a;, "Lrx/internal/operators/be$a<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/internal/operators/be$a;->i:Z

    if-eqz v3, :cond_0

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/be$a;->j:Lrx/c/p;

    invoke-interface {v3, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lrx/internal/operators/be$a;->k:Lrx/c/p;

    invoke-interface {v3, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "val":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lrx/internal/operators/be$a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p0}, Lrx/internal/operators/be$a;->unsubscribe()V

    .line 131
    invoke-virtual {p0, v0}, Lrx/internal/operators/be$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/be$a;, "Lrx/internal/operators/be$a<TT;TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/be$a;->request(J)V

    .line 117
    return-void
.end method
