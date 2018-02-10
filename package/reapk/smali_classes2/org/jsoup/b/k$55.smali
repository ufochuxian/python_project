.class final enum Lorg/jsoup/b/k$55;
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
    .line 1379
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    const/4 v2, 0x1

    .line 1381
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1382
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1411
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1412
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iput-boolean v2, v1, Lorg/jsoup/b/h$c;->e:Z

    .line 1413
    sget-object v1, Lorg/jsoup/b/k$55;->BogusDoctype:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1415
    :goto_0
    return-void

    .line 1388
    :sswitch_0
    sget-object v1, Lorg/jsoup/b/k$55;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1391
    :sswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1392
    sget-object v1, Lorg/jsoup/b/k$55;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1395
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1397
    sget-object v1, Lorg/jsoup/b/k$55;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1400
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1402
    sget-object v1, Lorg/jsoup/b/k$55;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1405
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1406
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iput-boolean v2, v1, Lorg/jsoup/b/h$c;->e:Z

    .line 1407
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1408
    sget-object v1, Lorg/jsoup/b/k$55;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1382
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3e -> :sswitch_1
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
