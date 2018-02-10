.class final enum Lorg/jsoup/b/c$20;
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
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 190
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 191
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "noscript"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 192
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    :goto_0
    move v0, v1

    .line 186
    :goto_1
    return v0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v0, Lorg/jsoup/b/c$20;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "noscript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 174
    sget-object v0, Lorg/jsoup/b/c$20;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "basefont"

    aput-object v4, v3, v0

    const-string v4, "bgsound"

    aput-object v4, v3, v1

    const-string v4, "link"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "meta"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "noframes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "style"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    :cond_3
    sget-object v0, Lorg/jsoup/b/c$20;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto/16 :goto_1

    .line 178
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$20;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    goto/16 :goto_1

    .line 180
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "head"

    aput-object v4, v3, v0

    const-string v4, "noscript"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 184
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$20;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    goto/16 :goto_1
.end method
