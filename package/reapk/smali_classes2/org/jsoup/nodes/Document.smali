.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$QuirksMode;,
        Lorg/jsoup/nodes/Document$a;
    }
.end annotation


# instance fields
.field private f:Lorg/jsoup/nodes/Document$a;

.field private g:Lorg/jsoup/nodes/Document$QuirksMode;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "#root"

    invoke-static {v0}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/jsoup/nodes/Document$a;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$a;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$a;

    .line 19
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 30
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->h:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p0, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 43
    .local v1, "html":Lorg/jsoup/nodes/f;
    const-string v2, "head"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 44
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 46
    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 177
    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    check-cast p2, Lorg/jsoup/nodes/f;

    .line 186
    .end local p2    # "node":Lorg/jsoup/nodes/h;
    :goto_0
    return-object p2

    .line 180
    .restart local p2    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    iget-object v3, p2, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 181
    .local v0, "child":Lorg/jsoup/nodes/h;
    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 182
    .local v1, "found":Lorg/jsoup/nodes/f;
    if-eqz v1, :cond_1

    move-object p2, v1

    .line 183
    goto :goto_0

    .line 186
    .end local v0    # "child":Lorg/jsoup/nodes/h;
    .end local v1    # "found":Lorg/jsoup/nodes/f;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/jsoup/nodes/f;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "htmlEl"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document;->p(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v1

    .line 156
    .local v1, "elements":Lorg/jsoup/select/c;
    invoke-virtual {v1}, Lorg/jsoup/select/c;->k()Lorg/jsoup/nodes/f;

    move-result-object v4

    .line 157
    .local v4, "master":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/select/c;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/select/c;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 160
    invoke-virtual {v1, v2}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 161
    .local v0, "dupe":Lorg/jsoup/nodes/h;
    iget-object v7, v0, Lorg/jsoup/nodes/h;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/h;

    .line 162
    .local v5, "node":Lorg/jsoup/nodes/h;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v5    # "node":Lorg/jsoup/nodes/h;
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->V()V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "dupe":Lorg/jsoup/nodes/h;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 167
    .restart local v0    # "dupe":Lorg/jsoup/nodes/h;
    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    goto :goto_2

    .line 170
    .end local v0    # "dupe":Lorg/jsoup/nodes/h;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    :cond_2
    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/jsoup/nodes/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 171
    invoke-virtual {p2, v4}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 173
    :cond_3
    return-void
.end method

.method private b(Lorg/jsoup/nodes/f;)V
    .locals 9
    .param p1, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v4, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    iget-object v5, p1, Lorg/jsoup/nodes/f;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 138
    .local v2, "node":Lorg/jsoup/nodes/h;
    instance-of v5, v2, Lorg/jsoup/nodes/i;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 139
    check-cast v3, Lorg/jsoup/nodes/i;

    .line 140
    .local v3, "tn":Lorg/jsoup/nodes/i;
    invoke-virtual {v3}, Lorg/jsoup/nodes/i;->d()Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v2    # "node":Lorg/jsoup/nodes/h;
    .end local v3    # "tn":Lorg/jsoup/nodes/i;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 146
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 147
    .restart local v2    # "node":Lorg/jsoup/nodes/h;
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/f;->j(Lorg/jsoup/nodes/h;)V

    .line 148
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v5

    new-instance v6, Lorg/jsoup/nodes/i;

    const-string v7, " "

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 149
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 145
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 151
    .end local v2    # "node":Lorg/jsoup/nodes/h;
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "#document"

    return-object v0
.end method

.method public a(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1, "quirksMode"    # Lorg/jsoup/nodes/Document$QuirksMode;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 391
    return-object p0
.end method

.method public a(Lorg/jsoup/nodes/Document$a;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1, "outputSettings"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 376
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 377
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$a;

    .line 378
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 91
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->p(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/c;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 92
    .local v0, "titleEl":Lorg/jsoup/nodes/f;
    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/f;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/f;->d(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->d(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    goto :goto_0
.end method

.method public c()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 63
    const-string v0, "head"

    invoke-direct {p0, v0, p0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-static {p1}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

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
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->h()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 71
    const-string v0, "body"

    invoke-direct {p0, v0, p0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->d(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 202
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->p(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/c;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 81
    .local v0, "titleEl":Lorg/jsoup/nodes/f;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lorg/jsoup/nodes/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lorg/jsoup/nodes/Document;
    .locals 2

    .prologue
    .line 114
    const-string v1, "html"

    invoke-direct {p0, v1, p0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 115
    .local v0, "htmlEl":Lorg/jsoup/nodes/f;
    if-nez v0, :cond_0

    .line 116
    const-string v1, "html"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/f;

    move-result-object v1

    if-nez v1, :cond_1

    .line 118
    const-string v1, "head"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v1

    if-nez v1, :cond_2

    .line 120
    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 124
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/Document;->b(Lorg/jsoup/nodes/f;)V

    .line 125
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;->b(Lorg/jsoup/nodes/f;)V

    .line 126
    invoke-direct {p0, p0}, Lorg/jsoup/nodes/Document;->b(Lorg/jsoup/nodes/f;)V

    .line 128
    const-string v1, "head"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;)V

    .line 129
    const-string v1, "body"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Lorg/jsoup/nodes/f;)V

    .line 131
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lorg/jsoup/nodes/f;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/jsoup/nodes/Document;
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lorg/jsoup/nodes/f;->k()Lorg/jsoup/nodes/f;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 213
    .local v0, "clone":Lorg/jsoup/nodes/Document;
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$a;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$a;->g()Lorg/jsoup/nodes/Document$a;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$a;

    .line 214
    return-object v0
.end method

.method public i()Lorg/jsoup/nodes/Document$a;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$a;

    return-object v0
.end method

.method public j()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public synthetic k()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->h()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l()Lorg/jsoup/nodes/h;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->h()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
