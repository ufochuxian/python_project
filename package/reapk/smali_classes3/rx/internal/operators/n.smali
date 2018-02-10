.class public final Lrx/internal/operators/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/n$a;
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Z


# direct methods
.method public constructor <init>(Lrx/e;IZ)V
    .locals 0
    .param p2, "maxConcurrency"    # I
    .param p3, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "source":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/n;->a:Lrx/e;

    .line 38
    iput p2, p0, Lrx/internal/operators/n;->b:I

    .line 39
    iput-boolean p3, p0, Lrx/internal/operators/n;->c:Z

    .line 40
    return-void
.end method

.method public static a(Ljava/util/Queue;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const/4 v2, 0x0

    .line 210
    :goto_1
    return-object v2

    .line 207
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 208
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    .line 210
    :cond_2
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 44
    new-instance v0, Lrx/internal/operators/n$a;

    iget v1, p0, Lrx/internal/operators/n;->b:I

    iget-boolean v2, p0, Lrx/internal/operators/n;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/n$a;-><init>(Lrx/d;IZ)V

    .line 45
    .local v0, "parent":Lrx/internal/operators/n$a;
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 46
    iget-object v1, p0, Lrx/internal/operators/n;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 47
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/n;->a(Lrx/d;)V

    return-void
.end method
