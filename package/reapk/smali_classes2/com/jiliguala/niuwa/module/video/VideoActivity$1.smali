.class Lcom/jiliguala/niuwa/module/video/VideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/r/b;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/r/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->a:Lcom/jiliguala/niuwa/logic/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "selected"    # I

    .prologue
    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Value"

    if-nez p1, :cond_1

    const-string v1, "unlimited"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Time Control"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->a:Lcom/jiliguala/niuwa/logic/r/b;

    sget-object v2, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/r/b;->b(I)V

    .line 442
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->a:Lcom/jiliguala/niuwa/logic/r/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/r/b;->a(Z)V

    .line 443
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->start()V

    .line 448
    :cond_0
    return-void

    .line 437
    :cond_1
    sget-object v1, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    aget v1, v1, p1

    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method
