.class public Lcn/sharesdk/wechat/utils/c;
.super Lcn/sharesdk/wechat/utils/WechatResp;
.source "SourceFile"


# instance fields
.field public a:Lcn/sharesdk/wechat/utils/WXMediaMessage;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;-><init>(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x3

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a(Landroid/os/Bundle;)V

    .line 19
    invoke-static {p1}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Landroid/os/Bundle;)Lcn/sharesdk/wechat/utils/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 20
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
