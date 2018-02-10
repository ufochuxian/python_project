.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->addScoreView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->b:I

    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->c:Z

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
    .line 647
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->h()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 648
    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$400(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

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

    .line 650
    .local v0, "dst":I
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->c:Z

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$400(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$500(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Landroid/view/View;I)V

    .line 663
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 664
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$800(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 668
    :goto_1
    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$400(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgress(F)V

    .line 654
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$600(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    .line 655
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->showNextButton()V

    .line 656
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    new-instance v2, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7$1;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;->d:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$800(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
