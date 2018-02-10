.class public abstract Lcom/jiliguala/niuwa/logic/l/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/jiliguala/niuwa/logic/l/a/a;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcn/sharesdk/framework/Platform;

.field protected i:Lcn/sharesdk/framework/Platform$ShareParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v3, 0x3c

    .line 102
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 120
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 121
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/l/a/a;->h()I

    move-result v6

    .line 120
    invoke-static {v2, v3, v4, v5, v6}, Lcom/jiliguala/niuwa/logic/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 104
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 107
    :sswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    const-string v0, ""

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .local v1, "len":I
    if-le v1, v3, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "babyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 129
    :sswitch_0
    const-string v1, "\u6211\u548c%s\u8bfb\u5b8c\u82f1\u8bed\u7ed8\u672c%s!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 132
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 133
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/l/a/a;->h()I

    move-result v5

    .line 132
    invoke-static {v1, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/logic/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public abstract a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;
.end method

.method public a(Lcom/jiliguala/niuwa/logic/l/a/a;)Lcom/jiliguala/niuwa/logic/l/b/b;
    .locals 0
    .param p1, "mShareMode"    # Lcom/jiliguala/niuwa/logic/l/a/a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 55
    return-object p0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->b()V

    .line 160
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->f()V

    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->c()V

    .line 82
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->g()V

    .line 83
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/l/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->e:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->c:Ljava/lang/String;

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->f:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->d:Ljava/lang/String;

    .line 97
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->e:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()V
    .locals 7

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->h()I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/l/a/a;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 175
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/l/a/a;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/l/a/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/l/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public e()Lcom/jiliguala/niuwa/logic/l/a/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 59
    iput v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->b:I

    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iput v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->b:I

    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v0, 0x6

    iput v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->b:I

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected g()V
    .locals 6

    .prologue
    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    const-string v4, "qiniu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v1, "imageMogr2/thumbnail/[0-9]+x[0-9]+"

    .line 146
    .local v1, "regex":Ljava/lang/String;
    const-string v2, "imageMogr2/thumbnail/100x100"

    .line 147
    .local v2, "replace_str":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    const-string v4, "qiniu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    const-string v4, "imageMogr2/thumbnail/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "&imageMogr2/thumbnail/100x100"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    .line 156
    .end local v0    # "index":I
    .end local v1    # "regex":Ljava/lang/String;
    .end local v2    # "replace_str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 150
    .restart local v0    # "index":I
    .restart local v1    # "regex":Ljava/lang/String;
    .restart local v2    # "replace_str":Ljava/lang/String;
    :cond_1
    const-string v3, "?imageMogr2/thumbnail/100x100"

    goto :goto_0

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803b0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "imageData":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    .line 171
    .end local v0    # "imageData":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()V
    .locals 6

    .prologue
    .line 182
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v3, Lrx/i/b;

    invoke-direct {v3}, Lrx/i/b;-><init>()V

    .line 187
    .local v3, "mSubscriptions":Lrx/i/b;
    new-instance v4, Lcom/jiliguala/niuwa/logic/network/json/UnitUnlockEntity;

    invoke-direct {v4, v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitUnlockEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v1

    .line 189
    .local v1, "body":Lokhttp3/ab;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 191
    invoke-interface {v4, v1}, Lcom/jiliguala/niuwa/logic/network/d;->A(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 192
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 193
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 194
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/l/b/b$1;

    invoke-direct {v5, p0, v3}, Lcom/jiliguala/niuwa/logic/l/b/b$1;-><init>(Lcom/jiliguala/niuwa/logic/l/b/b;Lrx/i/b;)V

    .line 195
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
