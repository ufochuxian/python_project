.class public Lcom/jiliguala/niuwa/module/LocalServer/handler/RequestGameHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/andserver/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroid/support/annotation/ae;
        b = 0x13
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation build Landroid/support/annotation/ae;
        b = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "http://192.168.99.218:8080/web-mobile/index.html"

    .line 37
    .local v0, "url":Ljava/lang/String;
    return-void
.end method
