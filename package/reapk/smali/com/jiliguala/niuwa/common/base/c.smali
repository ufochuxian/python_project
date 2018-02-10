.class public abstract Lcom/jiliguala/niuwa/common/base/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/jiliguala/niuwa/common/base/d",
        "<TU;>;U::",
        "Lcom/jiliguala/niuwa/common/base/e;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/jiliguala/niuwa/common/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mUi:Lcom/jiliguala/niuwa/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/c;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    return-object v0
.end method

.method protected abstract getUi()Lcom/jiliguala/niuwa/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 53
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/c;->createPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/c;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/c;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/c;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/base/d;->onAttachUi(Lcom/jiliguala/niuwa/common/base/e;Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 65
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/c;->mPresenter:Lcom/jiliguala/niuwa/common/base/d;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/base/c;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/base/d;->onDetachUi(Lcom/jiliguala/niuwa/common/base/e;)V

    .line 60
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 48
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/c;, "Lcom/jiliguala/niuwa/common/base/c<TT;TU;>;"
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
