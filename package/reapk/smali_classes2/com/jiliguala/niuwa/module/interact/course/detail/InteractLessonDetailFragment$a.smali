.class Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    .line 837
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 838
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 839
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 846
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->hideVideoPlayPauseBtn()V

    goto :goto_0

    .line 849
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->access$300(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 852
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->setBtnValue()V

    goto :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
