.class final enum Lorg/jsoup/b/c$5;
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
    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1070
    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1073
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return v0

    .line 1075
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/b;->k()V

    .line 1076
    new-instance v0, Lorg/jsoup/b/h$e;

    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1077
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1081
    sget-object v0, Lorg/jsoup/b/c$5;->InTable:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1026
    sget-object v5, Lorg/jsoup/b/c$17;->a:[I

    iget-object v6, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v6}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1064
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$5;->c(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    .line 1066
    :goto_0
    return v3

    .line 1028
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    .line 1029
    .local v2, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "name":Ljava/lang/String;
    const-string v5, "tr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1031
    invoke-virtual {p2}, Lorg/jsoup/b/b;->k()V

    .line 1032
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 1033
    sget-object v3, Lorg/jsoup/b/c$5;->InRow:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :goto_1
    move v3, v4

    .line 1066
    goto :goto_0

    .line 1034
    .restart local v2    # "startTag":Lorg/jsoup/b/h$f;
    :cond_0
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "th"

    aput-object v6, v5, v3

    const-string v6, "td"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1035
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1036
    new-instance v3, Lorg/jsoup/b/h$f;

    const-string v4, "tr"

    invoke-direct {v3, v4}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1037
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "caption"

    aput-object v6, v5, v3

    const-string v3, "col"

    aput-object v3, v5, v4

    const-string v3, "colgroup"

    aput-object v3, v5, v7

    const-string v3, "tbody"

    aput-object v3, v5, v8

    const-string v3, "tfoot"

    aput-object v3, v5, v9

    const/4 v3, 0x5

    const-string v4, "thead"

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1039
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$5;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto :goto_0

    .line 1041
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$5;->c(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto :goto_0

    .line 1044
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 1045
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .restart local v1    # "name":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "tbody"

    aput-object v6, v5, v3

    const-string v6, "tfoot"

    aput-object v6, v5, v4

    const-string v6, "thead"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1047
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1048
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 1051
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/b/b;->k()V

    .line 1052
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 1053
    sget-object v3, Lorg/jsoup/b/c$5;->InTable:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1055
    :cond_4
    const-string v5, "table"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1056
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$5;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto/16 :goto_0

    .line 1057
    :cond_5
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "body"

    aput-object v6, v5, v3

    const-string v6, "caption"

    aput-object v6, v5, v4

    const-string v4, "col"

    aput-object v4, v5, v7

    const-string v4, "colgroup"

    aput-object v4, v5, v8

    const-string v4, "html"

    aput-object v4, v5, v9

    const/4 v4, 0x5

    const-string v6, "td"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const-string v6, "th"

    aput-object v6, v5, v4

    const/4 v4, 0x7

    const-string v6, "tr"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1058
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 1061
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$5;->c(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto/16 :goto_0

    .line 1026
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
