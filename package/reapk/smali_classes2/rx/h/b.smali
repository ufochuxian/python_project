.class public final Lrx/h/b;
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


# static fields
.field private static final b:[Ljava/lang/Object;


# instance fields
.field private final c:Lrx/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/g",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/h/b;->b:[Ljava/lang/Object;

    return-void
.end method

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
    .line 118
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 119
    iput-object p2, p0, Lrx/h/b;->c:Lrx/h/g;

    .line 120
    return-void
.end method

.method public static K()Lrx/h/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrx/h/b;->a(Ljava/lang/Object;Z)Lrx/h/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Z)Lrx/h/b;
    .locals 2
    .param p1, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lrx/h/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/h/g;

    invoke-direct {v0}, Lrx/h/g;-><init>()V

    .line 102
    .local v0, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p0}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h/g;->a(Ljava/lang/Object;)V

    .line 105
    :cond_0
    new-instance v1, Lrx/h/b$1;

    invoke-direct {v1, v0}, Lrx/h/b$1;-><init>(Lrx/h/g;)V

    iput-object v1, v0, Lrx/h/g;->d:Lrx/c/c;

    .line 113
    iget-object v1, v0, Lrx/h/g;->d:Lrx/c/c;

    iput-object v1, v0, Lrx/h/g;->e:Lrx/c/c;

    .line 114
    new-instance v1, Lrx/h/b;

    invoke-direct {v1, v0, v0}, Lrx/h/b;-><init>(Lrx/e$a;Lrx/h/g;)V

    return-object v1
.end method

.method public static h(Ljava/lang/Object;)Lrx/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/h/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lrx/h/b;->a(Ljava/lang/Object;Z)Lrx/h/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v0, p0, Lrx/h/b;->c:Lrx/h/g;

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

.method M()I
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v0, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v0}, Lrx/h/g;->b()[Lrx/h/g$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public N()Z
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->e(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public O()Z
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public P()Z
    .locals 2

    .prologue
    .line 200
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public Q()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-static {v0}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public R()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 227
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {v0}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public S()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    sget-object v1, Lrx/h/b;->b:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/h/b;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/h/b;->b:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 270
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 272
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v0
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    iget-object v1, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/operators/v;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    array-length v1, p1

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-static {v0}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v3

    .line 248
    array-length v1, p1

    if-le v1, v2, :cond_1

    .line 249
    aput-object v4, p1, v2

    .line 255
    :cond_1
    :goto_0
    return-object p1

    .line 252
    :cond_2
    array-length v1, p1

    if-lez v1, :cond_1

    .line 253
    aput-object v4, p1, v3

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 7

    .prologue
    .line 124
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v6}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    iget-boolean v6, v6, Lrx/h/g;->b:Z

    if-eqz v6, :cond_1

    .line 126
    :cond_0
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v5

    .line 127
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v6, v5}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 128
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-virtual {v1, v5}, Lrx/h/g$b;->a(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    iget-object v8, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v8}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v5

    .line 136
    .local v5, "last":Ljava/lang/Object;
    if-eqz v5, :cond_0

    iget-object v8, p0, Lrx/h/b;->c:Lrx/h/g;

    iget-boolean v8, v8, Lrx/h/g;->b:Z

    if-eqz v8, :cond_3

    .line 137
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    .line 138
    .local v7, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 139
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v8, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v8, v7}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 141
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    :try_start_0
    invoke-virtual {v1, v7}, Lrx/h/g$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_1

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_2
    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/util/List;)V

    .line 152
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lrx/h/b;, "Lrx/h/b<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v6}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    iget-boolean v6, v6, Lrx/h/g;->b:Z

    if-eqz v6, :cond_1

    .line 158
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/h/b;->c:Lrx/h/g;

    invoke-virtual {v6, v5}, Lrx/h/g;->b(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 160
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-virtual {v1, v5}, Lrx/h/g$b;->a(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method
