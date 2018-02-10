.class final enum Lorg/jsoup/b/k$22;
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
    .line 498
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
    .line 500
    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v0

    .line 501
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 520
    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {p2, v2}, Lorg/jsoup/b/a;->a([C)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 523
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 503
    :sswitch_0
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 504
    sget-object v2, Lorg/jsoup/b/k$22;->ScriptDataDoubleEscapedDash:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 507
    :sswitch_1
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 508
    sget-object v2, Lorg/jsoup/b/k$22;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 511
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 512
    invoke-virtual {p2}, Lorg/jsoup/b/a;->f()V

    .line 513
    const v2, 0xfffd

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(C)V

    goto :goto_0

    .line 516
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 517
    sget-object v2, Lorg/jsoup/b/k$22;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    .line 520
    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
