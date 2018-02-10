.class public abstract Lcom/jiliguala/niuwa/module/story/api/BaseRequest;
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


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/k$a;)V
    .locals 4
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/volley/k$a;

    .prologue
    .line 16
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/BaseRequest;, "Lcom/jiliguala/niuwa/module/story/api/BaseRequest<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 18
    new-instance v0, Lcom/android/volley/d;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/d;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/api/BaseRequest;->setRetryPolicy(Lcom/android/volley/m;)Lcom/android/volley/Request;

    .line 20
    return-void
.end method
