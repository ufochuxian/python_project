.class final enum Lorg/jsoup/b/c$1;
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
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    :goto_0
    return v2

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {p1}, Lorg/jsoup/b/h;->c()Lorg/jsoup/b/h$c;

    move-result-object v0

    .line 24
    .local v0, "d":Lorg/jsoup/b/h$c;
    new-instance v1, Lorg/jsoup/nodes/e;

    invoke-virtual {v0}, Lorg/jsoup/b/h$c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/b/h$c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/b/h$c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/b/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v1, "doctype":Lorg/jsoup/nodes/e;
    invoke-virtual {p2}, Lorg/jsoup/b/b;->e()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 26
    invoke-virtual {v0}, Lorg/jsoup/b/h$c;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {p2}, Lorg/jsoup/b/b;->e()Lorg/jsoup/nodes/Document;

    move-result-object v3

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 28
    :cond_2
    sget-object v3, Lorg/jsoup/b/c$1;->BeforeHtml:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 31
    .end local v0    # "d":Lorg/jsoup/b/h$c;
    .end local v1    # "doctype":Lorg/jsoup/nodes/e;
    :cond_3
    sget-object v2, Lorg/jsoup/b/c$1;->BeforeHtml:Lorg/jsoup/b/c;

    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 32
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    goto :goto_0
.end method
