.class public Lcom/jiliguala/niuwa/logic/l/b/f;
.super Lcom/jiliguala/niuwa/logic/l/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;-><init>()V

    .line 13
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->h:Lcn/sharesdk/framework/Platform;

    .line 14
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;
    .locals 1
    .param p1, "listener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->h:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 26
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a()V

    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->h:Lcn/sharesdk/framework/Platform;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 21
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->b()V

    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/l/b/f;->h()V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitle(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->i:Lcn/sharesdk/framework/Platform$ShareParams;

    iget v1, p0, Lcom/jiliguala/niuwa/logic/l/b/f;->b:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 38
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
