.class final enum Lorg/jsoup/b/k$63;
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
    .line 1614
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
    .line 1616
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1617
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1630
    :goto_0
    return-void

    .line 1619
    :sswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1620
    sget-object v1, Lorg/jsoup/b/k$63;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1623
    :sswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1624
    sget-object v1, Lorg/jsoup/b/k$63;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1617
    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
