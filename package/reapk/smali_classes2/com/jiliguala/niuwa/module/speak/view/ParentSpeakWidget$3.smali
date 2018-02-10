.class Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addScoreView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->b:I

    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$500(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->h()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 517
    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$600(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

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

    .line 519
    .local v0, "dst":I
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->c:Z

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$600(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$700(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Landroid/view/View;I)V

    .line 532
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 533
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1000(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 537
    :goto_1
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$600(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgress(F)V

    .line 523
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$800(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    .line 524
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->showNextButton()V

    .line 525
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    new-instance v2, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3$1;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;->d:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1000(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
