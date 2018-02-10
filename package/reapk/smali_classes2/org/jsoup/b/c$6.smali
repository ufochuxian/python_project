.class final enum Lorg/jsoup/b/c$6;
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
    .line 1084
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/l;

    .prologue
    .line 1138
    new-instance v1, Lorg/jsoup/b/h$e;

    const-string v2, "tr"

    invoke-direct {v1, v2}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    .line 1139
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p2, p1}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    move-result v1

    .line 1142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1134
    sget-object v0, Lorg/jsoup/b/c$6;->InTable:Lorg/jsoup/b/c;

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

    .line 1086
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1087
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    .line 1088
    .local v2, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "name":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "th"

    aput-object v6, v5, v3

    const-string v6, "td"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1091
    invoke-virtual {p2}, Lorg/jsoup/b/b;->l()V

    .line 1092
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 1093
    sget-object v3, Lorg/jsoup/b/c$6;->InCell:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1094
    invoke-virtual {p2}, Lorg/jsoup/b/b;->v()V

    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :goto_0
    move v3, v4

    .line 1130
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 1095
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "startTag":Lorg/jsoup/b/h$f;
    :cond_0
    const/4 v5, 0x7

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

    const/4 v3, 0x6

    const-string v4, "tr"

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1096
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$6;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto :goto_1

    .line 1098
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$6;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto :goto_1

    .line 1100
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1101
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 1102
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .restart local v1    # "name":Ljava/lang/String;
    const-string v5, "tr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1105
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1106
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_1

    .line 1109
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/b/b;->l()V

    .line 1110
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 1111
    sget-object v3, Lorg/jsoup/b/c$6;->InTableBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1112
    :cond_4
    const-string v5, "table"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1113
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$6;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto :goto_1

    .line 1114
    :cond_5
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "tbody"

    aput-object v6, v5, v3

    const-string v6, "tfoot"

    aput-object v6, v5, v4

    const-string v6, "thead"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1115
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1116
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1119
    :cond_6
    new-instance v3, Lorg/jsoup/b/h$e;

    const-string v4, "tr"

    invoke-direct {v3, v4}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1120
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    goto/16 :goto_1

    .line 1121
    :cond_7
    const/4 v5, 0x7

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

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1122
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1125
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$6;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto/16 :goto_1

    .line 1128
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$6;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v3

    goto/16 :goto_1
.end method
