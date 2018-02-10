.class public Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;,
        Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private counter:I

.field private listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private originalUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;II)V
    .locals 1
    .param p1, "outerRef"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p2, "index"    # I
    .param p3, "len"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->counter:I

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mOuterRef:Ljava/lang/ref/WeakReference;

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    .line 36
    return-void
.end method

.method private handleRedirect(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2710

    .line 85
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 89
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 93
    const-string v5, "jiliguala.com"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "HEAD"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "User-Agent"

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "accept"

    const-string v7, "*/*"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Cookie"

    invoke-virtual {v5, v6, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 113
    .local v3, "rspCode":I
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/16 v5, 0x190

    if-lt v3, v5, :cond_2

    .line 119
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->REDIRECT_FAIL_4XX_5XX:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    .line 144
    :goto_1
    return-object v5

    .line 96
    .end local v3    # "rspCode":I
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .restart local v3    # "rspCode":I
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 116
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->UNKNOWN_FAIL:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v5, 0x12d

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12e

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x133

    if-ne v3, v5, :cond_6

    .line 121
    :cond_3
    iget v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->counter:I

    .line 122
    iget v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->counter:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_4

    .line 124
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->OVER_REDIRECT_COUNT:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "location":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->handleRedirect(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    move-result-object v5

    goto :goto_1

    .line 131
    :cond_5
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->UNKNOWN_FAIL:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto :goto_1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/net/URISyntaxException;
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->UNKNOWN_FAIL:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto :goto_1

    .line 140
    .end local v1    # "ex":Ljava/net/URISyntaxException;
    .end local v2    # "location":Ljava/lang/String;
    :cond_6
    const/16 v5, 0xc8

    if-lt v3, v5, :cond_7

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_7

    .line 142
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->SUCCESS:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto :goto_1

    .line 144
    :cond_7
    new-instance v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->UNKNOWN_FAIL:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-direct {v5, v6, p1, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 41
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "cookie":Ljava/lang/String;
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->originalUri:Ljava/lang/String;

    .line 44
    invoke-direct {p0, v3, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->handleRedirect(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    move-result-object v2

    .line 45
    .local v2, "result":Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->originalUri:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uriOri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v2    # "result":Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 54
    .restart local v0    # "cookie":Ljava/lang/String;
    .restart local v2    # "result":Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
    .end local v3    # "url":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    sget-object v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->UNKNOWN_FAIL:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->originalUri:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {v2, v4, v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 53
    :try_start_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 54
    :catch_2
    move-exception v1

    .line 55
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 53
    :try_start_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 58
    :cond_1
    :goto_1
    throw v4

    .line 54
    :catch_3
    move-exception v1

    .line 55
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->doInBackground([Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 2
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$1;->a:[I

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspType:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    .line 80
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;->onRedirectUrlSucceed(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->listener:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;->onRedirectUrlFailed(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->onPostExecute(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    return-void
.end method
