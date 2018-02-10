.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/sina/weibo/sdk/net/WeiboParameters;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/sina/weibo/sdk/net/RequestListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->a:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->b:Lcom/sina/weibo/sdk/net/WeiboParameters;

    .line 114
    iput-object p3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->c:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->d:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 116
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->b:Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-static {v2, v3, v4}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;

    invoke-direct {v2, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;

    invoke-direct {v2, v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;-><init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method protected a(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "result":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->b()Lcom/sina/weibo/sdk/exception/WeiboException;

    move-result-object v0

    .line 136
    .local v0, "exception":Lcom/sina/weibo/sdk/exception/WeiboException;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->d:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->d:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->a([Ljava/lang/Void;)Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$b;->a(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
