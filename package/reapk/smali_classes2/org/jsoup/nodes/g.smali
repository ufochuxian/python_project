.class public Lorg/jsoup/nodes/g;
.super Lorg/jsoup/nodes/f;
.source "SourceFile"


# instance fields
.field private final f:Lorg/jsoup/select/c;


# direct methods
.method public constructor <init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1
    .param p1, "tag"    # Lorg/jsoup/b/g;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 18
    new-instance v0, Lorg/jsoup/select/c;

    invoke-direct {v0}, Lorg/jsoup/select/c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/g;->f:Lorg/jsoup/select/c;

    .line 29
    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/g;
    .locals 1
    .param p1, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jsoup/nodes/g;->f:Lorg/jsoup/select/c;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    .line 46
    return-object p0
.end method

.method public b()Lorg/jsoup/select/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jsoup/nodes/g;->f:Lorg/jsoup/select/c;

    return-object v0
.end method

.method public c()Lorg/jsoup/Connection;
    .locals 5

    .prologue
    .line 57
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->I(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v3, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing."

    invoke-static {v0, v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "method"

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    .line 62
    .local v2, "method":Lorg/jsoup/Connection$Method;
    :goto_1
    invoke-static {v0}, Lorg/jsoup/a;->b(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jsoup/Connection;->a(Ljava/util/Collection;)Lorg/jsoup/Connection;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/jsoup/Connection;->a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 66
    .local v1, "con":Lorg/jsoup/Connection;
    return-object v1

    .line 57
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "con":Lorg/jsoup/Connection;
    .end local v2    # "method":Lorg/jsoup/Connection$Method;
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    sget-object v2, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    goto :goto_1
.end method

.method public d()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/Connection$b;>;"
    iget-object v7, p0, Lorg/jsoup/nodes/g;->f:Lorg/jsoup/select/c;

    invoke-virtual {v7}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    .line 79
    .local v1, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/b/g;->l()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const-string v7, "select"

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    const-string v7, "option[selected]"

    invoke-virtual {v1, v7}, Lorg/jsoup/nodes/f;->f(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v6

    .line 85
    .local v6, "options":Lorg/jsoup/select/c;
    invoke-virtual {v6}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/f;

    .line 86
    .local v5, "option":Lorg/jsoup/nodes/f;
    invoke-virtual {v5}, Lorg/jsoup/nodes/f;->K()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "option":Lorg/jsoup/nodes/f;
    .end local v6    # "options":Lorg/jsoup/select/c;
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->K()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1    # "el":Lorg/jsoup/nodes/f;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/jsoup/nodes/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
