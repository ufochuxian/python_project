.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hideTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 874
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    return-void
.end method
