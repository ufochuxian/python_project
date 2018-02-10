.class public Lcom/jiliguala/niuwa/logic/l/b/a;
.super Lcom/jiliguala/niuwa/logic/l/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;-><init>()V

    .line 22
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 23
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->h:Lcn/sharesdk/framework/Platform;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;
    .locals 1
    .param p1, "listener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->h:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 29
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a()V

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->h:Lcn/sharesdk/framework/Platform;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 36
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->b()V

    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/a;->h()V

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitle(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->b:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 46
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/l/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->e:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/l/a/a;->m()I

    move-result v3

    const v4, 0x7f0904dd

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->c:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->g:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/l/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/a;->a:Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/a/a;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    return-void

    .line 63
    :pswitch_0
    const-string v1, "Source"

    const-string v2, "Lock Listen DL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v1, "Source"

    const-string v2, "Post Fav Listen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v1, "Source"

    const-string v2, "Post Fav Watch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v1, "Source"

    const-string v2, "Post Fav Post"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
