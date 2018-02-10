.class public Lorg/jsoup/select/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/List",
        "<",
        "Lorg/jsoup/nodes/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/nodes/f;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method public varargs constructor <init>([Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "elements"    # [Lorg/jsoup/nodes/f;

    .prologue
    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/select/c;-><init>(Ljava/util/List;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 71
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public a(ILorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 546
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public a()Lorg/jsoup/select/c;
    .locals 5

    .prologue
    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "clone":Lorg/jsoup/select/c;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    iput-object v2, v0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    .line 54
    iget-object v4, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 55
    .local v1, "e":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->k()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "clone":Lorg/jsoup/select/c;
    .end local v1    # "e":Lorg/jsoup/nodes/f;
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 58
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "clone":Lorg/jsoup/select/c;
    .restart local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public a(I)Lorg/jsoup/select/c;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Lorg/jsoup/select/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jsoup/nodes/f;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jsoup/select/c;-><init>([Lorg/jsoup/nodes/f;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jsoup/select/c;

    invoke-direct {v0}, Lorg/jsoup/select/c;-><init>()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 98
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 100
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public a(Lorg/jsoup/select/f;)Lorg/jsoup/select/c;
    .locals 4
    .param p1, "nodeVisitor"    # Lorg/jsoup/select/f;

    .prologue
    .line 490
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 491
    new-instance v2, Lorg/jsoup/select/e;

    invoke-direct {v2, p1}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    .line 492
    .local v2, "traversor":Lorg/jsoup/select/e;
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 493
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v2, v0}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    goto :goto_0

    .line 495
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public a(Lorg/jsoup/nodes/f;)Z
    .locals 1
    .param p1, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 524
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lorg/jsoup/nodes/f;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/c;->b(ILorg/jsoup/nodes/f;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lorg/jsoup/nodes/f;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jsoup/nodes/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 532
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jsoup/nodes/f;>;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jsoup/nodes/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jsoup/nodes/f;>;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/jsoup/select/c;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/jsoup/select/c;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->K()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(I)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public b(ILorg/jsoup/nodes/f;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 548
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 84
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 87
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 198
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public c(I)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 110
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->J(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 112
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/jsoup/select/c;->a()Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 516
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 122
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->z(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 124
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 207
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v2, 0x1

    .line 210
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 222
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public e(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 134
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->A(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 136
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 238
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public f(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 146
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->B(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 148
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public g()Lorg/jsoup/select/c;
    .locals 3

    .prologue
    .line 365
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 366
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->W()Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 368
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 158
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const/4 v2, 0x1

    .line 161
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/jsoup/select/c;
    .locals 3

    .prologue
    .line 383
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 384
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->w()Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 386
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 183
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->C(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 184
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lorg/jsoup/select/c;
    .locals 3

    .prologue
    .line 402
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 403
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->V()V

    goto :goto_0

    .line 405
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 264
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->e(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 266
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/jsoup/select/c;
    .locals 4

    .prologue
    .line 460
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 461
    .local v0, "combo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/jsoup/nodes/f;>;"
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 462
    .local v1, "e":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->s()Lorg/jsoup/select/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 464
    .end local v1    # "e":Lorg/jsoup/nodes/f;
    :cond_0
    new-instance v3, Lorg/jsoup/select/c;

    invoke-direct {v3, v0}, Lorg/jsoup/select/c;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public j(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 277
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->D(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 279
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public k()Lorg/jsoup/nodes/f;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 290
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->l(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 292
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public l()Lorg/jsoup/nodes/f;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    iget-object v1, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 303
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->k(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 305
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 554
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v1, "forms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/g;>;"
    iget-object v3, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 506
    .local v0, "el":Lorg/jsoup/nodes/f;
    instance-of v3, v0, Lorg/jsoup/nodes/g;

    if-eqz v3, :cond_0

    .line 507
    check-cast v0, Lorg/jsoup/nodes/g;

    .end local v0    # "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 508
    :cond_1
    return-object v1
.end method

.method public m(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 316
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->m(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 318
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 329
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->n(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 331
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 346
    .local v0, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->o(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 348
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p0
.end method

.method public p(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jsoup/select/c;

    move-result-object v0

    .line 431
    .local v0, "out":Lorg/jsoup/select/c;
    invoke-static {p0, v0}, Lorg/jsoup/select/Selector;->a(Ljava/util/Collection;Ljava/util/Collection;)Lorg/jsoup/select/c;

    move-result-object v1

    return-object v1
.end method

.method public r(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lorg/jsoup/select/c;->p(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v0

    .line 452
    .local v0, "children":Lorg/jsoup/select/c;
    invoke-virtual {v0}, Lorg/jsoup/select/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/select/c;->c(I)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 526
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lorg/jsoup/nodes/f;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/c;->a(ILorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/jsoup/select/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/jsoup/select/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
