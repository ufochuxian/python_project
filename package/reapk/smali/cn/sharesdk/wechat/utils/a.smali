.class public Lcn/sharesdk/wechat/utils/a;
.super Lcn/sharesdk/wechat/utils/k;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "_wxapi_sendauth_req_scope"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "_wxapi_sendauth_req_state"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public b()Z
    .locals 5

    .prologue
    const/16 v3, 0x400

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 29
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    const-string v3, "MicroMsg.SDK.SendAuth.Req"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, scope is invalid"

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 36
    :goto_0
    return v0

    .line 32
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    const-string v3, "MicroMsg.SDK.SendAuth.Req"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, state is invalid"

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 36
    goto :goto_0
.end method
