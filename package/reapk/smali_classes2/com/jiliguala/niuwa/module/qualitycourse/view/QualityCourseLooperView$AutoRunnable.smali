.class public Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoRunnable"
.end annotation


# static fields
.field public static final DELAY_MILLIS:I = 0x1388


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->isRunning:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$500(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 170
    .local v0, "currentItem":I
    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 173
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$500(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    .end local v0    # "currentItem":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->isRunning:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->isRunning:Z

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$500(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->isRunning:Z

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$500(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
