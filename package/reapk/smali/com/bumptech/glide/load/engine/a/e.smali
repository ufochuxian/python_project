.class Lcom/bumptech/glide/load/engine/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/a/h;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    .line 114
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    .local p1, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 93
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->c(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 94
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    .local p1, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 101
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->c(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 102
    return-void
.end method

.method private static c(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 107
    return-void
.end method

.method private static d(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/e$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 112
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v2, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 52
    .local v0, "last":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "removed":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 69
    .end local v1    # "removed":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 61
    .restart local v1    # "removed":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 62
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/a/h;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    .line 66
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 67
    goto :goto_0

    .line 69
    .end local v1    # "removed":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    .local p1, "key":Lcom/bumptech/glide/load/engine/a/h;, "TK;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/e$a;

    .line 37
    .local v0, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    .end local v0    # "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>(Ljava/lang/Object;)V

    .line 39
    .restart local v0    # "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/h;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    .local p1, "key":Lcom/bumptech/glide/load/engine/a/h;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/e$a;

    .line 24
    .local v0, "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    .end local v0    # "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>(Ljava/lang/Object;)V

    .line 26
    .restart local v0    # "entry":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/e;->b(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/e;, "Lcom/bumptech/glide/load/engine/a/e<TK;TV;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GroupedLinkedMap( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v3, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 76
    .local v0, "current":Lcom/bumptech/glide/load/engine/a/e$a;, "Lcom/bumptech/glide/load/engine/a/e$a<TK;TV;>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "hadAtLeastOneItem":Z
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v1, 0x1

    .line 79
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    goto :goto_0

    .line 82
    :cond_0
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
