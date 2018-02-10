.class final enum Lorg/jsoup/b/k$17;
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
    .line 428
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
    .line 430
    invoke-virtual {p2}, Lorg/jsoup/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 432
    sget-object v1, Lorg/jsoup/b/k$17;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 457
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 437
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 454
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 455
    sget-object v1, Lorg/jsoup/b/k$17;->ScriptDataEscaped:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 439
    :sswitch_0
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    goto :goto_0

    .line 442
    :sswitch_1
    sget-object v1, Lorg/jsoup/b/k$17;->ScriptDataEscapedLessthanSign:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 445
    :sswitch_2
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 446
    sget-object v1, Lorg/jsoup/b/k$17;->ScriptData:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 449
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 450
    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(C)V

    .line 451
    sget-object v1, Lorg/jsoup/b/k$17;->ScriptDataEscaped:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 437
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
