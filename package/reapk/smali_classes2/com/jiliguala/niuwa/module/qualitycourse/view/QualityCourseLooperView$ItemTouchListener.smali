.class public Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemTouchListener"
.end annotation


# instance fields
.field private mDownX:I

.field final synthetic this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$200(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->stop()V

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->mDownX:I

    goto :goto_0

    .line 138
    :pswitch_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->mDownX:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$300(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;

    .line 144
    .local v0, "bannerBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$400(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;)V

    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    .end local v0    # "bannerBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$200(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->start()V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;->this$0:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$200(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->start()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
