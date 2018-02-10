.class final enum Lorg/jsoup/b/c$21;
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
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 241
    new-instance v0, Lorg/jsoup/b/h$f;

    const-string v1, "body"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Z)V

    .line 243
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 8
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    :goto_0
    move v3, v4

    .line 237
    :goto_1
    return v3

    .line 199
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 204
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    .line 205
    .local v2, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "name":Ljava/lang/String;
    const-string v5, "html"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    sget-object v3, Lorg/jsoup/b/c$21;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v3

    goto :goto_1

    .line 208
    :cond_3
    const-string v5, "body"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 210
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Z)V

    .line 211
    sget-object v3, Lorg/jsoup/b/c$21;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 212
    :cond_4
    const-string v5, "frameset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 214
    sget-object v3, Lorg/jsoup/b/c$21;->InFrameset:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 215
    :cond_5
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "base"

    aput-object v6, v5, v3

    const-string v6, "basefont"

    aput-object v6, v5, v4

    const-string v6, "bgsound"

    aput-object v6, v5, v7

    const/4 v6, 0x3

    const-string v7, "link"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "meta"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "noframes"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "script"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "style"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "title"

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 216
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 217
    invoke-virtual {p2}, Lorg/jsoup/b/b;->n()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 218
    .local v0, "head":Lorg/jsoup/nodes/f;
    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->c(Lorg/jsoup/nodes/f;)V

    .line 219
    sget-object v3, Lorg/jsoup/b/c$21;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    .line 220
    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->e(Lorg/jsoup/nodes/f;)Z

    goto/16 :goto_0

    .line 221
    .end local v0    # "head":Lorg/jsoup/nodes/f;
    :cond_6
    const-string v5, "head"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 225
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$21;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    goto/16 :goto_0

    .line 227
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 228
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v6, v3

    const-string v7, "html"

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$21;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    goto/16 :goto_0

    .line 231
    :cond_9
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 235
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$21;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    goto/16 :goto_0
.end method
