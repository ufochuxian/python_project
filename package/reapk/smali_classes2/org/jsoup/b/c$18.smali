.class final enum Lorg/jsoup/b/c$18;
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
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 6
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    sget-object v1, Lorg/jsoup/b/c$18;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 79
    .local v0, "head":Lorg/jsoup/nodes/f;
    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->g(Lorg/jsoup/nodes/f;)V

    .line 80
    sget-object v2, Lorg/jsoup/b/c$18;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 81
    .end local v0    # "head":Lorg/jsoup/nodes/f;
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "head"

    aput-object v5, v4, v2

    const-string v5, "body"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "html"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "br"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    new-instance v1, Lorg/jsoup/b/h$f;

    const-string v2, "head"

    invoke-direct {v1, v2}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 83
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v1

    goto/16 :goto_0

    .line 84
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v1, v2

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_6
    new-instance v1, Lorg/jsoup/b/h$f;

    const-string v2, "head"

    invoke-direct {v1, v2}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 89
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v1

    goto/16 :goto_0
.end method
