.class public Lorg/xwalk/core/internal/XWalkResourceClientBridge;
.super Lorg/xwalk/core/internal/XWalkResourceClientInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 64
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDocumentLoadedInFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 87
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 110
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadFinished"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 133
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onProgressChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 159
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 185
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 208
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedLoadError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 234
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldOverrideUrlLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 257
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedSslError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 280
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedClientCertRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 303
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 326
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "doUpdateVisitedHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 349
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedHttpAuthRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 367
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 385
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 38
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->reflectionInit()V

    .line 41
    return-void
.end method


# virtual methods
.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0
.end method

.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;"
        }
    .end annotation

    .prologue
    .line 371
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0
.end method

.method public createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 363
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 364
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;"
        }
    .end annotation

    .prologue
    .line 380
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 381
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistorySuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V

    .line 320
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 318
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 307
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 308
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V

    .line 312
    :goto_0
    return-void

    .line 310
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public doUpdateVisitedHistorySuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V

    .line 324
    return-void
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameSuper(Lorg/xwalk/core/internal/XWalkViewBridge;J)V

    .line 58
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 56
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "frameId"    # J

    .prologue
    .line 45
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V

    .line 50
    :goto_0
    return-void

    .line 48
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    goto :goto_0
.end method

.method public onDocumentLoadedInFrameSuper(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    .line 62
    return-void
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 104
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 102
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinishedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 81
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 79
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;I)V

    .line 127
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 125
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 114
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V

    .line 119
    :goto_0
    return-void

    .line 117
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    goto :goto_0
.end method

.method public onProgressChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 131
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V

    .line 274
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :goto_0
    return-void

    .line 272
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_3

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestInternal;

    .prologue
    .line 261
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V

    .line 266
    :goto_1
    return-void

    .line 262
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 264
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    goto :goto_1
.end method

.method public onReceivedClientCertRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    .line 278
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :goto_0
    return-void

    .line 341
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    if-eqz v0, :cond_3

    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 330
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 331
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_1
    return-void

    .line 331
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 333
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivedHttpAuthRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 200
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 189
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 192
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoadErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .prologue
    .line 292
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V

    .line 297
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :goto_0
    return-void

    .line 295
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_3

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x2

    instance-of v0, p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v0, :cond_4

    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :goto_3
    invoke-virtual {p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_4
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v0, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object p3, v0

    goto :goto_3
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 284
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_2

    .line 285
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :goto_0
    instance-of v0, p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V

    .line 289
    :goto_2
    return-void

    .line 285
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v0, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object p3, v0

    goto :goto_1

    .line 287
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    goto :goto_2
.end method

.method public onReceivedResponseHeadersSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 301
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 251
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 249
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 243
    :goto_0
    return-void

    .line 241
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onReceivedSslErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 255
    return-void
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 389
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 390
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDocumentLoadedInFrame"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 394
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadStarted"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 396
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadFinished"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 398
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onProgressChanged"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 400
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldInterceptLoadRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 402
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldInterceptLoadRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 404
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedLoadError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 406
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldOverrideUrlLoading"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 408
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedSslError"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v7

    const-class v4, Landroid/net/http/SslError;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 410
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedClientCertRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "ClientCertRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 412
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedResponseHeaders"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceResponse"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 414
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "doUpdateVisitedHistory"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 416
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedHttpAuthRequest"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkHttpAuthHandler"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 418
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "createXWalkWebResourceResponse"

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 420
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "createXWalkWebResourceResponse"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 148
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebResourceResponse;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 174
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v4, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v4, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_3

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;

    .prologue
    .line 163
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 164
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 166
    :goto_1
    return-object v0

    .line 164
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 166
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    goto :goto_1
.end method

.method public shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 155
    .local v0, "ret":Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    .end local v0    # "ret":Landroid/webkit/WebResourceResponse;
    :cond_0
    return-object v0
.end method

.method public shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 181
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z

    move-result v0

    .line 223
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_2

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z

    move-result v0

    .line 215
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoadingSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    .line 231
    .local v0, "ret":Z
    return v0
.end method
