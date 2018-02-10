.class final enum Lorg/jsoup/b/k$9;
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
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 320
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 332
    sget-object v0, Lorg/jsoup/b/k$9;->ScriptData:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 334
    :goto_0
    return-void

    .line 322
    :sswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/j;->i()V

    .line 323
    sget-object v0, Lorg/jsoup/b/k$9;->ScriptDataEndTagOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 326
    :sswitch_1
    const-string v0, "<!"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lorg/jsoup/b/k$9;->ScriptDataEscapeStart:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
