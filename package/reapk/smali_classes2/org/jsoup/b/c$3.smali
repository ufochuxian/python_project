.class final enum Lorg/jsoup/b/c$3;
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
    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 12
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 936
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "caption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 937
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 938
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 940
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 966
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v3

    .line 943
    .restart local v0    # "endTag":Lorg/jsoup/b/h$e;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/b;->s()V

    .line 944
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "caption"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 945
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 946
    :cond_1
    const-string v3, "caption"

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Lorg/jsoup/b/b;->u()V

    .line 948
    sget-object v3, Lorg/jsoup/b/c$3;->InTable:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 966
    goto :goto_0

    .line 950
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "caption"

    aput-object v7, v6, v3

    const-string v7, "col"

    aput-object v7, v6, v4

    const-string v7, "colgroup"

    aput-object v7, v6, v9

    const-string v7, "tbody"

    aput-object v7, v6, v10

    const-string v7, "td"

    aput-object v7, v6, v11

    const/4 v7, 0x5

    const-string v8, "tfoot"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "th"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "thead"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "tr"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "table"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 955
    :cond_5
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 956
    new-instance v3, Lorg/jsoup/b/h$e;

    const-string v5, "caption"

    invoke-direct {v3, v5}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    .line 957
    .local v2, "processed":Z
    if-eqz v2, :cond_2

    .line 958
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    goto/16 :goto_0

    .line 959
    .end local v2    # "processed":Z
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v6, v3

    const-string v7, "col"

    aput-object v7, v6, v4

    const-string v4, "colgroup"

    aput-object v4, v6, v9

    const-string v4, "html"

    aput-object v4, v6, v10

    const-string v4, "tbody"

    aput-object v4, v6, v11

    const/4 v4, 0x5

    const-string v7, "td"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "tfoot"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string v7, "th"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "thead"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    const-string v7, "tr"

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 961
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 964
    :cond_7
    sget-object v3, Lorg/jsoup/b/c$3;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v3

    goto/16 :goto_0
.end method
