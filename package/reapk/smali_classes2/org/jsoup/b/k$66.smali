.class final enum Lorg/jsoup/b/k$66;
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
    .line 137
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
    .line 140
    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 151
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Z)Lorg/jsoup/b/h$g;

    .line 153
    sget-object v0, Lorg/jsoup/b/k$66;->TagName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 161
    :goto_0
    return-void

    .line 142
    :sswitch_0
    sget-object v0, Lorg/jsoup/b/k$66;->MarkupDeclarationOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 145
    :sswitch_1
    sget-object v0, Lorg/jsoup/b/k$66;->EndTagOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 148
    :sswitch_2
    sget-object v0, Lorg/jsoup/b/k$66;->BogusComment:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 156
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 157
    sget-object v0, Lorg/jsoup/b/k$66;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch
.end method
