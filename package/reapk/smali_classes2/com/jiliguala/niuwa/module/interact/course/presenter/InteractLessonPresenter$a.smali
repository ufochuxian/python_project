.class Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 916
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 917
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 918
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->showScoreView()V

    .line 924
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 934
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 936
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$700(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$800(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 937
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 938
    .local v14, "videoWidth":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 939
    .local v11, "videoHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    move-object/from16 v0, v16

    invoke-interface {v0, v14, v11}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onPrepareAdjustVideoSize(II)V

    .line 942
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$900(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V

    .line 953
    .end local v11    # "videoHeight":I
    .end local v14    # "videoWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-result-object v10

    .line 954
    .local v10, "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    sget-object v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_5

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v4

    .line 956
    .local v4, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v4, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->showInteractLayer(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;)V

    .line 961
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1102(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;J)J

    .line 962
    const/16 v16, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->hasMessages(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 963
    const/16 v16, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 965
    :cond_3
    const/16 v16, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 944
    .end local v4    # "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    .end local v10    # "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    move-result-object v16

    const/16 v17, 0x1000

    invoke-virtual/range {v16 .. v17}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 945
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 946
    .local v15, "width":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 947
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    move-result-object v16

    const/16 v17, 0x1000

    invoke-virtual/range {v16 .. v17}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 948
    move-object/from16 v0, p1

    iput v15, v0, Landroid/os/Message;->arg1:I

    .line 949
    move-object/from16 v0, p1

    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    move-result-object v16

    const-wide/16 v18, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 968
    .end local v5    # "height":I
    .end local v15    # "width":I
    .restart local v10    # "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1102(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;J)J

    .line 969
    const/16 v16, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 971
    sget-object v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->INTERACT_RESULT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_0

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a()V

    goto/16 :goto_0

    .line 979
    .end local v10    # "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->hideTransition()V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    const-string v17, "timeout"

    invoke-interface/range {v16 .. v17}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onGainResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)J

    move-result-wide v12

    .line 988
    .local v12, "timeOutDuration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1300(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)J

    move-result-wide v6

    .line 990
    .local v6, "interactDur":J
    const/4 v9, 0x0

    .line 991
    .local v9, "progress":I
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_6

    .line 992
    long-to-float v0, v6

    move/from16 v16, v0

    long-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    const/high16 v17, 0x447a0000    # 1000.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v9, v0

    .line 995
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->updateTimeOutProgress(I)V

    .line 997
    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-lt v9, v0, :cond_7

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    const-string v17, "timeout"

    invoke-interface/range {v16 .. v17}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onGainResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    :cond_7
    const/16 v16, 0x1002

    const-wide/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1009
    .end local v6    # "interactDur":J
    .end local v9    # "progress":I
    .end local v12    # "timeOutDuration":J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$100(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayOpening()V

    goto/16 :goto_0

    .line 1012
    :cond_8
    const/16 v16, 0x1004

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 1013
    const/16 v16, 0x1004

    const-wide/16 v18, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1018
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$100(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .line 1019
    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$800(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-result-object v16

    sget-object v17, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1021
    const/16 v16, 0x1004

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1027
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayInLstState()V

    goto/16 :goto_0

    .line 1031
    :cond_a
    const/16 v16, 0x1003

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 1032
    const/16 v16, 0x1003

    const-wide/16 v18, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1036
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1037
    .local v8, "jumpId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1400(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->removeMaskAllView()V

    goto/16 :goto_0

    .line 1043
    .end local v8    # "jumpId":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onRquestInteractScripitError()V

    goto/16 :goto_0

    .line 1046
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->a:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$1500(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V

    goto/16 :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
