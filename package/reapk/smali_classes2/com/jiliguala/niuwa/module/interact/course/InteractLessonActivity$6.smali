.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showReplayDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 776
    :goto_0
    return-void

    .line 768
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 769
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->actionPlayFromRecord()V

    goto :goto_0

    .line 772
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 773
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;->b:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->actionPlayFromStart()V

    goto :goto_0

    .line 766
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method
