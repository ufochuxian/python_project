.class final enum Lorg/jsoup/b/k$28;
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
    .line 598
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
    .line 601
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 602
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 636
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Lorg/jsoup/b/h$g;->m()V

    .line 637
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 638
    sget-object v1, Lorg/jsoup/b/k$28;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 640
    :goto_0
    :sswitch_0
    return-void

    .line 610
    :sswitch_1
    sget-object v1, Lorg/jsoup/b/k$28;->SelfClosingStartTag:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 613
    :sswitch_2
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 614
    sget-object v1, Lorg/jsoup/b/k$28;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 617
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 618
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Lorg/jsoup/b/h$g;->m()V

    .line 619
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 620
    sget-object v1, Lorg/jsoup/b/k$28;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 623
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 624
    sget-object v1, Lorg/jsoup/b/k$28;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 630
    :sswitch_5
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 631
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Lorg/jsoup/b/h$g;->m()V

    .line 632
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1, v0}, Lorg/jsoup/b/h$g;->b(C)V

    .line 633
    sget-object v1, Lorg/jsoup/b/k$28;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_1
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
