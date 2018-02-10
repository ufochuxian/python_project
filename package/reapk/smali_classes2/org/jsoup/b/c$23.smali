.class final enum Lorg/jsoup/b/c$23;
.super Lorg/jsoup/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 782
    invoke-virtual {p1}, Lorg/jsoup/b/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    .line 795
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 784
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 787
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 788
    invoke-virtual {p2}, Lorg/jsoup/b/b;->c()Lorg/jsoup/b/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 789
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    goto :goto_1

    .line 790
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 793
    invoke-virtual {p2}, Lorg/jsoup/b/b;->c()Lorg/jsoup/b/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0
.end method
