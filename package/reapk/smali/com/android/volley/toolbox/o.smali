.class public abstract Lcom/android/volley/toolbox/o;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "utf-8"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Lcom/android/volley/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/k$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/o;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<TT;>;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<TT;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 59
    iput-object p4, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/k$b;

    .line 60
    iput-object p3, p0, Lcom/android/volley/toolbox/o;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestBody"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<TT;>;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    .local p3, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<TT;>;"
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/k$b;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/k$b;

    invoke-interface {v0, p1}, Lcom/android/volley/k$b;->onResponse(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public getBody()[B
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/o;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-object v1

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/volley/toolbox/o;->c:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/volley/toolbox/o;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "utf-8"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/n;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    sget-object v0, Lcom/android/volley/toolbox/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinish()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/android/volley/toolbox/o;, "Lcom/android/volley/toolbox/o<TT;>;"
    invoke-super {p0}, Lcom/android/volley/Request;->onFinish()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/k$b;

    .line 67
    return-void
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
