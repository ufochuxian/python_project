.class final enum Lorg/jsoup/b/c$7;
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
    .line 1145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private a(Lorg/jsoup/b/b;)V
    .locals 2
    .param p1, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1196
    const-string v0, "td"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "td"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1200
    :goto_0
    return-void

    .line 1199
    :cond_0
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "th"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    goto :goto_0
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1192
    sget-object v0, Lorg/jsoup/b/c$7;->InBody:Lorg/jsoup/b/c;

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1147
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1148
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 1149
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "name":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "td"

    aput-object v5, v4, v2

    const-string v5, "th"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1152
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1153
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1154
    sget-object v3, Lorg/jsoup/b/c$7;->InRow:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1188
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v2

    .line 1157
    .restart local v0    # "endTag":Lorg/jsoup/b/h$e;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/b;->s()V

    .line 1158
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1159
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1160
    :cond_1
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Lorg/jsoup/b/b;->u()V

    .line 1162
    sget-object v2, Lorg/jsoup/b/c$7;->InRow:Lorg/jsoup/b/c;

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    move v2, v3

    .line 1188
    goto :goto_0

    .line 1163
    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "body"

    aput-object v5, v4, v2

    const-string v5, "caption"

    aput-object v5, v4, v3

    const-string v5, "col"

    aput-object v5, v4, v7

    const-string v5, "colgroup"

    aput-object v5, v4, v8

    const-string v5, "html"

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1164
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1166
    :cond_3
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "table"

    aput-object v5, v4, v2

    const-string v5, "tbody"

    aput-object v5, v4, v3

    const-string v3, "tfoot"

    aput-object v3, v4, v7

    const-string v3, "thead"

    aput-object v3, v4, v8

    const-string v3, "tr"

    aput-object v3, v4, v9

    invoke-static {v1, v4}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1167
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1168
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1171
    :cond_4
    invoke-direct {p0, p2}, Lorg/jsoup/b/c$7;->a(Lorg/jsoup/b/b;)V

    .line 1172
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    goto :goto_0

    .line 1174
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$7;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v2

    goto :goto_0

    .line 1176
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "caption"

    aput-object v6, v5, v2

    const-string v6, "col"

    aput-object v6, v5, v3

    const-string v3, "colgroup"

    aput-object v3, v5, v7

    const-string v3, "tbody"

    aput-object v3, v5, v8

    const-string v3, "td"

    aput-object v3, v5, v9

    const/4 v3, 0x5

    const-string v6, "tfoot"

    aput-object v6, v5, v3

    const/4 v3, 0x6

    const-string v6, "th"

    aput-object v6, v5, v3

    const/4 v3, 0x7

    const-string v6, "thead"

    aput-object v6, v5, v3

    const/16 v3, 0x8

    const-string v6, "tr"

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1179
    const-string v3, "td"

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "th"

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1180
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 1183
    :cond_7
    invoke-direct {p0, p2}, Lorg/jsoup/b/c$7;->a(Lorg/jsoup/b/b;)V

    .line 1184
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    goto/16 :goto_0

    .line 1186
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$7;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v2

    goto/16 :goto_0
.end method
