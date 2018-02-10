.class final enum Lorg/jsoup/b/k$4;
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
    .line 232
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
    .line 234
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Z)Lorg/jsoup/b/h$g;

    .line 236
    iget-object v0, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsoup/b/h$g;->a(C)V

    .line 237
    iget-object v0, p1, Lorg/jsoup/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    sget-object v0, Lorg/jsoup/b/k$4;->RCDATAEndTagName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 241
    sget-object v0, Lorg/jsoup/b/k$4;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
