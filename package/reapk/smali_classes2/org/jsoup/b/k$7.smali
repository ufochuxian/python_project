.class final enum Lorg/jsoup/b/k$7;
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
    .line 302
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
    .line 304
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Z)Lorg/jsoup/b/h$g;

    .line 306
    sget-object v0, Lorg/jsoup/b/k$7;->RawtextEndTagName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lorg/jsoup/b/k$7;->Rawtext:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
