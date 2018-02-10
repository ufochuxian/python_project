.class final enum Lorg/jsoup/b/k$67;
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
    .line 163
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
    .line 165
    invoke-virtual {p2}, Lorg/jsoup/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 167
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lorg/jsoup/b/k$67;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Z)Lorg/jsoup/b/h$g;

    .line 171
    sget-object v0, Lorg/jsoup/b/k$67;->TagName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 172
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 174
    sget-object v0, Lorg/jsoup/b/k$67;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 177
    sget-object v0, Lorg/jsoup/b/k$67;->BogusComment:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
