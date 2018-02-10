.class public abstract Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;
.super Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;->tryFinishWithoutAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->runWhenAuthenticated(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract beginAuthenticated(Ljava/lang/String;)V
.end method

.method protected tryFinishWithoutAuthentication()Z
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/AuthenticatedLiveDataOperation<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
