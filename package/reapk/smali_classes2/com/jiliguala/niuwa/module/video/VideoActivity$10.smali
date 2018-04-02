.class Lcom/jiliguala/niuwa/module/video/VideoActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onRenderPlayConntected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 2498
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2499
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2501
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2506
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$2600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2508
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setControllerEnable(Z)V

    .line 2509
    return-void
.end method
