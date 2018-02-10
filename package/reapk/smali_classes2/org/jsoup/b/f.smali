.class public Lorg/jsoup/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# instance fields
.field private b:Lorg/jsoup/b/l;

.field private c:I

.field private d:Lorg/jsoup/b/e;


# direct methods
.method public constructor <init>(Lorg/jsoup/b/l;)V
    .locals 1
    .param p1, "treeBuilder"    # Lorg/jsoup/b/l;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/b/f;->c:I

    .line 25
    iput-object p1, p0, Lorg/jsoup/b/f;->b:Lorg/jsoup/b/l;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "inAttribute"    # Z

    .prologue
    .line 146
    new-instance v0, Lorg/jsoup/b/j;

    new-instance v1, Lorg/jsoup/b/a;

    invoke-direct {v1, p0}, Lorg/jsoup/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/j;-><init>(Lorg/jsoup/b/a;Lorg/jsoup/b/e;)V

    .line 147
    .local v0, "tokeniser":Lorg/jsoup/b/j;
    invoke-virtual {v0, p1}, Lorg/jsoup/b/j;->b(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/jsoup/nodes/f;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/f;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/jsoup/b/b;

    invoke-direct {v0}, Lorg/jsoup/b/b;-><init>()V

    .line 105
    .local v0, "treeBuilder":Lorg/jsoup/b/b;
    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;Lorg/jsoup/b/e;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/jsoup/b/b;

    invoke-direct {v0}, Lorg/jsoup/b/b;-><init>()V

    .line 90
    .local v0, "treeBuilder":Lorg/jsoup/b/l;
    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentXml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/jsoup/b/m;

    invoke-direct {v0}, Lorg/jsoup/b/m;-><init>()V

    .line 117
    .local v0, "treeBuilder":Lorg/jsoup/b/m;
    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/b/m;->c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static d()Lorg/jsoup/b/f;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lorg/jsoup/b/f;

    new-instance v1, Lorg/jsoup/b/b;

    invoke-direct {v1}, Lorg/jsoup/b/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/b/f;-><init>(Lorg/jsoup/b/l;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 9
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 130
    .local v2, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 131
    .local v1, "body":Lorg/jsoup/nodes/f;
    invoke-static {p0, v1, p1}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 132
    .local v6, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/jsoup/nodes/h;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/jsoup/nodes/h;

    .line 133
    .local v7, "nodes":[Lorg/jsoup/nodes/h;
    move-object v0, v7

    .local v0, "arr$":[Lorg/jsoup/nodes/h;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 134
    .local v5, "node":Lorg/jsoup/nodes/h;
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v5    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    return-object v2
.end method

.method public static e()Lorg/jsoup/b/f;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lorg/jsoup/b/f;

    new-instance v1, Lorg/jsoup/b/m;

    invoke-direct {v1}, Lorg/jsoup/b/m;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/b/f;-><init>(Lorg/jsoup/b/l;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0, p1}, Lorg/jsoup/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lorg/jsoup/b/f;
    .locals 0
    .param p1, "maxErrors"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/jsoup/b/f;->c:I

    .line 68
    return-object p0
.end method

.method public a(Lorg/jsoup/b/l;)Lorg/jsoup/b/f;
    .locals 0
    .param p1, "treeBuilder"    # Lorg/jsoup/b/l;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/jsoup/b/f;->b:Lorg/jsoup/b/l;

    .line 50
    return-object p0
.end method

.method public a()Lorg/jsoup/b/l;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/jsoup/b/f;->b:Lorg/jsoup/b/l;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/jsoup/b/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/jsoup/b/f;->c:I

    invoke-static {v1}, Lorg/jsoup/b/e;->a(I)Lorg/jsoup/b/e;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/jsoup/b/f;->d:Lorg/jsoup/b/e;

    .line 30
    iget-object v1, p0, Lorg/jsoup/b/f;->b:Lorg/jsoup/b/l;

    iget-object v2, p0, Lorg/jsoup/b/f;->d:Lorg/jsoup/b/e;

    invoke-virtual {v1, p1, p2, v2}, Lorg/jsoup/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 31
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    return-object v0

    .line 29
    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    :cond_0
    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/jsoup/b/f;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jsoup/b/f;->d:Lorg/jsoup/b/e;

    return-object v0
.end method
