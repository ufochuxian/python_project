.class final enum Lorg/jsoup/b/k$30;
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
    .line 684
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
    .line 686
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 687
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 723
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Lorg/jsoup/b/h$g;->m()V

    .line 724
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 725
    sget-object v1, Lorg/jsoup/b/k$30;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 727
    :goto_0
    :sswitch_0
    return-void

    .line 696
    :sswitch_1
    sget-object v1, Lorg/jsoup/b/k$30;->SelfClosingStartTag:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 699
    :sswitch_2
    sget-object v1, Lorg/jsoup/b/k$30;->BeforeAttributeValue:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 702
    :sswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 703
    sget-object v1, Lorg/jsoup/b/k$30;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 706
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 707
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Lorg/jsoup/b/h$g;->b(C)V

    .line 708
    sget-object v1, Lorg/jsoup/b/k$30;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 711
    :sswitch_5
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 712
    sget-object v1, Lorg/jsoup/b/k$30;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 717
    :sswitch_6
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 718
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Lorg/jsoup/b/h$g;->m()V

    .line 719
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1, v0}, Lorg/jsoup/b/h$g;->b(C)V

    .line 720
    sget-object v1, Lorg/jsoup/b/k$30;->AttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_1
        0x3c -> :sswitch_6
        0x3d -> :sswitch_2
        0x3e -> :sswitch_3
        0xffff -> :sswitch_5
    .end sparse-switch
.end method
