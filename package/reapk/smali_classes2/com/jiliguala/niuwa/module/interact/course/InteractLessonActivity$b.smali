.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 1087
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1088
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 1089
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1004

    .line 1093
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1094
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1128
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1132
    :cond_0
    :goto_1
    return-void

    .line 1096
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1099
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;

    .line 1100
    .local v0, "obj":Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;->a:Landroid/view/View;

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1103
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_1

    .line 1108
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$900(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    .line 1109
    const/16 v1, 0x1002

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1112
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$1000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$1000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1114
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1115
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->removeMessages(I)V

    .line 1117
    :cond_2
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v4, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1121
    :pswitch_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$1000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$1000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1126
    :pswitch_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onExitInteractLesson()V

    goto/16 :goto_0

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
