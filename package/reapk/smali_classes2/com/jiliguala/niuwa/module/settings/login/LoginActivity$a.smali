.class Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1031

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    .line 233
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 198
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$002(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 199
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;Z)V

    .line 204
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/logic/login/c/a;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 207
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "_u":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "_p":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v6, 0x1040

    invoke-direct {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v4

    const-string v5, "weibo"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V

    .line 225
    .end local v0    # "_p":Ljava/lang/String;
    .end local v1    # "_u":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    .line 226
    return-void

    .line 218
    :cond_1
    const-string v4, "code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "code":Ljava/lang/String;
    const-string v3, "\u5931\u8d25"

    .line 220
    .local v3, "message":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nObtained the code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    .line 239
    return-void
.end method
