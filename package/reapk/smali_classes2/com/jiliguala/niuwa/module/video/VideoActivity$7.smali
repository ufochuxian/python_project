.class Lcom/jiliguala/niuwa/module/video/VideoActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->showRenderChooser()V
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
    .line 2415
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderSelected(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 1
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onRenderClicked(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 2424
    return-void
.end method
