.class public abstract Lcom/jiliguala/niuwa/common/base/a;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# instance fields
.field private mSubscriptions:Lrx/i/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 15
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    return-void
.end method


# virtual methods
.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/support/v4/app/ac;->onDestroy()V

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/base/a;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 32
    return-void
.end method
