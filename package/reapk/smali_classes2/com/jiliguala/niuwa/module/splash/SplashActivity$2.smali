.class Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/splash/SplashActivity;->goNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 5
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 134
    move-object v1, p1

    .line 135
    .local v1, "serverData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 136
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    if-eqz v1, :cond_0

    .line 137
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/login/a;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const v2, 0x7f0f025a

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    const-string v3, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    .line 149
    .end local v0    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v2

    .line 147
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    const-string v3, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    const-string v4, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    .line 148
    throw v2
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    const-string v1, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
