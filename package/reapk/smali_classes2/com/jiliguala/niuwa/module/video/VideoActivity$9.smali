.class Lcom/jiliguala/niuwa/module/video/VideoActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onRenderPlayStart()V
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
    .line 2480
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2484
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2490
    :cond_0
    :goto_0
    return-void

    .line 2487
    :catch_0
    move-exception v0

    .line 2488
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
