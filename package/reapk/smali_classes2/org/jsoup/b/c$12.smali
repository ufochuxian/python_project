.class final enum Lorg/jsoup/b/c$12;
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
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 61
    const-string v0, "html"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 62
    sget-object v0, Lorg/jsoup/b/c$12;->BeforeHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 63
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 57
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    :goto_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 48
    sget-object v0, Lorg/jsoup/b/c$12;->BeforeHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "head"

    aput-object v4, v3, v0

    const-string v4, "body"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "html"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "br"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$12;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 55
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$12;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v0

    goto :goto_0
.end method
