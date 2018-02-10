.class public Lcom/android/volley/toolbox/s;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/k$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 43
    iput-object p3, p0, Lcom/android/volley/toolbox/s;->a:Lcom/android/volley/k$b;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/volley/toolbox/s;-><init>(ILjava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/volley/toolbox/s;->a:Lcom/android/volley/k$b;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/volley/toolbox/s;->a:Lcom/android/volley/k$b;

    invoke-interface {v0, p1}, Lcom/android/volley/k$b;->onResponse(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinish()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/volley/Request;->onFinish()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/s;->a:Lcom/android/volley/k$b;

    .line 61
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 4
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/volley/k;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;

    move-result-object v2

    return-object v2

    .line 75
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
