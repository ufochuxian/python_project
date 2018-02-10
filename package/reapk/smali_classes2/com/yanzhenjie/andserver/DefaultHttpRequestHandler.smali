.class public Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# instance fields
.field private mRequestHandler:Lcom/yanzhenjie/andserver/RequestHandler;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/andserver/RequestHandler;)V
    .locals 0
    .param p1, "requestHandler"    # Lcom/yanzhenjie/andserver/RequestHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;->mRequestHandler:Lcom/yanzhenjie/andserver/RequestHandler;

    .line 36
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-interface {p2, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "Server"

    const-string v1, "AndServer"

    invoke-interface {p2, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultHttpRequestHandler;->mRequestHandler:Lcom/yanzhenjie/andserver/RequestHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/RequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 44
    return-void
.end method
