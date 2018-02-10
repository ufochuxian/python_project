.class public final Lrx/internal/operators/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<TResource;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TResource;+",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final d:Z


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
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/bh;, "Lrx/internal/operators/bh<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p2, "observableFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/e<+TT;>;>;"
    .local p3, "dispose":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/bh;->a:Lrx/c/o;

    .line 43
    iput-object p2, p0, Lrx/internal/operators/bh;->b:Lrx/c/p;

    .line 44
    iput-object p3, p0, Lrx/internal/operators/bh;->c:Lrx/c/c;

    .line 45
    iput-boolean p4, p0, Lrx/internal/operators/bh;->d:Z

    .line 46
    return-void
.end method

.method private a(Lrx/c/b;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "disposeOnceOnly"    # Lrx/c/b;

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/bh;, "Lrx/internal/operators/bh<TT;TResource;>;"
    :try_start_0
    invoke-interface {p1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/bh;, "Lrx/internal/operators/bh<TT;TResource;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/bh;->a:Lrx/c/o;

    invoke-interface {v6}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "resource":Ljava/lang/Object;, "TResource;"
    new-instance v1, Lrx/internal/operators/bh$a;

    iget-object v6, p0, Lrx/internal/operators/bh;->c:Lrx/c/c;

    invoke-direct {v1, v6, v4}, Lrx/internal/operators/bh$a;-><init>(Lrx/c/c;Ljava/lang/Object;)V

    .line 59
    .local v1, "disposeOnceOnly":Lrx/internal/operators/bh$a;, "Lrx/internal/operators/bh$a<TResource;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    iget-object v6, p0, Lrx/internal/operators/bh;->b:Lrx/c/p;

    invoke-interface {v6, v4}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .local v5, "source":Lrx/e;, "Lrx/e<+TT;>;"
    :try_start_2
    iget-boolean v6, p0, Lrx/internal/operators/bh;->d:Z

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v5, v1}, Lrx/e;->c(Lrx/c/b;)Lrx/e;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 94
    .local v3, "observable":Lrx/e;, "Lrx/e<+TT;>;"
    :goto_0
    :try_start_3
    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v6

    invoke-virtual {v3, v6}, Lrx/e;->a(Lrx/l;)Lrx/m;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/bh$a;, "Lrx/internal/operators/bh$a<TResource;>;"
    .end local v3    # "observable":Lrx/e;, "Lrx/e<+TT;>;"
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v5    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    :goto_1
    return-void

    .line 67
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/bh$a;, "Lrx/internal/operators/bh$a<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-direct {p0, v1}, Lrx/internal/operators/bh;->a(Lrx/c/b;)Ljava/lang/Throwable;

    move-result-object v0

    .line 69
    .local v0, "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 70
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 106
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/bh$a;, "Lrx/internal/operators/bh$a<TResource;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_1
    move-exception v2

    .line 108
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_1

    .line 75
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/bh$a;, "Lrx/internal/operators/bh$a<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :cond_0
    :try_start_5
    invoke-virtual {p1, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_1
    invoke-virtual {v5, v1}, Lrx/e;->f(Lrx/c/b;)Lrx/e;

    move-result-object v3

    .restart local v3    # "observable":Lrx/e;, "Lrx/e<+TT;>;"
    goto :goto_0

    .line 95
    :catch_2
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/internal/operators/bh;->a(Lrx/c/b;)Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 98
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 99
    if-eqz v0, :cond_2

    .line 100
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/bh;, "Lrx/internal/operators/bh<TT;TResource;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bh;->a(Lrx/l;)V

    return-void
.end method
