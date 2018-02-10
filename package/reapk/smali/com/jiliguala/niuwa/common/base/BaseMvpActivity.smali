.class public abstract Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/jiliguala/niuwa/common/base/d",
        "<TU;>;U::",
        "Lcom/jiliguala/niuwa/common/base/e;",
        ">",
        "Landroid/support/v4/app/FragmentActivity;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/jiliguala/niuwa/common/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected mSubscriptions:Lrx/i/b;

.field private mUi:Lcom/jiliguala/niuwa/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 16
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mSubscriptions:Lrx/i/b;

    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    return-object v0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method protected abstract getUi()Lcom/jiliguala/niuwa/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mSubscriptions:Lrx/i/b;

    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->createPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jiliguala/niuwa/common/base/d;->onAttachUi(Lcom/jiliguala/niuwa/common/base/e;Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/base/d;->onDetachUi(Lcom/jiliguala/niuwa/common/base/e;)V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 45
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;, "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity<TP;TU;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->b()V

    .line 53
    return-void
.end method
