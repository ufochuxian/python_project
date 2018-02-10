.class final enum Lorg/jsoup/b/k$50;
.super Lorg/jsoup/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    const/4 v1, 0x1

    .line 1222
    invoke-virtual {p2}, Lorg/jsoup/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1224
    iget-object v0, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iput-boolean v1, v0, Lorg/jsoup/b/h$c;->e:Z

    .line 1225
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1226
    sget-object v0, Lorg/jsoup/b/k$50;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1244
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    invoke-virtual {p2}, Lorg/jsoup/b/a;->f()V

    goto :goto_0

    .line 1231
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1232
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1233
    sget-object v0, Lorg/jsoup/b/k$50;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1234
    :cond_2
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1235
    sget-object v0, Lorg/jsoup/b/k$50;->AfterDoctypePublicKeyword:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1236
    :cond_3
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1237
    sget-object v0, Lorg/jsoup/b/k$50;->AfterDoctypeSystemKeyword:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1239
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1240
    iget-object v0, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iput-boolean v1, v0, Lorg/jsoup/b/h$c;->e:Z

    .line 1241
    sget-object v0, Lorg/jsoup/b/k$50;->BogusDoctype:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1229
    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
