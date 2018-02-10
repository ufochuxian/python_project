.class Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->startProgressAnim(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nineoldandroids/a/l;

.field final synthetic c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Landroid/view/View;Lcom/nineoldandroids/a/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->b:Lcom/nineoldandroids/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 619
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/16 v1, 0x1002

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->removeMessages(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 610
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->b:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->i()V

    .line 611
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onEndOfProgressAnim(I)V

    .line 614
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 624
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/4 v2, 0x0

    .line 594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->sendEmptyMessage(I)Z

    .line 596
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$500(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1100(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;->c:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onStartProgressAnim()V

    .line 601
    :cond_0
    return-void
.end method
