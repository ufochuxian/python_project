.class public abstract Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/jiliguala/niuwa/common/base/d",
        "<TU;>;U::",
        "Lcom/jiliguala/niuwa/common/base/e;",
        ">",
        "Lcom/jiliguala/niuwa/common/base/c",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

.field protected mSubscriptions:Lrx/i/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 17
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    return-void
.end method


# virtual methods
.method public getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mCallBack:Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    return-object v0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onAttach(Landroid/content/Context;)V

    .line 45
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mCallBack:Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    .line 48
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;, "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment<TT;TU;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->mSubscriptions:Lrx/i/b;

    .line 33
    return-void
.end method
