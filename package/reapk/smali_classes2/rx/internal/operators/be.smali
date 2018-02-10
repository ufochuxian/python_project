.class public final Lrx/internal/operators/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/be$a;
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
        "<TK;TV;>;>;",
        "Lrx/e$a",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V
    .locals 1
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
    .line 57
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/be;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V
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
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p4, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lrx/internal/operators/be;->a:Lrx/e;

    .line 73
    iput-object p2, p0, Lrx/internal/operators/be;->b:Lrx/c/p;

    .line 74
    iput-object p3, p0, Lrx/internal/operators/be;->c:Lrx/c/p;

    .line 75
    if-nez p4, :cond_0

    .line 76
    iput-object p0, p0, Lrx/internal/operators/be;->d:Lrx/c/o;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p4, p0, Lrx/internal/operators/be;->d:Lrx/c/o;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public a(Lrx/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/util/Map<TK;TV;>;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/be;->d:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v2, Lrx/internal/operators/be$a;

    iget-object v3, p0, Lrx/internal/operators/be;->b:Lrx/c/p;

    iget-object v4, p0, Lrx/internal/operators/be;->c:Lrx/c/p;

    invoke-direct {v2, p1, v1, v3, v4}, Lrx/internal/operators/be$a;-><init>(Lrx/l;Ljava/util/Map;Lrx/c/p;Lrx/c/p;)V

    iget-object v3, p0, Lrx/internal/operators/be;->a:Lrx/e;

    invoke-virtual {v2, v3}, Lrx/internal/operators/be$a;->a(Lrx/e;)V

    .line 98
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    invoke-virtual {p0}, Lrx/internal/operators/be;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/be;, "Lrx/internal/operators/be<TT;TK;TV;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/be;->a(Lrx/l;)V

    return-void
.end method
