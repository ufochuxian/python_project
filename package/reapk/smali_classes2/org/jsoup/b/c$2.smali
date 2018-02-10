.class final enum Lorg/jsoup/b/c$2;
.super Lorg/jsoup/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 9
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 900
    sget-object v5, Lorg/jsoup/b/c$17;->a:[I

    iget-object v6, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v6}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 911
    invoke-virtual {p2}, Lorg/jsoup/b/b;->r()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 912
    invoke-virtual {p2}, Lorg/jsoup/b/b;->r()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/b/h$a;

    .line 913
    .local v1, "character":Lorg/jsoup/b/h$a;
    invoke-static {v1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 915
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 916
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "table"

    aput-object v7, v6, v3

    const-string v7, "tbody"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string v8, "tfoot"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "thead"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "tr"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 917
    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->b(Z)V

    .line 918
    sget-object v5, Lorg/jsoup/b/c$2;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v1, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    .line 919
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->b(Z)V

    goto :goto_0

    .line 902
    .end local v1    # "character":Lorg/jsoup/b/h$a;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v0

    .line 903
    .local v0, "c":Lorg/jsoup/b/h$a;
    invoke-virtual {v0}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 904
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 931
    .end local v0    # "c":Lorg/jsoup/b/h$a;
    :goto_1
    return v3

    .line 907
    .restart local v0    # "c":Lorg/jsoup/b/h$a;
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/b;->r()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 931
    goto :goto_1

    .line 921
    .end local v0    # "c":Lorg/jsoup/b/h$a;
    .restart local v1    # "character":Lorg/jsoup/b/h$a;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v5, Lorg/jsoup/b/c$2;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v1, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    goto :goto_0

    .line 924
    :cond_2
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    goto :goto_0

    .line 926
    .end local v1    # "character":Lorg/jsoup/b/h$a;
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/b/b;->q()V

    .line 928
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/b/b;->c()Lorg/jsoup/b/c;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 929
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    goto :goto_1

    .line 900
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
