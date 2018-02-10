.class public abstract Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/andserver/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected requestInvalid(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "The requested resource does not exist."

    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;->requestInvalid(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected requestInvalid(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/16 v0, 0x194

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 53
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 54
    return-void
.end method
