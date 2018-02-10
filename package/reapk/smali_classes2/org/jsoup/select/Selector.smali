.class public Lorg/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# instance fields
.field private final a:Lorg/jsoup/select/d;

.field private final b:Lorg/jsoup/nodes/f;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "root"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 80
    invoke-static {p1}, Lorg/jsoup/select/g;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/select/Selector;->a:Lorg/jsoup/select/d;

    .line 82
    iput-object p2, p0, Lorg/jsoup/select/Selector;->b:Lorg/jsoup/nodes/f;

    .line 83
    return-void
.end method

.method private a()Lorg/jsoup/select/c;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jsoup/select/Selector;->a:Lorg/jsoup/select/d;

    iget-object v1, p0, Lorg/jsoup/select/Selector;->b:Lorg/jsoup/nodes/f;

    invoke-static {v0, v1}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jsoup/select/c;
    .locals 4
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;)",
            "Lorg/jsoup/select/c;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/jsoup/nodes/f;>;"
    invoke-static {p0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .local v0, "elements":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lorg/jsoup/nodes/f;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    .line 109
    .local v2, "root":Lorg/jsoup/nodes/f;
    invoke-static {p0, v2}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 111
    .end local v2    # "root":Lorg/jsoup/nodes/f;
    :cond_0
    new-instance v3, Lorg/jsoup/select/c;

    invoke-direct {v3, v0}, Lorg/jsoup/select/c;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "root"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 93
    new-instance v0, Lorg/jsoup/select/Selector;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/select/Selector;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/f;)V

    invoke-direct {v0}, Lorg/jsoup/select/Selector;->a()Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Lorg/jsoup/select/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;)",
            "Lorg/jsoup/select/c;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/nodes/f;>;"
    .local p1, "outs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/nodes/f;>;"
    new-instance v5, Lorg/jsoup/select/c;

    invoke-direct {v5}, Lorg/jsoup/select/c;-><init>()V

    .line 121
    .local v5, "output":Lorg/jsoup/select/c;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 122
    .local v0, "el":Lorg/jsoup/nodes/f;
    const/4 v1, 0x0

    .line 123
    .local v1, "found":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/f;

    .line 124
    .local v4, "out":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/f;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    const/4 v1, 0x1

    .line 129
    .end local v4    # "out":Lorg/jsoup/nodes/f;
    :cond_2
    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v5, v0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    goto :goto_0

    .line 132
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    .end local v1    # "found":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v5
.end method
