.class final Lorg/jsoup/select/b$b;
.super Lorg/jsoup/select/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/select/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/select/d;>;"
    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    .line 74
    iget v0, p0, Lorg/jsoup/select/b$b;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/jsoup/select/b$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/jsoup/select/b$a;

    invoke-direct {v1, p1}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/b$b;->b()V

    .line 79
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "node"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/jsoup/select/b$b;->b:I

    if-ge v0, v2, :cond_1

    .line 93
    iget-object v2, p0, Lorg/jsoup/select/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/d;

    .line 94
    .local v1, "s":Lorg/jsoup/select/d;
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v2, 0x1

    .line 97
    .end local v1    # "s":Lorg/jsoup/select/d;
    :goto_1
    return v2

    .line 92
    .restart local v1    # "s":Lorg/jsoup/select/d;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "s":Lorg/jsoup/select/d;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b(Lorg/jsoup/select/d;)V
    .locals 1
    .param p1, "e"    # Lorg/jsoup/select/d;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jsoup/select/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lorg/jsoup/select/b$b;->b()V

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const-string v0, ":or%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/b$b;->a:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
