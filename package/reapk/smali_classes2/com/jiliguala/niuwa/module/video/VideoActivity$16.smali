.class Lcom/jiliguala/niuwa/module/video/VideoActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->showMoreToolsDlg()V
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
    .line 2819
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2822
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v0

    .line 2823
    .local v0, "lastTimeLimitSet":I
    if-eqz p2, :cond_4

    .line 2824
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->start()V

    .line 2830
    :cond_0
    if-lez v0, :cond_2

    .line 2834
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/logic/r/b;->a(Z)V

    .line 2853
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 2854
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2855
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$16$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$16$1;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity$16;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2862
    :cond_1
    return-void

    .line 2835
    :cond_2
    if-nez v0, :cond_3

    .line 2839
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/r/b;->b(I)V

    .line 2840
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/logic/r/b;->a(Z)V

    goto :goto_0

    .line 2842
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/kyleduo/switchbutton/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 2848
    :cond_4
    if-lez v0, :cond_5

    .line 2849
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/r/b;->a(Z)V

    .line 2851
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    goto :goto_0
.end method
