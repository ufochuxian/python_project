.class final enum Lorg/jsoup/b/c$14;
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
    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1408
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    .line 1419
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1410
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    :cond_2
    sget-object v0, Lorg/jsoup/b/c$14;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto :goto_0

    .line 1412
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1416
    sget-object v0, Lorg/jsoup/b/c$14;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 1417
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    goto :goto_0
.end method
