.class public Lcom/jiliguala/niuwa/common/base/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/jiliguala/niuwa/common/base/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCompositeSubscription:Lrx/i/b;

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
    .line 12
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/d;, "Lcom/jiliguala/niuwa/common/base/d<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscription()Lrx/i/b;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/d;, "Lcom/jiliguala/niuwa/common/base/d<TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mCompositeSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mCompositeSubscription:Lrx/i/b;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mCompositeSubscription:Lrx/i/b;

    return-object v0
.end method

.method public getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/d;, "Lcom/jiliguala/niuwa/common/base/d<TU;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mUi:Lcom/jiliguala/niuwa/common/base/e;

    return-object v0
.end method

.method public onAttachUi(Lcom/jiliguala/niuwa/common/base/e;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/d;, "Lcom/jiliguala/niuwa/common/base/d<TU;>;"
    .local p1, "ui":Lcom/jiliguala/niuwa/common/base/e;, "TU;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/base/d;->mUi:Lcom/jiliguala/niuwa/common/base/e;

    .line 28
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/base/d;->mActivity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public onDetachUi(Lcom/jiliguala/niuwa/common/base/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/jiliguala/niuwa/common/base/d;, "Lcom/jiliguala/niuwa/common/base/d<TU;>;"
    .local p1, "ui":Lcom/jiliguala/niuwa/common/base/e;, "TU;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mUi:Lcom/jiliguala/niuwa/common/base/e;

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/d;->mCompositeSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 37
    return-void
.end method
