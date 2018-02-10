.class final enum Lorg/jsoup/b/k$3;
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
    .line 213
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
    .line 216
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p1}, Lorg/jsoup/b/j;->i()V

    .line 218
    sget-object v0, Lorg/jsoup/b/k$3;->RCDATAEndTagOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    .line 230
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/b/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lorg/jsoup/b/h$e;

    invoke-virtual {p1}, Lorg/jsoup/b/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    .line 223
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 224
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 225
    sget-object v0, Lorg/jsoup/b/k$3;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lorg/jsoup/b/k$3;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
