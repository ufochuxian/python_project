.class public Lcn/jiguang/net/HttpRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->j:Z

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->a:Ljava/lang/String;

    iput v1, p0, Lcn/jiguang/net/HttpRequest;->b:I

    iput v1, p0, Lcn/jiguang/net/HttpRequest;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->j:Z

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jiguang/net/HttpRequest;->d:Ljava/util/Map;

    iput v1, p0, Lcn/jiguang/net/HttpRequest;->b:I

    iput v1, p0, Lcn/jiguang/net/HttpRequest;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcn/jiguang/net/HttpRequest;->b:I

    return v0
.end method

.method public getParas()[B
    .locals 2

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    check-cast v0, [B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->d:Ljava/util/Map;

    invoke-static {v0}, Lcn/jiguang/net/HttpUtils;->joinParasWithEncodedValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget v0, p0, Lcn/jiguang/net/HttpRequest;->c:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isDoInPut()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->h:Z

    return v0
.end method

.method public isDoOutPut()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->g:Z

    return v0
.end method

.method public isHaveRspData()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->j:Z

    return v0
.end method

.method public isUseCaches()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/net/HttpRequest;->i:Z

    return v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->f:Ljava/lang/Object;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcn/jiguang/net/HttpRequest;->b:I

    return-void
.end method

.method public setDoInPut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/net/HttpRequest;->h:Z

    return-void
.end method

.method public setDoOutPut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/net/HttpRequest;->g:Z

    return-void
.end method

.method public setHaveRspData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/net/HttpRequest;->j:Z

    return-void
.end method

.method public setParasMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcn/jiguang/net/HttpRequest;->c:I

    return-void
.end method

.method public setRequestProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/net/HttpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/net/HttpRequest;->i:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/net/HttpRequest;->e:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method