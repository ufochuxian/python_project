.class public abstract Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;
.super Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/k$a;
.implements Lcom/android/volley/k$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation",
        "<TT;>;",
        "Lcom/android/volley/k$a;",
        "Lcom/android/volley/k$b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;-><init>()V

    return-void
.end method


# virtual methods
.method protected beginAuthenticated(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 21
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getRequestQueue()Lcom/android/volley/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 22
    return-void
.end method

.method protected abstract makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 32
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation<TT;>;"
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->onError(Ljava/lang/Exception;)V

    .line 33
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->onResult(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
