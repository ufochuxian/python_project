.class Lcom/jiliguala/niuwa/module/video/VideoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->showSingleLoopDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    .line 2288
    :cond_0
    return-void
.end method
