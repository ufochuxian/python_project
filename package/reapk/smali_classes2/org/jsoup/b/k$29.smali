.class final enum Lorg/jsoup/b/k$29;
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
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 4
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 645
    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {p2, v2}, Lorg/jsoup/b/a;->a([C)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/b/h$g;->c(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 649
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 655
    :sswitch_0
    sget-object v2, Lorg/jsoup/b/k$29;->AfterAttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 658
    :sswitch_1
    sget-object v2, Lorg/jsoup/b/k$29;->SelfClosingStartTag:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 661
    :sswitch_2
    sget-object v2, Lorg/jsoup/b/k$29;->BeforeAttributeValue:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 664
    :sswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 665
    sget-object v2, Lorg/jsoup/b/k$29;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 668
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 669
    iget-object v2, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Lorg/jsoup/b/h$g;->b(C)V

    goto :goto_0

    .line 672
    :sswitch_5
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 673
    sget-object v2, Lorg/jsoup/b/k$29;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 678
    :sswitch_6
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 679
    iget-object v2, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v2, v0}, Lorg/jsoup/b/h$g;->b(C)V

    goto :goto_0

    .line 645
    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
    .end array-data

    .line 649
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
