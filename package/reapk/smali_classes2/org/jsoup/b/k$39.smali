.class final enum Lorg/jsoup/b/k$39;
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
    .line 947
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
    .line 949
    const-string v0, "--"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p1}, Lorg/jsoup/b/j;->e()V

    .line 951
    sget-object v0, Lorg/jsoup/b/k$39;->CommentStart:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 963
    :goto_0
    return-void

    .line 952
    :cond_0
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    sget-object v0, Lorg/jsoup/b/k$39;->Doctype:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 954
    :cond_1
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    sget-object v0, Lorg/jsoup/b/k$39;->CdataSection:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 961
    sget-object v0, Lorg/jsoup/b/k$39;->BogusComment:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
