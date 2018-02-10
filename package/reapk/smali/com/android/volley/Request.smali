.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$a;,
        Lcom/android/volley/Request$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static sCounter:J


# instance fields
.field private mCacheEntry:Lcom/android/volley/b$a;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/android/volley/k$a;

.field private final mEventLog:Lcom/android/volley/n$a;

.field private mIdentifier:Ljava/lang/String;

.field private final mMethod:I

.field private mRedirectUrl:Ljava/lang/String;

.field private mRequestQueue:Lcom/android/volley/j;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/android/volley/m;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/k$a;)V
    .locals 3
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/volley/k$a;

    .prologue
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/android/volley/n$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/n$a;

    invoke-direct {v0}, Lcom/android/volley/n$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/n$a;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 111
    iput-object v1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/b$a;

    .line 138
    iput p1, p0, Lcom/android/volley/Request;->mMethod:I

    .line 139
    iput-object p2, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    .line 140
    invoke-static {p1, p2}, Lcom/android/volley/Request;->createIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->mIdentifier:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/k$a;

    .line 142
    new-instance v0, Lcom/android/volley/d;

    invoke-direct {v0}, Lcom/android/volley/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/m;)Lcom/android/volley/Request;

    .line 144
    invoke-static {p2}, Lcom/android/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

    .line 145
    return-void

    :cond_0
    move-object v0, v1

    .line 47
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/k$a;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/volley/k$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/Request;)Lcom/android/volley/n$a;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/Request;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/n$a;

    return-object v0
.end method

.method private static createIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "method"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/volley/Request;->sCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/volley/Request;->sCounter:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/android/volley/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 6
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 500
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 498
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 160
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 220
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-boolean v0, Lcom/android/volley/n$a;->a:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/n$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/volley/n$a;->a(Ljava/lang/String;J)V

    .line 223
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 352
    return-void
.end method

.method public compareTo(Lcom/android/volley/Request;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "other":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 621
    .local v0, "left":Lcom/android/volley/Request$Priority;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v1

    .line 625
    .local v1, "right":Lcom/android/volley/Request$Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 609
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/k$a;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/k$a;

    invoke-interface {v0, p1}, Lcom/android/volley/k$a;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 612
    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 231
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/j;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/j;

    invoke-virtual {v1, p0}, Lcom/android/volley/j;->b(Lcom/android/volley/Request;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/volley/Request;->onFinish()V

    .line 235
    :cond_0
    sget-boolean v1, Lcom/android/volley/n$a;->a:Z

    if-eqz v1, :cond_1

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 237
    .local v2, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    .local v0, "mainThread":Landroid/os/Handler;
    new-instance v1, Lcom/android/volley/Request$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    .end local v0    # "mainThread":Landroid/os/Handler;
    .end local v2    # "threadId":J
    :cond_1
    :goto_0
    return-void

    .line 251
    .restart local v2    # "threadId":J
    :cond_2
    iget-object v1, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/n$a;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/n$a;->a(Ljava/lang/String;J)V

    .line 252
    iget-object v1, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/n$a;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/volley/n$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 480
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/android/volley/b$a;
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/b$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/volley/Request;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lcom/android/volley/k$a;
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/k$a;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget v0, p0, Lcom/android/volley/Request;->mMethod:I

    return v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 428
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 431
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/volley/m;
    .locals 1

    .prologue
    .line 541
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/m;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .prologue
    .line 278
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/m;

    invoke-interface {v0}, Lcom/android/volley/m;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/Request;->mRedirectUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 559
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 560
    return-void
.end method

.method protected onFinish()V
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/k$a;

    .line 261
    return-void
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 589
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lcom/android/volley/b$a;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "entry"    # Lcom/android/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/b$a;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/b$a;

    .line 344
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRedirectUrl:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setRequestQueue(Lcom/android/volley/j;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "requestQueue"    # Lcom/android/volley/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/j;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/j;

    .line 271
    return-object p0
.end method

.method public setRetryPolicy(Lcom/android/volley/m;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/android/volley/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/m;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/m;

    .line 551
    return-object p0
.end method

.method public final setSequence(I)Lcom/android/volley/Request;
    .locals 1
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 291
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 511
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    .line 199
    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 630
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    if-eqz v1, :cond_0

    const-string v1, "[X] "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "[ ] "

    goto :goto_0
.end method
