.class public final Lrx/internal/operators/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<TResource;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TResource;+",
            "Lrx/i",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)V
    .locals 0
    .param p4, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<TResource;>;",
            "Lrx/c/p",
            "<-TResource;+",
            "Lrx/i",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/et;, "Lrx/internal/operators/et<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p2, "observableFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/i<+TT;>;>;"
    .local p3, "disposeAction":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/et;->a:Lrx/c/o;

    .line 42
    iput-object p2, p0, Lrx/internal/operators/et;->b:Lrx/c/p;

    .line 43
    iput-object p3, p0, Lrx/internal/operators/et;->c:Lrx/c/c;

    .line 44
    iput-boolean p4, p0, Lrx/internal/operators/et;->d:Z

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/et;, "Lrx/internal/operators/et<TT;TResource;>;"
    .local p1, "child":Lrx/k;, "Lrx/k<-TT;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/et;->a:Lrx/c/o;

    invoke-interface {v4}, Lrx/c/o;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    .local v2, "resource":Ljava/lang/Object;, "TResource;"
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/et;->b:Lrx/c/p;

    invoke-interface {v4, v2}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/i;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .local v3, "single":Lrx/i;, "Lrx/i<+TT;>;"
    if-nez v3, :cond_0

    .line 69
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "The single"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4}, Lrx/internal/operators/et;->a(Lrx/k;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    .end local v2    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v3    # "single":Lrx/i;, "Lrx/i<+TT;>;"
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p1, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v2, v0}, Lrx/internal/operators/et;->a(Lrx/k;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "single":Lrx/i;, "Lrx/i<+TT;>;"
    :cond_0
    new-instance v1, Lrx/internal/operators/et$1;

    invoke-direct {v1, p0, v2, p1}, Lrx/internal/operators/et$1;-><init>(Lrx/internal/operators/et;Ljava/lang/Object;Lrx/k;)V

    .line 104
    .local v1, "parent":Lrx/k;, "Lrx/k<TT;>;"
    invoke-virtual {p1, v1}, Lrx/k;->a(Lrx/m;)V

    .line 106
    invoke-virtual {v3, v1}, Lrx/i;->a(Lrx/k;)Lrx/m;

    goto :goto_0
.end method

.method a(Lrx/k;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;TResource;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/et;, "Lrx/internal/operators/et<TT;TResource;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    .local p2, "resource":Ljava/lang/Object;, "TResource;"
    invoke-static {p3}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 112
    iget-boolean v2, p0, Lrx/internal/operators/et;->d:Z

    if-eqz v2, :cond_0

    .line 114
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/et;->c:Lrx/c/c;

    invoke-interface {v2, p2}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 123
    iget-boolean v2, p0, Lrx/internal/operators/et;->d:Z

    if-nez v2, :cond_1

    .line 125
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/et;->c:Lrx/c/c;

    invoke-interface {v2, p2}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p3    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    move-object p3, v0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local p3    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 126
    .end local v1    # "ex2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 128
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/et;, "Lrx/internal/operators/et<TT;TResource;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/et;->a(Lrx/k;)V

    return-void
.end method
