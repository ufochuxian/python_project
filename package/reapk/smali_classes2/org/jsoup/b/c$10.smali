.class final enum Lorg/jsoup/b/c$10;
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
    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v0, 0x0

    .line 1310
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    sget-object v0, Lorg/jsoup/b/c$10;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    .line 1333
    :goto_0
    return v0

    .line 1312
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1313
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    .line 1333
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1314
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1315
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1317
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1318
    sget-object v0, Lorg/jsoup/b/c$10;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto :goto_0

    .line 1319
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1320
    invoke-virtual {p2}, Lorg/jsoup/b/b;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1321
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1324
    :cond_5
    sget-object v0, Lorg/jsoup/b/c$10;->AfterAfterBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_1

    .line 1326
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/b/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1330
    sget-object v0, Lorg/jsoup/b/c$10;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1331
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    goto :goto_0
.end method
