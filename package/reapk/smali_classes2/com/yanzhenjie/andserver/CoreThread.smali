.class Lcom/yanzhenjie/andserver/CoreThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServerStatusReceiver"


# instance fields
.field private isLoop:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/yanzhenjie/andserver/Server$Listener;

.field private final mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private final mTimeout:I

.field private final mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;


# direct methods
.method constructor <init>(IILjava/util/Map;Lcom/yanzhenjie/andserver/website/WebSite;Lcom/yanzhenjie/andserver/Server$Listener;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "timeout"    # I
    .param p4, "webSite"    # Lcom/yanzhenjie/andserver/website/WebSite;
    .param p5, "listener"    # Lcom/yanzhenjie/andserver/Server$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;",
            "Lcom/yanzhenjie/andserver/website/WebSite;",
            "Lcom/yanzhenjie/andserver/Server$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    iput p1, p0, Lcom/yanzhenjie/andserver/CoreThread;->mPort:I

    .line 101
    iput p2, p0, Lcom/yanzhenjie/andserver/CoreThread;->mTimeout:I

    .line 102
    iput-object p3, p0, Lcom/yanzhenjie/andserver/CoreThread;->mHandlerMap:Ljava/util/Map;

    .line 103
    iput-object p4, p0, Lcom/yanzhenjie/andserver/CoreThread;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    .line 104
    iput-object p5, p0, Lcom/yanzhenjie/andserver/CoreThread;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/andserver/CoreThread;)Lcom/yanzhenjie/andserver/Server$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/andserver/CoreThread;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yanzhenjie/andserver/CoreThread;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    return-object v0
.end method

.method private createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v1, "http.socket.timeout"

    iget v2, p0, Lcom/yanzhenjie/andserver/CoreThread;->mTimeout:I

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    .line 115
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    .line 116
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    .line 117
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.origin-server"

    const-string v2, "WebServer/1.1"

    .line 118
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method private createHttpProcessor()Lorg/apache/http/protocol/HttpProcessor;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 128
    .local v0, "httpProcessor":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 129
    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 130
    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 131
    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 132
    new-instance v1, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 133
    return-object v0
.end method

.method private createHttpService(Lorg/apache/http/params/HttpParams;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpRequestHandlerResolver;)Lorg/apache/http/protocol/HttpService;
    .locals 3
    .param p1, "httpParams"    # Lorg/apache/http/params/HttpParams;
    .param p2, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "handlerRegistry"    # Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .prologue
    .line 174
    new-instance v0, Lorg/apache/http/protocol/HttpService;

    new-instance v1, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v2, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 176
    .local v0, "httpService":Lorg/apache/http/protocol/HttpService;
    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 177
    invoke-virtual {v0, p3}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 178
    return-object v0
.end method

.method private registerRequestHandler()Lorg/apache/http/protocol/HttpRequestHandlerResolver;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 142
    const-string v3, "ServerStatusReceiver"

    const-string v4, "createHttpProcessor method inner start...."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 145
    .local v1, "handlerRegistry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    iget-object v3, p0, Lcom/yanzhenjie/andserver/CoreThread;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "handler":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/yanzhenjie/andserver/website/BasicWebsite;->getHttpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yanzhenjie/andserver/RequestHandler;

    invoke-direct {v6, v3}, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;-><init>(Lcom/yanzhenjie/andserver/RequestHandler;)V

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    goto :goto_0

    .line 150
    .end local v0    # "handler":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    .local v2, "websiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    iget-object v3, p0, Lcom/yanzhenjie/andserver/CoreThread;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    invoke-interface {v3, v2}, Lcom/yanzhenjie/andserver/website/WebSite;->onRegister(Ljava/util/Map;)V

    .line 154
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 155
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .restart local v0    # "handler":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/yanzhenjie/andserver/website/BasicWebsite;->getHttpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yanzhenjie/andserver/RequestHandler;

    invoke-direct {v6, v3}, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;-><init>(Lcom/yanzhenjie/andserver/RequestHandler;)V

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    goto :goto_1

    .line 160
    .end local v0    # "handler":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    :cond_1
    const-string v3, "ServerStatusReceiver"

    const-string v4, " registerRequestHandler method inner end..."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-object v1
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/yanzhenjie/andserver/CoreThread;->isLoop:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 183
    const-string v8, "ServerStatusReceiver"

    const-string v9, "CoreThread,run..."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/CoreThread;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 186
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "ServerStatusReceiver"

    const-string v9, "createHttpParams........"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/CoreThread;->createHttpProcessor()Lorg/apache/http/protocol/HttpProcessor;

    move-result-object v2

    .line 190
    .local v2, "httpProcessor":Lorg/apache/http/protocol/HttpProcessor;
    const-string v8, "ServerStatusReceiver"

    const-string v9, "createHttpProcessor...."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/CoreThread;->registerRequestHandler()Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    move-result-object v0

    .line 195
    .local v0, "handlerRegistry":Lorg/apache/http/protocol/HttpRequestHandlerResolver;
    const-string v8, "ServerStatusReceiver"

    const-string v9, "registerRequestHandler......"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, v1, v2, v0}, Lcom/yanzhenjie/andserver/CoreThread;->createHttpService(Lorg/apache/http/params/HttpParams;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpRequestHandlerResolver;)Lorg/apache/http/protocol/HttpService;

    move-result-object v3

    .line 200
    .local v3, "httpService":Lorg/apache/http/protocol/HttpService;
    const-string v8, "ServerStatusReceiver"

    const-string v9, "createHttpService......"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :try_start_0
    const-string v8, "ServerStatusReceiver"

    const-string v9, "ServerSocket,new start..."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v8, Ljava/net/ServerSocket;

    invoke-direct {v8}, Ljava/net/ServerSocket;-><init>()V

    iput-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    .line 205
    const-string v8, "ServerStatusReceiver"

    const-string v9, "ServerSocket new end......"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    const-string v8, "ServerStatusReceiver"

    const-string v9, "ServerSocket,bind start,currentThread:%s,mPort:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/yanzhenjie/andserver/CoreThread;->mPort:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget v10, p0, Lcom/yanzhenjie/andserver/CoreThread;->mPort:I

    invoke-direct {v9, v10}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 210
    const-string v8, "ServerStatusReceiver"

    const-string v9, "CoreThread,ServerSocket bind end,mPort:%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/yanzhenjie/andserver/CoreThread;->mPort:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    if-eqz v8, :cond_0

    .line 224
    invoke-static {}, Lcom/yanzhenjie/andserver/util/Executors;->getInstance()Lcom/yanzhenjie/andserver/util/Executors;

    move-result-object v8

    new-instance v9, Lcom/yanzhenjie/andserver/CoreThread$2;

    invoke-direct {v9, p0}, Lcom/yanzhenjie/andserver/CoreThread$2;-><init>(Lcom/yanzhenjie/andserver/CoreThread;)V

    invoke-virtual {v8, v9}, Lcom/yanzhenjie/andserver/util/Executors;->handler(Ljava/lang/Runnable;)V

    .line 232
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->isLoop:Z

    .line 234
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->isLoop:Z

    if-eqz v8, :cond_3

    .line 235
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v8}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 236
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    .line 237
    .local v7, "socket":Ljava/net/Socket;
    new-instance v6, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v6}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 238
    .local v6, "serverConnection":Lorg/apache/http/impl/DefaultHttpServerConnection;
    invoke-virtual {v6, v7, v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 241
    new-instance v5, Lcom/yanzhenjie/andserver/HandleRequestThread;

    invoke-direct {v5, p0, v3, v6}, Lcom/yanzhenjie/andserver/HandleRequestThread;-><init>(Lcom/yanzhenjie/andserver/CoreThread;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    .line 242
    .local v5, "requestTask":Lcom/yanzhenjie/andserver/HandleRequestThread;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/yanzhenjie/andserver/HandleRequestThread;->setDaemon(Z)V

    .line 243
    invoke-static {}, Lcom/yanzhenjie/andserver/util/Executors;->getInstance()Lcom/yanzhenjie/andserver/util/Executors;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/yanzhenjie/andserver/util/Executors;->executorService(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    .end local v5    # "requestTask":Lcom/yanzhenjie/andserver/HandleRequestThread;
    .end local v6    # "serverConnection":Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v7    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v4

    .line 247
    .local v4, "ignored":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    .line 251
    .end local v4    # "ignored":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 211
    :catch_1
    move-exception v4

    .line 212
    .local v4, "ignored":Ljava/io/IOException;
    :try_start_4
    iget-object v8, p0, Lcom/yanzhenjie/andserver/CoreThread;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    if-eqz v8, :cond_2

    .line 213
    invoke-static {}, Lcom/yanzhenjie/andserver/util/Executors;->getInstance()Lcom/yanzhenjie/andserver/util/Executors;

    move-result-object v8

    new-instance v9, Lcom/yanzhenjie/andserver/CoreThread$1;

    invoke-direct {v9, p0, v4}, Lcom/yanzhenjie/andserver/CoreThread$1;-><init>(Lcom/yanzhenjie/andserver/CoreThread;Ljava/io/IOException;)V

    invoke-virtual {v8, v9}, Lcom/yanzhenjie/andserver/util/Executors;->handler(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    goto :goto_1

    .end local v4    # "ignored":Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    throw v8
.end method

.method shutdown()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 258
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/yanzhenjie/andserver/CoreThread;->isLoop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/yanzhenjie/andserver/CoreThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/CoreThread;->interrupt()V

    .line 265
    iget-object v1, p0, Lcom/yanzhenjie/andserver/CoreThread;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    if-eqz v1, :cond_1

    .line 266
    invoke-static {}, Lcom/yanzhenjie/andserver/util/Executors;->getInstance()Lcom/yanzhenjie/andserver/util/Executors;

    move-result-object v1

    new-instance v2, Lcom/yanzhenjie/andserver/CoreThread$3;

    invoke-direct {v2, p0}, Lcom/yanzhenjie/andserver/CoreThread$3;-><init>(Lcom/yanzhenjie/andserver/CoreThread;)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/andserver/util/Executors;->handler(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    :cond_1
    :goto_1
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerStatusReceiver"

    const-string v2, "e:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
