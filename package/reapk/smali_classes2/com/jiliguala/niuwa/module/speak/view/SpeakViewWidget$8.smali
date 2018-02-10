.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->startProgressAnim(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nineoldandroids/a/l;

.field final synthetic c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Landroid/view/View;Lcom/nineoldandroids/a/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->b:Lcom/nineoldandroids/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 746
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/16 v1, 0x1002

    .line 732
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$900(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$900(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->removeMessages(I)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$1100(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$1000(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 737
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->b:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->i()V

    .line 738
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$1000(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onEndOfProgressAnim(I)V

    .line 741
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 751
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$900(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->sendEmptyMessage(I)Z

    .line 724
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setEnabled(Z)V

    .line 725
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;->c:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onStartProgressAnim()V

    .line 728
    :cond_0
    return-void
.end method
