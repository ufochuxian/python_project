.class public final Lrx/h/a;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lrx/e$a;Lrx/h/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;",
            "Lrx/h/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 89
    iput-object p2, p0, Lrx/h/a;->b:Lrx/h/g;

    .line 90
    return-void
.end method

.method public static K()Lrx/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lrx/h/g;

    invoke-direct {v0}, Lrx/h/g;-><init>()V

    .line 70
    .local v0, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    new-instance v1, Lrx/h/a$1;

    invoke-direct {v1, v0}, Lrx/h/a$1;-><init>(Lrx/h/g;)V

    iput-object v1, v0, Lrx/h/g;->e:Lrx/c/c;

    .line 84
    new-instance v1, Lrx/h/a;

    invoke-direct {v1, v0, v0}, Lrx/h/a;-><init>(Lrx/e$a;Lrx/h/g;)V

    return-object v1
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v0, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v0}, Lrx/h/g;->b()[Lrx/h/g$b;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 3

    .prologue
    .line 147
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v1, p0, Lrx/h/a;->c:Ljava/lang/Object;

    .line 148
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v2}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lrx/internal/operators/v;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 2

    .prologue
    .line 157
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v1, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public O()Z
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v1, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public P()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v1, p0, Lrx/h/a;->c:Ljava/lang/Object;

    .line 181
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v2}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lrx/internal/operators/v;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {v1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Q()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 194
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v1, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v0}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 9

    .prologue
    .line 94
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v5, p0, Lrx/h/a;->b:Lrx/h/g;

    iget-boolean v5, v5, Lrx/h/g;->b:Z

    if-eqz v5, :cond_2

    .line 95
    iget-object v3, p0, Lrx/h/a;->c:Ljava/lang/Object;

    .line 96
    .local v3, "last":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 97
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v3

    .line 99
    :cond_0
    iget-object v5, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v5, v3}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 100
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 101
    invoke-virtual {v1}, Lrx/h/g$b;->onCompleted()V

    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v5, v1, Lrx/h/g$b;->a:Lrx/l;

    new-instance v6, Lrx/internal/producers/SingleProducer;

    iget-object v7, v1, Lrx/h/g$b;->a:Lrx/l;

    invoke-static {v3}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/l;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lrx/l;->setProducer(Lrx/g;)V

    goto :goto_1

    .line 107
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "last":Ljava/lang/Object;
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    iget-object v7, p0, Lrx/h/a;->b:Lrx/h/g;

    iget-boolean v7, v7, Lrx/h/g;->b:Z

    if-eqz v7, :cond_2

    .line 112
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    .line 113
    .local v6, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 114
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lrx/h/a;->b:Lrx/h/g;

    invoke-virtual {v7, v6}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 116
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    :try_start_0
    invoke-virtual {v1, p1}, Lrx/h/g$b;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/util/List;)V

    .line 127
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/h/a;, "Lrx/h/a<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/h/a;->c:Ljava/lang/Object;

    .line 132
    return-void
.end method
