.class final enum Lorg/jsoup/b/c$19;
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
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/l;

    .prologue
    .line 162
    new-instance v0, Lorg/jsoup/b/h$e;

    const-string v1, "head"

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    .line 163
    invoke-virtual {p2, p1}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    .line 158
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    sget-object v6, Lorg/jsoup/b/c$17;->a:[I

    iget-object v7, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v7}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 156
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$19;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v4

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v3

    .line 109
    .local v3, "start":Lorg/jsoup/b/h$f;
    invoke-virtual {v3}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "name":Ljava/lang/String;
    const-string v6, "html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    sget-object v4, Lorg/jsoup/b/c$19;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {v4, p1, p2}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto :goto_0

    .line 112
    :cond_2
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "base"

    aput-object v7, v6, v5

    const-string v7, "basefont"

    aput-object v7, v6, v4

    const-string v7, "bgsound"

    aput-object v7, v6, v9

    const-string v7, "command"

    aput-object v7, v6, v8

    const/4 v7, 0x4

    const-string v8, "link"

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 115
    .local v0, "el":Lorg/jsoup/nodes/f;
    const-string v5, "base"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "href"

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/f;)V

    goto :goto_0

    .line 117
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_3
    const-string v6, "meta"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 120
    :cond_4
    const-string v6, "title"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 121
    invoke-static {v3, p2}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    goto/16 :goto_0

    .line 122
    :cond_5
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "noframes"

    aput-object v7, v6, v5

    const-string v7, "style"

    aput-object v7, v6, v4

    invoke-static {v2, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 123
    invoke-static {v3, p2}, Lorg/jsoup/b/c;->b(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v6, "noscript"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 126
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 127
    sget-object v5, Lorg/jsoup/b/c$19;->InHeadNoscript:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 128
    :cond_7
    const-string v6, "script"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 131
    iget-object v5, p2, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    sget-object v6, Lorg/jsoup/b/k;->ScriptData:Lorg/jsoup/b/k;

    invoke-virtual {v5, v6}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 132
    invoke-virtual {p2}, Lorg/jsoup/b/b;->b()V

    .line 133
    sget-object v5, Lorg/jsoup/b/c$19;->Text:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 134
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 135
    :cond_8
    const-string v4, "head"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 136
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$19;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v4

    goto/16 :goto_0

    .line 143
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "start":Lorg/jsoup/b/h$f;
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v1

    .line 144
    .local v1, "end":Lorg/jsoup/b/h$e;
    invoke-virtual {v1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "name":Ljava/lang/String;
    const-string v6, "head"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 146
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 147
    sget-object v5, Lorg/jsoup/b/c$19;->AfterHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 148
    :cond_a
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v6, v5

    const-string v7, "html"

    aput-object v7, v6, v4

    const-string v4, "br"

    aput-object v4, v6, v9

    invoke-static {v2, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$19;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/l;)Z

    move-result v4

    goto/16 :goto_0

    .line 151
    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 152
    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
