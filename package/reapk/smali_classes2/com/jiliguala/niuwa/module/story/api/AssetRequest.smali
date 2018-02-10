.class public Lcom/jiliguala/niuwa/module/story/api/AssetRequest;
.super Lcom/jiliguala/niuwa/module/story/api/BaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/story/api/BaseRequest",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/k$b",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p3, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            "Lcom/android/volley/k$b",
            "<[B>;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<[B>;"
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p3}, Lcom/jiliguala/niuwa/module/story/api/BaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 19
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;->mListener:Lcom/android/volley/k$b;

    .line 26
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1
    .param p1, "response"    # [B

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;->mListener:Lcom/android/volley/k$b;

    invoke-interface {v0, p1}, Lcom/android/volley/k$b;->onResponse(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 2
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/k;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;

    move-result-object v0

    return-object v0
.end method
