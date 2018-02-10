.class public final Lrx/internal/operators/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/w$b;,
        Lrx/internal/operators/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lrx/internal/operators/w;, "Lrx/internal/operators/w<TT;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lrx/internal/operators/w;->a:Ljava/lang/Iterable;

    .line 362
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lrx/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/w;

    invoke-direct {v0, p0}, Lrx/internal/operators/w;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "o9":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/e<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {v0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v1

    return-object v1
.end method

.method static a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/w$a",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "ambSubscribers":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/internal/operators/w$a<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/w$a;

    .line 442
    .local v1, "other":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    invoke-virtual {v1}, Lrx/internal/operators/w$a;->unsubscribe()V

    goto :goto_0

    .line 444
    .end local v1    # "other":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 446
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lrx/internal/operators/w;, "Lrx/internal/operators/w<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v3, Lrx/internal/operators/w$b;

    invoke-direct {v3}, Lrx/internal/operators/w$b;-><init>()V

    .line 369
    .local v3, "selection":Lrx/internal/operators/w$b;, "Lrx/internal/operators/w$b<TT;>;"
    new-instance v5, Lrx/internal/operators/w$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/operators/w$1;-><init>(Lrx/internal/operators/w;Lrx/internal/operators/w$b;)V

    invoke-static {v5}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/l;->add(Lrx/m;)V

    .line 388
    iget-object v5, p0, Lrx/internal/operators/w;->a:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/e;

    .line 389
    .local v4, "source":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    .end local v4    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_0
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 407
    iget-object v5, v3, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    invoke-static {v5}, Lrx/internal/operators/w;->a(Ljava/util/Collection;)V

    .line 410
    :cond_1
    new-instance v5, Lrx/internal/operators/w$2;

    invoke-direct {v5, p0, v3}, Lrx/internal/operators/w$2;-><init>(Lrx/internal/operators/w;Lrx/internal/operators/w$b;)V

    invoke-virtual {p1, v5}, Lrx/l;->setProducer(Lrx/g;)V

    .line 437
    :goto_1
    return-void

    .line 392
    .restart local v4    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_2
    new-instance v0, Lrx/internal/operators/w$a;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7, p1, v3}, Lrx/internal/operators/w$a;-><init>(JLrx/l;Lrx/internal/operators/w$b;)V

    .line 393
    .local v0, "ambSubscriber":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    iget-object v5, v3, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v3}, Lrx/internal/operators/w$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/w$a;

    .local v1, "c":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {v3, v1}, Lrx/internal/operators/w$b;->unsubscribeOthers(Lrx/internal/operators/w$a;)V

    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {v4, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/w;, "Lrx/internal/operators/w<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/w;->a(Lrx/l;)V

    return-void
.end method
