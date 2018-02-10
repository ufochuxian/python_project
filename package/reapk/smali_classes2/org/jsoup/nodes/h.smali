.class public abstract Lorg/jsoup/nodes/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/h$a;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/nodes/h;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field c:Lorg/jsoup/nodes/b;

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 2
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 34
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    .line 39
    return-void
.end method

.method private a(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;
    .locals 2
    .param p1, "el"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 393
    invoke-virtual {p1}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    .line 394
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/f;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 395
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object p1

    .line 397
    .end local p1    # "el":Lorg/jsoup/nodes/f;
    :cond_0
    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 331
    iget-object v2, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v2

    instance-of v2, v2, Lorg/jsoup/nodes/f;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    move-object v0, v2

    .line 334
    .local v0, "context":Lorg/jsoup/nodes/f;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jsoup/nodes/h;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jsoup/nodes/h;

    invoke-virtual {v3, p1, v2}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/h;)V

    .line 336
    return-void

    .line 333
    .end local v0    # "context":Lorg/jsoup/nodes/f;
    .end local v1    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/jsoup/nodes/h;)V
    .locals 1
    .param p1, "child"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 457
    iget-object v0, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->j(Lorg/jsoup/nodes/h;)V

    .line 459
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/h;->i(Lorg/jsoup/nodes/h;)V

    .line 460
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/h;->f(I)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private c()Lorg/jsoup/nodes/Document$a;
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->U()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->U()Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->i()Lorg/jsoup/nodes/Document$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->i()Lorg/jsoup/nodes/Document$a;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public E(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 10
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 344
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v7

    instance-of v7, v7, Lorg/jsoup/nodes/f;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->M()Lorg/jsoup/nodes/h;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/f;

    move-object v0, v7

    .line 347
    .local v0, "context":Lorg/jsoup/nodes/f;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->O()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 348
    .local v5, "wrapChildren":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/h;

    .line 349
    .local v6, "wrapNode":Lorg/jsoup/nodes/h;
    if-eqz v6, :cond_0

    instance-of v7, v6, Lorg/jsoup/nodes/f;

    if-nez v7, :cond_3

    :cond_0
    move-object p0, v8

    .line 365
    .end local p0    # "this":Lorg/jsoup/nodes/h;
    :cond_1
    return-object p0

    .end local v0    # "context":Lorg/jsoup/nodes/f;
    .end local v5    # "wrapChildren":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    .end local v6    # "wrapNode":Lorg/jsoup/nodes/h;
    .restart local p0    # "this":Lorg/jsoup/nodes/h;
    :cond_2
    move-object v0, v8

    .line 346
    goto :goto_0

    .restart local v0    # "context":Lorg/jsoup/nodes/f;
    .restart local v5    # "wrapChildren":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    .restart local v6    # "wrapNode":Lorg/jsoup/nodes/h;
    :cond_3
    move-object v4, v6

    .line 352
    check-cast v4, Lorg/jsoup/nodes/f;

    .line 353
    .local v4, "wrap":Lorg/jsoup/nodes/f;
    invoke-direct {p0, v4}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 354
    .local v1, "deepest":Lorg/jsoup/nodes/f;
    iget-object v7, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v7, p0, v4}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    .line 355
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/jsoup/nodes/h;

    aput-object p0, v7, v9

    invoke-virtual {v1, v7}, Lorg/jsoup/nodes/f;->a([Lorg/jsoup/nodes/h;)V

    .line 358
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 360
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 361
    .local v3, "remainder":Lorg/jsoup/nodes/h;
    iget-object v7, v3, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v7, v3}, Lorg/jsoup/nodes/h;->j(Lorg/jsoup/nodes/h;)V

    .line 362
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public F(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/h;->a(ILjava/lang/String;)V

    .line 312
    return-object p0
.end method

.method public G(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/h;->a(ILjava/lang/String;)V

    .line 287
    return-object p0
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "abs:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public I(Ljava/lang/String;)Z
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 108
    const-string v1, "abs:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "abs:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 113
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public J(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;)V

    .line 124
    return-object p0
.end method

.method public K(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 142
    new-instance v0, Lorg/jsoup/nodes/h$1;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/h$1;-><init>(Lorg/jsoup/nodes/h;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/select/f;)Lorg/jsoup/nodes/h;

    .line 150
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "relUrl":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/h;->I(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    const-string v4, ""

    .line 194
    :goto_0
    return-object v4

    .line 182
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v1, "base":Ljava/net/URL;
    :try_start_1
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 192
    .local v0, "abs":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 183
    .end local v0    # "abs":Ljava/net/URL;
    .end local v1    # "base":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v0    # "abs":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 193
    .end local v0    # "abs":Ljava/net/URL;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/net/MalformedURLException;
    const-string v4, ""

    goto :goto_0
.end method

.method public M()Lorg/jsoup/nodes/h;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public N()Lorg/jsoup/nodes/b;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    iget-object v3, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 225
    .local v2, "node":Lorg/jsoup/nodes/h;
    invoke-virtual {v2}, Lorg/jsoup/nodes/h;->l()Lorg/jsoup/nodes/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    return-object v0
.end method

.method public final R()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected S()[Lorg/jsoup/nodes/h;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->R()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/h;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public final T()Lorg/jsoup/nodes/h;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public U()Lorg/jsoup/nodes/Document;
    .locals 1

    .prologue
    .line 263
    instance-of v0, p0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Lorg/jsoup/nodes/Document;

    .line 268
    .end local p0    # "this":Lorg/jsoup/nodes/h;
    :goto_0
    return-object p0

    .line 265
    .restart local p0    # "this":Lorg/jsoup/nodes/h;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-nez v0, :cond_1

    .line 266
    const/4 p0, 0x0

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->U()Lorg/jsoup/nodes/Document;

    move-result-object p0

    goto :goto_0
.end method

.method public V()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/h;->j(Lorg/jsoup/nodes/h;)V

    .line 277
    return-void
.end method

.method public W()Lorg/jsoup/nodes/h;
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 384
    iget v1, p0, Lorg/jsoup/nodes/h;->e:I

    .line 385
    .local v1, "index":I
    iget-object v2, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    move-object v0, v2

    .line 386
    .local v0, "firstChild":Lorg/jsoup/nodes/h;
    :goto_0
    iget-object v2, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->S()[Lorg/jsoup/nodes/h;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/h;)V

    .line 387
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->V()V

    .line 389
    return-object v0

    .line 385
    .end local v0    # "firstChild":Lorg/jsoup/nodes/h;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v4, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-nez v4, :cond_1

    .line 475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 482
    :cond_0
    return-object v3

    .line 477
    :cond_1
    iget-object v4, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    iget-object v2, v4, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 478
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v3, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 480
    .local v1, "node":Lorg/jsoup/nodes/h;
    if-eq v1, p0, :cond_2

    .line 481
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public Y()Lorg/jsoup/nodes/h;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v3, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-nez v3, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v2

    .line 493
    :cond_1
    iget-object v3, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    iget-object v1, v3, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 494
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 495
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 496
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    goto :goto_0
.end method

.method public Z()Lorg/jsoup/nodes/h;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v3, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-nez v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v2

    .line 510
    :cond_1
    iget-object v3, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    iget-object v1, v3, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 511
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 512
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lorg/jsoup/select/f;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "nodeVisitor"    # Lorg/jsoup/select/f;

    .prologue
    .line 539
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 540
    new-instance v0, Lorg/jsoup/select/e;

    invoke-direct {v0, p1}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    .line 541
    .local v0, "traversor":Lorg/jsoup/select/e;
    invoke-virtual {v0, p0}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 542
    return-object p0
.end method

.method protected varargs a(I[Lorg/jsoup/nodes/h;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "children"    # [Lorg/jsoup/nodes/h;

    .prologue
    .line 447
    invoke-static {p2}, Lorg/jsoup/helper/d;->a([Ljava/lang/Object;)V

    .line 448
    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 449
    aget-object v1, p2, v0

    .line 450
    .local v1, "in":Lorg/jsoup/nodes/h;
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;)V

    .line 451
    iget-object v2, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 448
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 453
    .end local v1    # "in":Lorg/jsoup/nodes/h;
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/nodes/h;->b()V

    .line 454
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .prologue
    .line 556
    new-instance v0, Lorg/jsoup/select/e;

    new-instance v1, Lorg/jsoup/nodes/h$a;

    invoke-direct {p0}, Lorg/jsoup/nodes/h;->c()Lorg/jsoup/nodes/Document$a;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jsoup/nodes/h$a;-><init>(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V

    invoke-direct {v0, v1}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    invoke-virtual {v0, p0}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 557
    return-void
.end method

.method abstract a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
.end method

.method protected a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V
    .locals 3
    .param p1, "out"    # Lorg/jsoup/nodes/h;
    .param p2, "in"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 417
    iget-object v1, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-ne v1, p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/d;->a(Z)V

    .line 418
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 419
    iget-object v1, p2, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p2, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/h;->j(Lorg/jsoup/nodes/h;)V

    .line 422
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->aa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 423
    .local v0, "index":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    iput-object p0, p2, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    .line 425
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/h;->f(I)V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    .line 427
    return-void

    .line 417
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected varargs a([Lorg/jsoup/nodes/h;)V
    .locals 5
    .param p1, "children"    # [Lorg/jsoup/nodes/h;

    .prologue
    .line 439
    move-object v0, p1

    .local v0, "arr$":[Lorg/jsoup/nodes/h;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 440
    .local v1, "child":Lorg/jsoup/nodes/h;
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;)V

    .line 441
    iget-object v4, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v4, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/h;->f(I)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "child":Lorg/jsoup/nodes/h;
    :cond_0
    return-void
.end method

.method public aa()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lorg/jsoup/nodes/h;->e:I

    return v0
.end method

.method abstract b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
.end method

.method protected c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 577
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->f()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-static {v1}, Lorg/jsoup/helper/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
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
    .line 20
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->l()Lorg/jsoup/nodes/h;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 582
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 322
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/h;)V

    .line 326
    return-object p0
.end method

.method protected f(I)V
    .locals 0
    .param p1, "siblingIndex"    # I

    .prologue
    .line 530
    iput p1, p0, Lorg/jsoup/nodes/h;->e:I

    .line 531
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 551
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->a(Ljava/lang/StringBuilder;)V

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public g(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 297
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->aa()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/h;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/h;)V

    .line 301
    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object p0
.end method

.method public h(Lorg/jsoup/nodes/h;)V
    .locals 1
    .param p1, "in"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 405
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    .line 408
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v2, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v2}, Lorg/jsoup/nodes/h;->hashCode()I

    move-result v0

    .line 591
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 592
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 589
    goto :goto_0
.end method

.method protected i(Lorg/jsoup/nodes/h;)V
    .locals 1
    .param p1, "parentNode"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 411
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/h;->j(Lorg/jsoup/nodes/h;)V

    .line 413
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    .line 414
    return-void
.end method

.method protected j(Lorg/jsoup/nodes/h;)V
    .locals 2
    .param p1, "out"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 430
    iget-object v1, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/d;->a(Z)V

    .line 431
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->aa()I

    move-result v0

    .line 432
    .local v0, "index":I
    iget-object v1, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 433
    invoke-direct {p0}, Lorg/jsoup/nodes/h;->b()V

    .line 434
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    .line 435
    return-void

    .line 430
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected k(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 6
    .param p1, "parent"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 632
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .local v1, "clone":Lorg/jsoup/nodes/h;
    iput-object p1, v1, Lorg/jsoup/nodes/h;->a:Lorg/jsoup/nodes/h;

    .line 638
    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput v4, v1, Lorg/jsoup/nodes/h;->e:I

    .line 639
    iget-object v4, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->e()Lorg/jsoup/nodes/b;

    move-result-object v4

    :goto_1
    iput-object v4, v1, Lorg/jsoup/nodes/h;->c:Lorg/jsoup/nodes/b;

    .line 640
    iget-object v4, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    iput-object v4, v1, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v1, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    .line 643
    iget-object v4, p0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 644
    .local v0, "child":Lorg/jsoup/nodes/h;
    iget-object v4, v1, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 633
    .end local v0    # "child":Lorg/jsoup/nodes/h;
    .end local v1    # "clone":Lorg/jsoup/nodes/h;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 638
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clone":Lorg/jsoup/nodes/h;
    :cond_0
    iget v4, p0, Lorg/jsoup/nodes/h;->e:I

    goto :goto_0

    .line 639
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 646
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v1
.end method

.method public l()Lorg/jsoup/nodes/h;
    .locals 6

    .prologue
    .line 605
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/jsoup/nodes/h;->k(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v4

    .line 608
    .local v4, "thisClone":Lorg/jsoup/nodes/h;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 609
    .local v3, "nodesToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/h;>;"
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 612
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 614
    .local v1, "currParent":Lorg/jsoup/nodes/h;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, v1, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 615
    iget-object v5, v1, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/h;

    invoke-virtual {v5, v1}, Lorg/jsoup/nodes/h;->k(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 616
    .local v0, "childClone":Lorg/jsoup/nodes/h;
    iget-object v5, v1, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "childClone":Lorg/jsoup/nodes/h;
    .end local v1    # "currParent":Lorg/jsoup/nodes/h;
    .end local v2    # "i":I
    :cond_1
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
