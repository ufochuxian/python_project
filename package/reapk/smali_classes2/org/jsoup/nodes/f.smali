.class public Lorg/jsoup/nodes/f;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# instance fields
.field private f:Lorg/jsoup/b/g;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jsoup/b/g;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lorg/jsoup/b/g;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0
    .param p1, "tag"    # Lorg/jsoup/b/g;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 35
    invoke-direct {p0, p2, p3}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 37
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    .line 39
    return-void
.end method

.method private static a(Lorg/jsoup/nodes/f;Ljava/util/List;)Ljava/lang/Integer;
    .locals 3
    .param p0, "search"    # Lorg/jsoup/nodes/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jsoup/nodes/f;",
            ">(",
            "Lorg/jsoup/nodes/f;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 530
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 533
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 534
    .local v0, "element":Lorg/jsoup/nodes/f;, "TE;"
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 537
    .end local v0    # "element":Lorg/jsoup/nodes/f;, "TE;"
    :goto_1
    return-object v2

    .line 532
    .restart local v0    # "element":Lorg/jsoup/nodes/f;, "TE;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v0    # "element":Lorg/jsoup/nodes/f;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lorg/jsoup/nodes/f;)Lorg/jsoup/b/g;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/i;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Lorg/jsoup/nodes/i;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lorg/jsoup/nodes/f;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/i;)V

    return-void
.end method

.method private static a(Lorg/jsoup/nodes/f;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "element"    # Lorg/jsoup/nodes/f;
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .prologue
    .line 879
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/i;->b(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_0
    return-void
.end method

.method private static a(Lorg/jsoup/nodes/f;Lorg/jsoup/select/c;)V
    .locals 3
    .param p0, "el"    # Lorg/jsoup/nodes/f;
    .param p1, "parents"    # Lorg/jsoup/select/c;

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 154
    .local v0, "parent":Lorg/jsoup/nodes/f;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    .line 156
    invoke-static {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/select/c;)V

    .line 158
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .prologue
    .line 857
    iget-object v3, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 858
    .local v0, "child":Lorg/jsoup/nodes/h;
    instance-of v3, v0, Lorg/jsoup/nodes/i;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 859
    check-cast v2, Lorg/jsoup/nodes/i;

    .line 860
    .local v2, "textNode":Lorg/jsoup/nodes/i;
    invoke-static {p1, v2}, Lorg/jsoup/nodes/f;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/i;)V

    goto :goto_0

    .line 861
    .end local v2    # "textNode":Lorg/jsoup/nodes/i;
    :cond_1
    instance-of v3, v0, Lorg/jsoup/nodes/f;

    if-eqz v3, :cond_0

    .line 862
    check-cast v0, Lorg/jsoup/nodes/f;

    .end local v0    # "child":Lorg/jsoup/nodes/h;
    invoke-static {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 865
    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/i;)V
    .locals 2
    .param p0, "accum"    # Ljava/lang/StringBuilder;
    .param p1, "textNode"    # Lorg/jsoup/nodes/i;

    .prologue
    .line 868
    invoke-virtual {p1}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jsoup/nodes/i;->M()Lorg/jsoup/nodes/h;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/f;->e(Lorg/jsoup/nodes/h;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    invoke-static {v0}, Lorg/jsoup/nodes/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {p0}, Lorg/jsoup/nodes/i;->b(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    invoke-static {v0}, Lorg/jsoup/nodes/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    return-void
.end method

.method private c(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1107
    iget-object v2, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 1108
    .local v1, "node":Lorg/jsoup/nodes/h;
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/h;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1109
    .end local v1    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    return-void
.end method

.method static e(Lorg/jsoup/nodes/h;)Z
    .locals 3
    .param p0, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    const/4 v1, 0x0

    .line 885
    if-eqz p0, :cond_1

    instance-of v2, p0, Lorg/jsoup/nodes/f;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 886
    check-cast v0, Lorg/jsoup/nodes/f;

    .line 887
    .local v0, "element":Lorg/jsoup/nodes/f;
    iget-object v2, v0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v2}, Lorg/jsoup/b/g;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v2

    iget-object v2, v2, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v2}, Lorg/jsoup/b/g;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 890
    .end local v0    # "element":Lorg/jsoup/nodes/f;
    :cond_1
    return v1
.end method


# virtual methods
.method public A()Lorg/jsoup/nodes/f;
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    .line 506
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public A(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1018
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 1020
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->J()Ljava/util/Set;

    move-result-object v0

    .line 1021
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Ljava/util/Set;)Lorg/jsoup/nodes/f;

    .line 1024
    return-object p0
.end method

.method public B()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public B(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1033
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 1035
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->J()Ljava/util/Set;

    move-result-object v0

    .line 1036
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1040
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Ljava/util/Set;)Lorg/jsoup/nodes/f;

    .line 1042
    return-object p0

    .line 1039
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public C()Lorg/jsoup/nodes/f;
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    .line 525
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public C(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1062
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->d(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 1066
    :goto_0
    return-object p0

    .line 1065
    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public D(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 1118
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->w()Lorg/jsoup/nodes/f;

    .line 1119
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->k(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 1120
    return-object p0
.end method

.method public D()Lorg/jsoup/select/c;
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lorg/jsoup/select/d$a;

    invoke-direct {v0}, Lorg/jsoup/select/d$a;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 3

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v0, "accum":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/jsoup/select/e;

    new-instance v2, Lorg/jsoup/nodes/f$1;

    invoke-direct {v2, p0, v0}, Lorg/jsoup/nodes/f$1;-><init>(Lorg/jsoup/nodes/f;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    invoke-virtual {v1, p0}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public synthetic E(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->o(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->b(Ljava/lang/StringBuilder;)V

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public synthetic F(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->n(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->m(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public G()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 913
    iget-object v5, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 914
    .local v0, "child":Lorg/jsoup/nodes/h;
    instance-of v5, v0, Lorg/jsoup/nodes/i;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 915
    check-cast v3, Lorg/jsoup/nodes/i;

    .line 916
    .local v3, "textNode":Lorg/jsoup/nodes/i;
    invoke-virtual {v3}, Lorg/jsoup/nodes/i;->d()Z

    move-result v5

    if-nez v5, :cond_0

    .line 924
    .end local v0    # "child":Lorg/jsoup/nodes/h;
    .end local v3    # "textNode":Lorg/jsoup/nodes/i;
    :goto_0
    return v4

    .line 918
    .restart local v0    # "child":Lorg/jsoup/nodes/h;
    :cond_1
    instance-of v5, v0, Lorg/jsoup/nodes/f;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 919
    check-cast v1, Lorg/jsoup/nodes/f;

    .line 920
    .local v1, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->G()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 924
    .end local v0    # "child":Lorg/jsoup/nodes/h;
    .end local v1    # "el":Lorg/jsoup/nodes/f;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public H()Ljava/lang/String;
    .locals 7

    .prologue
    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 937
    .local v0, "childNode":Lorg/jsoup/nodes/h;
    instance-of v6, v0, Lorg/jsoup/nodes/d;

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 938
    check-cast v1, Lorg/jsoup/nodes/d;

    .line 939
    .local v1, "data":Lorg/jsoup/nodes/d;
    invoke-virtual {v1}, Lorg/jsoup/nodes/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 940
    .end local v1    # "data":Lorg/jsoup/nodes/d;
    :cond_1
    instance-of v6, v0, Lorg/jsoup/nodes/f;

    if-eqz v6, :cond_0

    move-object v2, v0

    .line 941
    check-cast v2, Lorg/jsoup/nodes/f;

    .line 942
    .local v2, "element":Lorg/jsoup/nodes/f;
    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->H()Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "elementData":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 946
    .end local v0    # "childNode":Lorg/jsoup/nodes/h;
    .end local v2    # "element":Lorg/jsoup/nodes/f;
    .end local v3    # "elementData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    iget-object v1, p0, Lorg/jsoup/nodes/f;->g:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 966
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->I()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jsoup/nodes/f;->g:Ljava/util/Set;

    .line 969
    .end local v0    # "names":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jsoup/nodes/f;->g:Ljava/util/Set;

    return-object v1
.end method

.method public K()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1050
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->E()Ljava/lang/String;

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->c(Ljava/lang/StringBuilder;)V

    .line 1103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public synthetic M()Lorg/jsoup/nodes/h;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/Collection;)Lorg/jsoup/nodes/f;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jsoup/nodes/h;",
            ">;)",
            "Lorg/jsoup/nodes/f;"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "children":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jsoup/nodes/h;>;"
    const-string v3, "Children collection to be inserted must not be null."

    invoke-static {p2, v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->R()I

    move-result v0

    .line 294
    .local v0, "currentSize":I
    if-gez p1, :cond_0

    add-int/lit8 v3, v0, 0x1

    add-int/2addr p1, v3

    .line 295
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Insert position out of bounds."

    invoke-static {v3, v4}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v2, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/h;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jsoup/nodes/h;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jsoup/nodes/h;

    .line 299
    .local v1, "nodeArray":[Lorg/jsoup/nodes/h;
    invoke-virtual {p0, p1, v1}, Lorg/jsoup/nodes/f;->a(I[Lorg/jsoup/nodes/h;)V

    .line 300
    return-object p0

    .line 295
    .end local v1    # "nodeArray":[Lorg/jsoup/nodes/h;
    .end local v2    # "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/h;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 0
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/h;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 117
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lorg/jsoup/nodes/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/nodes/f;"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 979
    iget-object v0, p0, Lorg/jsoup/nodes/f;->c:Lorg/jsoup/nodes/b;

    const-string v1, "class"

    const-string v2, " "

    invoke-static {p1, v2}, Lorg/jsoup/helper/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-object p0
.end method

.method public a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "child"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 262
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a([Lorg/jsoup/nodes/h;)V

    .line 265
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 678
    new-instance v0, Lorg/jsoup/select/d$h;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 754
    new-instance v0, Lorg/jsoup/select/d$af;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$af;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 1070
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/b/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/f;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 1072
    :cond_2
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    iget-object v0, p0, Lorg/jsoup/nodes/f;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1, p3}, Lorg/jsoup/nodes/b;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V

    .line 1077
    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :goto_0
    return-void

    .line 1080
    :cond_3
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "child"    # Lorg/jsoup/nodes/h;

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/h;

    aput-object p1, v0, v1

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/f;->a(I[Lorg/jsoup/nodes/h;)V

    .line 278
    return-object p0
.end method

.method public b(I)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 704
    new-instance v0, Lorg/jsoup/select/d$s;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$s;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Lorg/jsoup/select/d$e;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 780
    new-instance v0, Lorg/jsoup/select/d$ag;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$ag;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    const/4 v1, 0x1

    .line 1084
    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1085
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/i;

    if-nez v0, :cond_2

    .line 1088
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/f;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 1089
    :cond_2
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_3
    return-void
.end method

.method public c(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 401
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->g(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public c(I)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 713
    new-instance v0, Lorg/jsoup/select/d$r;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$r;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 635
    new-instance v0, Lorg/jsoup/select/d$i;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 901
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->w()Lorg/jsoup/nodes/f;

    .line 902
    new-instance v0, Lorg/jsoup/nodes/i;

    iget-object v1, p0, Lorg/jsoup/nodes/f;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .local v0, "textNode":Lorg/jsoup/nodes/i;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 905
    return-object p0
.end method

.method public d(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->f(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public d(I)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 722
    new-instance v0, Lorg/jsoup/select/d$p;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$p;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valuePrefix"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v0, Lorg/jsoup/select/d$j;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "Tag name must not be empty."

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    .line 77
    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueSuffix"    # Ljava/lang/String;

    .prologue
    .line 657
    new-instance v0, Lorg/jsoup/select/d$g;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1129
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic f(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->d(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "cssQuery"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "match"    # Ljava/lang/String;

    .prologue
    .line 668
    new-instance v0, Lorg/jsoup/select/d$f;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-static {p1}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 312
    .local v0, "child":Lorg/jsoup/nodes/f;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 313
    return-object v0
.end method

.method public synthetic g(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->c(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 691
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 695
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, p1, v1}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;

    move-result-object v2

    return-object v2

    .line 692
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public h(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-static {p1}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 325
    .local v0, "child":Lorg/jsoup/nodes/f;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 326
    return-object v0
.end method

.method public synthetic h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1135
    invoke-super {p0}, Lorg/jsoup/nodes/h;->hashCode()I

    move-result v0

    .line 1136
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v1}, Lorg/jsoup/b/g;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 1137
    return v0

    .line 1136
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 336
    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, "node":Lorg/jsoup/nodes/i;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 338
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "node":Lorg/jsoup/nodes/i;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 350
    return-object p0
.end method

.method public k()Lorg/jsoup/nodes/f;
    .locals 2

    .prologue
    .line 1142
    invoke-super {p0}, Lorg/jsoup/nodes/h;->l()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 1143
    .local v0, "clone":Lorg/jsoup/nodes/f;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jsoup/nodes/f;->g:Ljava/util/Set;

    .line 1144
    return-object v0
.end method

.method public k(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/h;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jsoup/nodes/h;

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->a([Lorg/jsoup/nodes/h;)V

    .line 364
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/h;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jsoup/nodes/h;

    invoke-virtual {p0, v2, v1}, Lorg/jsoup/nodes/f;->a(I[Lorg/jsoup/nodes/h;)V

    .line 378
    return-object p0
.end method

.method public synthetic l()Lorg/jsoup/nodes/h;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->G(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public n()Lorg/jsoup/b/g;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->F(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->E(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsoup/nodes/f;->f:Lorg/jsoup/b/g;

    invoke-virtual {v0}, Lorg/jsoup/b/g;->b()Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 551
    new-instance v0, Lorg/jsoup/select/d$ah;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$ah;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jsoup/nodes/f;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 566
    new-instance v1, Lorg/jsoup/select/d$o;

    invoke-direct {v1, p1}, Lorg/jsoup/select/d$o;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    .line 567
    .local v0, "elements":Lorg/jsoup/select/c;
    invoke-virtual {v0}, Lorg/jsoup/select/c;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 570
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final r()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/h;

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 587
    new-instance v0, Lorg/jsoup/select/d$k;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$k;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public s()Lorg/jsoup/select/c;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lorg/jsoup/select/c;

    invoke-direct {v0}, Lorg/jsoup/select/c;-><init>()V

    .line 148
    .local v0, "parents":Lorg/jsoup/select/c;
    invoke-static {p0, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/select/c;)V

    .line 149
    return-object v0
.end method

.method public s(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 600
    new-instance v0, Lorg/jsoup/select/d$b;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public t()Lorg/jsoup/select/c;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 186
    .local v2, "node":Lorg/jsoup/nodes/h;
    instance-of v3, v2, Lorg/jsoup/nodes/f;

    if-eqz v3, :cond_0

    .line 187
    check-cast v2, Lorg/jsoup/nodes/f;

    .end local v2    # "node":Lorg/jsoup/nodes/h;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    new-instance v3, Lorg/jsoup/select/c;

    invoke-direct {v3, v0}, Lorg/jsoup/select/c;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public t(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 613
    new-instance v0, Lorg/jsoup/select/d$d;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, "textNodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/i;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 211
    .local v1, "node":Lorg/jsoup/nodes/h;
    instance-of v3, v1, Lorg/jsoup/nodes/i;

    if-eqz v3, :cond_0

    .line 212
    check-cast v1, Lorg/jsoup/nodes/i;

    .end local v1    # "node":Lorg/jsoup/nodes/h;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public u(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 733
    new-instance v0, Lorg/jsoup/select/d$m;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$m;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "dataNodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/d;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 228
    .local v2, "node":Lorg/jsoup/nodes/h;
    instance-of v3, v2, Lorg/jsoup/nodes/d;

    if-eqz v3, :cond_0

    .line 229
    check-cast v2, Lorg/jsoup/nodes/d;

    .end local v2    # "node":Lorg/jsoup/nodes/h;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public v(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 744
    new-instance v0, Lorg/jsoup/select/d$l;

    invoke-direct {v0, p1}, Lorg/jsoup/select/d$l;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;

    move-result-object v0

    return-object v0
.end method

.method public w()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 5
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 766
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->a(Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;

    move-result-object v2

    return-object v2

    .line 767
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public x()Lorg/jsoup/select/c;
    .locals 5

    .prologue
    .line 453
    iget-object v4, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/h;

    if-nez v4, :cond_1

    .line 454
    new-instance v3, Lorg/jsoup/select/c;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/jsoup/select/c;-><init>(I)V

    .line 461
    :cond_0
    return-object v3

    .line 456
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v1

    .line 457
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    new-instance v3, Lorg/jsoup/select/c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lorg/jsoup/select/c;-><init>(I)V

    .line 458
    .local v3, "siblings":Lorg/jsoup/select/c;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 459
    .local v0, "el":Lorg/jsoup/nodes/f;
    if-eq v0, p0, :cond_2

    .line 460
    invoke-virtual {v3, v0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    goto :goto_0
.end method

.method public x(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 5
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 792
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->b(Ljava/util/regex/Pattern;)Lorg/jsoup/select/c;

    move-result-object v2

    return-object v2

    .line 793
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public y()Lorg/jsoup/nodes/f;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v3, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/h;

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-object v2

    .line 474
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v1

    .line 475
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-static {p0, v1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 476
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public y(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 989
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->J()Ljava/util/Set;

    move-result-object v0

    .line 990
    .local v0, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 991
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    const/4 v3, 0x1

    .line 994
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public z()Lorg/jsoup/nodes/f;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v3, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/h;

    if-nez v3, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-object v2

    .line 490
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v1

    .line 491
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-static {p0, v1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 492
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public z(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 1005
    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->J()Ljava/util/Set;

    move-result-object v0

    .line 1006
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->a(Ljava/util/Set;)Lorg/jsoup/nodes/f;

    .line 1009
    return-object p0
.end method
