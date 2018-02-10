.class final enum Lorg/jsoup/b/c$9;
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
    .line 1290
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1292
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v0

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1294
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1295
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1296
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v0

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1297
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1298
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1300
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    goto :goto_0

    .line 1304
    :cond_2
    sget-object v0, Lorg/jsoup/b/c$9;->InSelect:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto :goto_0
.end method
