.class final enum Lorg/jsoup/b/k$5;
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
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 288
    sget-object v0, Lorg/jsoup/b/k$5;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 289
    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 4
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 247
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p2}, Lorg/jsoup/b/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/b/h$g;->b(Ljava/lang/String;)V

    .line 250
    iget-object v2, p1, Lorg/jsoup/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 255
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 281
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/k$5;->b(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V

    goto :goto_0

    .line 261
    :sswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/j;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    sget-object v2, Lorg/jsoup/b/k$5;->BeforeAttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/k$5;->b(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/j;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    sget-object v2, Lorg/jsoup/b/k$5;->SelfClosingStartTag:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/k$5;->b(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-virtual {p1}, Lorg/jsoup/b/j;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 275
    sget-object v2, Lorg/jsoup/b/k$5;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/k$5;->b(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
