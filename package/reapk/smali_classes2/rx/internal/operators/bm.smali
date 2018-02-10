.class public final Lrx/internal/operators/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bm$b;,
        Lrx/internal/operators/bm$c;,
        Lrx/internal/operators/bm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/bm;, "Lrx/internal/operators/bm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-gtz p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput p1, p0, Lrx/internal/operators/bm;->a:I

    .line 61
    iput p2, p0, Lrx/internal/operators/bm;->b:I

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/bm;, "Lrx/internal/operators/bm<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/bm;->b:I

    iget v4, p0, Lrx/internal/operators/bm;->a:I

    if-ne v3, v4, :cond_0

    .line 67
    new-instance v0, Lrx/internal/operators/bm$a;

    iget v3, p0, Lrx/internal/operators/bm;->a:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/bm$a;-><init>(Lrx/l;I)V

    .line 69
    .local v0, "parent":Lrx/internal/operators/bm$a;, "Lrx/internal/operators/bm$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 70
    invoke-virtual {v0}, Lrx/internal/operators/bm$a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    .line 87
    .end local v0    # "parent":Lrx/internal/operators/bm$a;, "Lrx/internal/operators/bm$a<TT;>;"
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget v3, p0, Lrx/internal/operators/bm;->b:I

    iget v4, p0, Lrx/internal/operators/bm;->a:I

    if-le v3, v4, :cond_1

    .line 75
    new-instance v2, Lrx/internal/operators/bm$c;

    iget v3, p0, Lrx/internal/operators/bm;->a:I

    iget v4, p0, Lrx/internal/operators/bm;->b:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/bm$c;-><init>(Lrx/l;II)V

    .line 77
    .local v2, "parent":Lrx/internal/operators/bm$c;, "Lrx/internal/operators/bm$c<TT;>;"
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 78
    invoke-virtual {v2}, Lrx/internal/operators/bm$c;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    move-object v0, v2

    .line 80
    goto :goto_0

    .line 82
    .end local v2    # "parent":Lrx/internal/operators/bm$c;, "Lrx/internal/operators/bm$c<TT;>;"
    :cond_1
    new-instance v1, Lrx/internal/operators/bm$b;

    iget v3, p0, Lrx/internal/operators/bm;->a:I

    iget v4, p0, Lrx/internal/operators/bm;->b:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/bm$b;-><init>(Lrx/l;II)V

    .line 84
    .local v1, "parent":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 85
    invoke-virtual {v1}, Lrx/internal/operators/bm$b;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/bm;, "Lrx/internal/operators/bm<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bm;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
