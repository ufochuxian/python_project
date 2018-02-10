.class public final Lrx/internal/operators/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bf$a;,
        Lrx/internal/operators/bf$b;
    }
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
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;",
        "Lrx/e$a",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private final d:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    const/4 v4, 0x0

    invoke-static {}, Lrx/internal/operators/bf$a;->a()Lrx/internal/operators/bf$a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;Lrx/c/p;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p4, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-static {}, Lrx/internal/operators/bf$a;->a()Lrx/internal/operators/bf$a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;Lrx/c/p;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/c/p",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p4, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p5, "collectionFactory":Lrx/c/p;, "Lrx/c/p<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lrx/internal/operators/bf;->e:Lrx/e;

    .line 99
    iput-object p2, p0, Lrx/internal/operators/bf;->a:Lrx/c/p;

    .line 100
    iput-object p3, p0, Lrx/internal/operators/bf;->b:Lrx/c/p;

    .line 101
    if-nez p4, :cond_0

    .line 102
    iput-object p0, p0, Lrx/internal/operators/bf;->c:Lrx/c/o;

    .line 106
    :goto_0
    iput-object p5, p0, Lrx/internal/operators/bf;->d:Lrx/c/p;

    .line 107
    return-void

    .line 104
    :cond_0
    iput-object p4, p0, Lrx/internal/operators/bf;->c:Lrx/c/o;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public a(Lrx/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/bf;->c:Lrx/c/o;

    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lrx/internal/operators/bf$b;

    iget-object v3, p0, Lrx/internal/operators/bf;->a:Lrx/c/p;

    iget-object v4, p0, Lrx/internal/operators/bf;->b:Lrx/c/p;

    iget-object v5, p0, Lrx/internal/operators/bf;->d:Lrx/c/p;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bf$b;-><init>(Lrx/l;Ljava/util/Map;Lrx/c/p;Lrx/c/p;Lrx/c/p;)V

    iget-object v1, p0, Lrx/internal/operators/bf;->e:Lrx/e;

    invoke-virtual {v0, v1}, Lrx/internal/operators/bf$b;->a(Lrx/e;)V

    .line 129
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v6

    .line 122
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {p1, v6}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    invoke-virtual {p0}, Lrx/internal/operators/bf;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/bf;, "Lrx/internal/operators/bf<TT;TK;TV;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bf;->a(Lrx/l;)V

    return-void
.end method
