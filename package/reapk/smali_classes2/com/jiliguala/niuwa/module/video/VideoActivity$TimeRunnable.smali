.class public Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeRunnable"
.end annotation


# instance fields
.field private mIsRunning:Z

.field final synthetic this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 3420
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3426
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 3427
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3428
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3429
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5269\u4f59\u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/m;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3431
    :cond_0
    const-string v1, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 3432
    .local v0, "videoCurTimeRecord":I
    add-int/lit8 v0, v0, 0x1

    .line 3433
    const-string v1, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 3434
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->c()V

    .line 3435
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    if-lt v0, v1, :cond_3

    .line 3436
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playResetLink()V

    .line 3437
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 3438
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 3440
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    .line 3445
    .end local v0    # "videoCurTimeRecord":I
    :cond_2
    :goto_0
    return-void

    .line 3443
    .restart local v0    # "videoCurTimeRecord":I
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 3449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->mIsRunning:Z

    .line 3450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3451
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 3454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->mIsRunning:Z

    .line 3455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->this$0:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3456
    return-void
.end method
