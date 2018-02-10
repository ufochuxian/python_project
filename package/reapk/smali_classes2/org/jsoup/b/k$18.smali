.class final enum Lorg/jsoup/b/k$18;
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
    .line 459
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
    .line 461
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p1}, Lorg/jsoup/b/j;->i()V

    .line 463
    iget-object v0, p1, Lorg/jsoup/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 465
    sget-object v0, Lorg/jsoup/b/k$18;->ScriptDataDoubleEscapeStart:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    .line 473
    :goto_0
    return-void

    .line 466
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p1}, Lorg/jsoup/b/j;->i()V

    .line 468
    sget-object v0, Lorg/jsoup/b/k$18;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 470
    :cond_1
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 471
    sget-object v0, Lorg/jsoup/b/k$18;->ScriptDataEscaped:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
