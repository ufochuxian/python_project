.class final enum Lorg/jsoup/b/k$25;
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
    .line 552
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
    .line 554
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 555
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 577
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 578
    sget-object v1, Lorg/jsoup/b/k$25;->ScriptDataDoubleEscaped:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 580
    :goto_0
    return-void

    .line 557
    :sswitch_0
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    goto :goto_0

    .line 560
    :sswitch_1
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 561
    sget-object v1, Lorg/jsoup/b/k$25;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 564
    :sswitch_2
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 565
    sget-object v1, Lorg/jsoup/b/k$25;->ScriptData:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 568
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 569
    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(C)V

    .line 570
    sget-object v1, Lorg/jsoup/b/k$25;->ScriptDataDoubleEscaped:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 573
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 574
    sget-object v1, Lorg/jsoup/b/k$25;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 555
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
