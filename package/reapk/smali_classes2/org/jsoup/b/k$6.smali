.class final enum Lorg/jsoup/b/k$6;
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
    .line 291
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
    .line 293
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/b/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1}, Lorg/jsoup/b/j;->i()V

    .line 295
    sget-object v0, Lorg/jsoup/b/k$6;->RawtextEndTagOpen:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(C)V

    .line 298
    sget-object v0, Lorg/jsoup/b/k$6;->Rawtext:Lorg/jsoup/b/k;

    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0
.end method
