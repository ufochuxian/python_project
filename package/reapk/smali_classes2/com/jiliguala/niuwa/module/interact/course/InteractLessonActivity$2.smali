.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->startProgressAnim(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nineoldandroids/a/l;

.field final synthetic c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/view/View;Lcom/nineoldandroids/a/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->b:Lcom/nineoldandroids/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 707
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/16 v1, 0x1002

    .line 696
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->removeMessages(I)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$400(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$300(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 701
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->b:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->i()V

    .line 702
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 712
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;->c:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessage(I)Z

    .line 692
    return-void
.end method
