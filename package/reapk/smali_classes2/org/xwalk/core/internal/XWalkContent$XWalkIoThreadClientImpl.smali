.class Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;
.super Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XWalkIoThreadClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;


# direct methods
.method private constructor <init>(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xwalk/core/internal/XWalkContent;
    .param p2, "x1"    # Lorg/xwalk/core/internal/XWalkContent$1;

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    return-void
.end method


# virtual methods
.method public getCacheMode()I
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public newLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 876
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 878
    return-void
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 1
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    .param p2, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 888
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 889
    return-void
.end method

.method public shouldBlockContentUrls()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowContentAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBlockFileUrls()Z
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkLoads()Z

    move-result v0

    return v0
.end method

.method public shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .prologue
    .line 839
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v1

    iget-object v2, p1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnResourceLoadStarted(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 844
    .local v0, "xwalkWebResourceResponse":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_1

    .line 845
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v1

    iget-object v2, p1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnLoadResource(Ljava/lang/String;)V

    .line 852
    :cond_0
    :goto_0
    return-object v0

    .line 847
    :cond_1
    iget-boolean v1, p1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->isMainFrame:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 848
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContent;->access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
