.class public final Lrx/internal/operators/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ec$b;,
        Lrx/internal/operators/ec$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
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

.field final b:[Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/e",
            "<*>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation
.end field

.field final d:Lrx/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;[",
            "Lrx/e",
            "<*>;",
            "Ljava/lang/Iterable",
            "<",
            "Lrx/e",
            "<*>;>;",
            "Lrx/c/y",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/ec;, "Lrx/internal/operators/ec<TT;TR;>;"
    .local p1, "main":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "others":[Lrx/e;, "[Lrx/e<*>;"
    .local p3, "othersIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/e<*>;>;"
    .local p4, "combiner":Lrx/c/y;, "Lrx/c/y<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/ec;->a:Lrx/e;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/ec;->b:[Lrx/e;

    .line 40
    iput-object p3, p0, Lrx/internal/operators/ec;->c:Ljava/lang/Iterable;

    .line 41
    iput-object p4, p0, Lrx/internal/operators/ec;->d:Lrx/c/y;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/ec;, "Lrx/internal/operators/ec<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v7, Lrx/e/g;

    invoke-direct {v7, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 50
    .local v7, "serial":Lrx/e/g;, "Lrx/e/g<TR;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "n":I
    iget-object v9, p0, Lrx/internal/operators/ec;->b:[Lrx/e;

    if-eqz v9, :cond_1

    .line 53
    iget-object v8, p0, Lrx/internal/operators/ec;->b:[Lrx/e;

    .line 54
    .local v8, "sources":[Lrx/e;, "[Lrx/e<*>;"
    array-length v3, v8

    .line 65
    :cond_0
    new-instance v6, Lrx/internal/operators/ec$a;

    iget-object v9, p0, Lrx/internal/operators/ec;->d:Lrx/c/y;

    invoke-direct {v6, p1, v9, v3}, Lrx/internal/operators/ec$a;-><init>(Lrx/l;Lrx/c/y;I)V

    .line 67
    .local v6, "parent":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    invoke-virtual {v7, v6}, Lrx/e/g;->add(Lrx/m;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 71
    invoke-virtual {v7}, Lrx/e/g;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 83
    :goto_1
    return-void

    .line 56
    .end local v0    # "i":I
    .end local v6    # "parent":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    .end local v8    # "sources":[Lrx/e;, "[Lrx/e<*>;"
    :cond_1
    const/16 v9, 0x8

    new-array v8, v9, [Lrx/e;

    .line 57
    .restart local v8    # "sources":[Lrx/e;, "[Lrx/e<*>;"
    iget-object v9, p0, Lrx/internal/operators/ec;->c:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/e;

    .line 58
    .local v5, "o":Lrx/e;, "Lrx/e<*>;"
    array-length v9, v8

    if-ne v3, v9, :cond_2

    .line 59
    shr-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sources":[Lrx/e;, "[Lrx/e<*>;"
    check-cast v8, [Lrx/e;

    .line 61
    .restart local v8    # "sources":[Lrx/e;, "[Lrx/e<*>;"
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    aput-object v5, v8, v3

    move v3, v4

    .line 62
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_2

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Lrx/e;, "Lrx/e<*>;"
    .restart local v0    # "i":I
    .restart local v6    # "parent":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    :cond_3
    new-instance v2, Lrx/internal/operators/ec$b;

    add-int/lit8 v9, v0, 0x1

    invoke-direct {v2, v6, v9}, Lrx/internal/operators/ec$b;-><init>(Lrx/internal/operators/ec$a;I)V

    .line 76
    .local v2, "inner":Lrx/internal/operators/ec$b;
    invoke-virtual {v6, v2}, Lrx/internal/operators/ec$a;->add(Lrx/m;)V

    .line 78
    aget-object v5, v8, v0

    .line 79
    .restart local v5    # "o":Lrx/e;, "Lrx/e<*>;"
    invoke-virtual {v5, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "inner":Lrx/internal/operators/ec$b;
    .end local v5    # "o":Lrx/e;, "Lrx/e<*>;"
    :cond_4
    iget-object v9, p0, Lrx/internal/operators/ec;->a:Lrx/e;

    invoke-virtual {v9, v6}, Lrx/e;->a(Lrx/l;)Lrx/m;

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ec;, "Lrx/internal/operators/ec<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ec;->a(Lrx/l;)V

    return-void
.end method
