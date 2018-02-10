.class final enum Lorg/jsoup/b/c$11;
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
    .line 1336
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1338
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1339
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    :cond_0
    :goto_0
    move v2, v3

    .line 1379
    :goto_1
    return v2

    .line 1340
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1341
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 1342
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1343
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_1

    .line 1345
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1346
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v1

    .line 1347
    .local v1, "start":Lorg/jsoup/b/h$f;
    invoke-virtual {v1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "name":Ljava/lang/String;
    const-string v4, "html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1349
    sget-object v2, Lorg/jsoup/b/c$11;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v1, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v2

    goto :goto_1

    .line 1350
    :cond_4
    const-string v4, "frameset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1351
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 1352
    :cond_5
    const-string v4, "frame"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1353
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 1354
    :cond_6
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1355
    sget-object v2, Lorg/jsoup/b/c$11;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v1, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v2

    goto :goto_1

    .line 1357
    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_1

    .line 1360
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "start":Lorg/jsoup/b/h$f;
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1361
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1362
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1365
    :cond_9
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 1366
    invoke-virtual {p2}, Lorg/jsoup/b/b;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "frameset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1367
    sget-object v2, Lorg/jsoup/b/c$11;->AfterFrameset:Lorg/jsoup/b/c;

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 1370
    :cond_a
    invoke-virtual {p1}, Lorg/jsoup/b/h;->l()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1371
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "html"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1372
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v2, v3

    .line 1373
    goto/16 :goto_1

    .line 1376
    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1
.end method
