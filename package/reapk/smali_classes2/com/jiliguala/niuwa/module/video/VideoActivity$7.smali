.class Lcom/jiliguala/niuwa/module/video/VideoActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->onUpdateRenderIcon(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->a:Z

    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->b:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2437
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->a:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2438
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->c:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2439
    return-void

    :cond_0
    move v0, v2

    .line 2435
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2437
    goto :goto_1
.end method
