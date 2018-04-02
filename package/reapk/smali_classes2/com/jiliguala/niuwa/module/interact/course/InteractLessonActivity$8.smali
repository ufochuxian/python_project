.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addScoreView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iput p2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 818
    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$500(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 820
    .local v0, "dst":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$500(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$600(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/view/View;I)V

    .line 822
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 823
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$700(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$700(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
