.class Lcom/jiliguala/niuwa/module/video/VideoActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->setControllerEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1339
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1352
    return-void
.end method
