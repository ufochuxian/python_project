.class public Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;,
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0, p2, p1}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 93
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;-><init>(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public static requestByThread(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 60
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->start()V

    .line 61
    return-void
.end method
