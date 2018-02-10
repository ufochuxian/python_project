.class final enum Lorg/jsoup/b/k$37;
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
    .line 915
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
    .line 917
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 918
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 929
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 930
    sget-object v1, Lorg/jsoup/b/k$37;->BeforeAttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 932
    :goto_0
    return-void

    .line 920
    :sswitch_0
    iget-object v1, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jsoup/b/h$g;->c:Z

    .line 921
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 922
    sget-object v1, Lorg/jsoup/b/k$37;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 925
    :sswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 926
    sget-object v1, Lorg/jsoup/b/k$37;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 918
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
