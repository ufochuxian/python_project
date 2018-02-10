.class public Lorg/jsoup/b/m;
.super Lorg/jsoup/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/b/m$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/jsoup/b/l;-><init>()V

    .line 41
    return-void
.end method

.method private a(Lorg/jsoup/b/h$e;)V
    .locals 5
    .param p1, "endTag"    # Lorg/jsoup/b/h$e;

    .prologue
    .line 95
    invoke-virtual {p1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "elName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 98
    .local v1, "firstFound":Lorg/jsoup/nodes/f;
    iget-object v4, p0, Lorg/jsoup/b/m;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 99
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/f;

    .line 101
    .local v3, "next":Lorg/jsoup/nodes/f;
    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    move-object v1, v3

    .line 106
    .end local v3    # "next":Lorg/jsoup/nodes/f;
    :cond_1
    if-nez v1, :cond_3

    .line 119
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    iget-object v4, p0, Lorg/jsoup/b/m;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/f;

    .line 112
    .restart local v3    # "next":Lorg/jsoup/nodes/f;
    if-ne v3, v1, :cond_4

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private a(Lorg/jsoup/nodes/h;)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/jsoup/b/m;->x()Lorg/jsoup/nodes/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 48
    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;
    .locals 4
    .param p1, "startTag"    # Lorg/jsoup/b/h$f;

    .prologue
    .line 51
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v1

    .line 53
    .local v1, "tag":Lorg/jsoup/b/g;
    new-instance v0, Lorg/jsoup/nodes/f;

    iget-object v2, p0, Lorg/jsoup/b/m;->g:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 54
    .local v0, "el":Lorg/jsoup/nodes/f;
    invoke-direct {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/nodes/h;)V

    .line 55
    invoke-virtual {p1}, Lorg/jsoup/b/h$f;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lorg/jsoup/b/m;->d:Lorg/jsoup/b/j;

    invoke-virtual {v2}, Lorg/jsoup/b/j;->c()V

    .line 57
    invoke-virtual {v1}, Lorg/jsoup/b/g;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lorg/jsoup/b/g;->m()Lorg/jsoup/b/g;

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v2, p0, Lorg/jsoup/b/m;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2, v0}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Lorg/jsoup/b/h$a;)V
    .locals 3
    .param p1, "characterToken"    # Lorg/jsoup/b/h$a;

    .prologue
    .line 79
    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-virtual {p1}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/b/m;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "node":Lorg/jsoup/nodes/h;
    invoke-direct {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/nodes/h;)V

    .line 81
    return-void
.end method

.method a(Lorg/jsoup/b/h$b;)V
    .locals 7
    .param p1, "commentToken"    # Lorg/jsoup/b/h$b;

    .prologue
    const/4 v6, 0x1

    .line 66
    new-instance v0, Lorg/jsoup/nodes/c;

    invoke-virtual {p1}, Lorg/jsoup/b/h$b;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jsoup/b/m;->g:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "comment":Lorg/jsoup/nodes/c;
    move-object v3, v0

    .line 68
    .local v3, "insert":Lorg/jsoup/nodes/h;
    iget-boolean v4, p1, Lorg/jsoup/b/h$b;->c:Z

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0}, Lorg/jsoup/nodes/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "declaration":Ljava/lang/String;
    new-instance v3, Lorg/jsoup/nodes/j;

    .end local v3    # "insert":Lorg/jsoup/nodes/h;
    invoke-virtual {v0}, Lorg/jsoup/nodes/c;->O()Ljava/lang/String;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Lorg/jsoup/nodes/j;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "declaration":Ljava/lang/String;
    .restart local v3    # "insert":Lorg/jsoup/nodes/h;
    :cond_1
    invoke-direct {p0, v3}, Lorg/jsoup/b/m;->a(Lorg/jsoup/nodes/h;)V

    .line 76
    return-void
.end method

.method a(Lorg/jsoup/b/h$c;)V
    .locals 5
    .param p1, "d"    # Lorg/jsoup/b/h$c;

    .prologue
    .line 84
    new-instance v0, Lorg/jsoup/nodes/e;

    invoke-virtual {p1}, Lorg/jsoup/b/h$c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/b/h$c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/b/h$c;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/b/m;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, "doctypeNode":Lorg/jsoup/nodes/e;
    invoke-direct {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/nodes/h;)V

    .line 86
    return-void
.end method

.method protected a(Lorg/jsoup/b/h;)Z
    .locals 2
    .param p1, "token"    # Lorg/jsoup/b/h;

    .prologue
    .line 22
    sget-object v0, Lorg/jsoup/b/m$1;->a:[I

    iget-object v1, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v1}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/d;->b(Ljava/lang/String;)V

    .line 43
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 24
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 27
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/b/h$e;)V

    goto :goto_0

    .line 30
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 33
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/b/h$a;)V

    goto :goto_0

    .line 36
    :pswitch_5
    invoke-virtual {p1}, Lorg/jsoup/b/h;->c()Lorg/jsoup/b/h$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/m;->a(Lorg/jsoup/b/h$c;)V

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/b/e;

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/b/l;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V

    .line 16
    iget-object v0, p0, Lorg/jsoup/b/m;->f:Lorg/jsoup/helper/DescendableLinkedList;

    iget-object v1, p0, Lorg/jsoup/b/m;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Ljava/util/List;
    .locals 1
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jsoup/b/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/b/m;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V

    .line 123
    invoke-virtual {p0}, Lorg/jsoup/b/m;->w()V

    .line 124
    iget-object v0, p0, Lorg/jsoup/b/m;->e:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->P()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
