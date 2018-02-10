.class final Lrx/internal/operators/bf$b;
.super Lrx/internal/operators/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final j:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final k:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field private final l:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Ljava/util/Map;Lrx/c/p;Lrx/c/p;Lrx/c/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/p",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/bf$b;, "Lrx/internal/operators/bf$b<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p3, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p4, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p5, "collectionFactory":Lrx/c/p;, "Lrx/c/p<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/u;-><init>(Lrx/l;)V

    .line 144
    iput-object p2, p0, Lrx/internal/operators/bf$b;->c:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bf$b;->b:Z

    .line 146
    iput-object p3, p0, Lrx/internal/operators/bf$b;->j:Lrx/c/p;

    .line 147
    iput-object p4, p0, Lrx/internal/operators/bf$b;->k:Lrx/c/p;

    .line 148
    iput-object p5, p0, Lrx/internal/operators/bf$b;->l:Lrx/c/p;

    .line 149
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/bf$b;, "Lrx/internal/operators/bf$b<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v4, p0, Lrx/internal/operators/bf$b;->i:Z

    if-eqz v4, :cond_0

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/bf$b;->j:Lrx/c/p;

    invoke-interface {v4, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lrx/internal/operators/bf$b;->k:Lrx/c/p;

    invoke-interface {v4, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lrx/internal/operators/bf$b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 169
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 170
    iget-object v4, p0, Lrx/internal/operators/bf$b;->l:Lrx/c/p;

    invoke-interface {v4, v2}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast v0, Ljava/util/Collection;

    .line 171
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lrx/internal/operators/bf$b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0}, Lrx/internal/operators/bf$b;->unsubscribe()V

    .line 177
    invoke-virtual {p0, v1}, Lrx/internal/operators/bf$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/bf$b;, "Lrx/internal/operators/bf$b<TT;TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/bf$b;->request(J)V

    .line 154
    return-void
.end method
