.class public Lcn/sharesdk/wechat/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/wechat/utils/g;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i;->a:Lcn/sharesdk/framework/Platform;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 30
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 31
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 26
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatResp;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 42
    iget v0, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v1, "req"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i;->e:Lcn/sharesdk/wechat/utils/g;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/wechat/utils/g;->a(Landroid/os/Bundle;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/i;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/i;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 64
    :pswitch_4
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 66
    :pswitch_5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_0

    .line 78
    :pswitch_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 86
    :pswitch_8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 91
    :pswitch_9
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/i;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    :pswitch_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 105
    :pswitch_b
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_a
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 44
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 64
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 84
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 103
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/wechat/utils/g;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i;->e:Lcn/sharesdk/wechat/utils/g;

    .line 39
    return-void
.end method

.method public b()Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method
