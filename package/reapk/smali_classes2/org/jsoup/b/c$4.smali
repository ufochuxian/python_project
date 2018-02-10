.class final enum Lorg/jsoup/b/c$4;
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
    .line 969
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/l;

    .prologue
    .line 1018
    new-instance v1, Lorg/jsoup/b/h$e;

    const-string v2, "colgroup"

    invoke-direct {v1, v2}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    .line 1019
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p2, p1}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    move-result v1

    .line 1021
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 6
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v3, 0x1

    .line 971
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 972
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    .line 1014
    :cond_0
    :goto_0
    return v3

    .line 975
    :cond_1
    sget-object v4, Lorg/jsoup/b/c$17;->a:[I

    iget-object v5, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v5}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1012
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$4;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto :goto_0

    .line 977
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 980
    :pswitch_2
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 983
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v2

    .line 984
    .local v2, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual {v2}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "name":Ljava/lang/String;
    const-string v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 986
    sget-object v3, Lorg/jsoup/b/c$4;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v3

    goto :goto_0

    .line 987
    :cond_2
    const-string v4, "col"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 988
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 990
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$4;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto :goto_0

    .line 993
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/b/h$f;
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 994
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 995
    .restart local v1    # "name":Ljava/lang/String;
    const-string v4, "colgroup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 996
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 997
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 998
    const/4 v3, 0x0

    goto :goto_0

    .line 1000
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 1001
    sget-object v4, Lorg/jsoup/b/c$4;->InTable:Lorg/jsoup/b/c;

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1004
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$4;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto :goto_0

    .line 1007
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1010
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$4;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v3

    goto/16 :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
