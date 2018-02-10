.class final enum Lorg/jsoup/b/k$62;
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
    .line 1587
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
    .line 1589
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1590
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1608
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1609
    sget-object v1, Lorg/jsoup/b/k$62;->BogusDoctype:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1612
    :goto_0
    :sswitch_0
    return-void

    .line 1598
    :sswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1599
    sget-object v1, Lorg/jsoup/b/k$62;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1602
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1603
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jsoup/b/h$c;->e:Z

    .line 1604
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1605
    sget-object v1, Lorg/jsoup/b/k$62;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1590
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x3e -> :sswitch_1
        0xffff -> :sswitch_2
    .end sparse-switch
.end method
