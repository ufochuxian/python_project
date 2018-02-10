.class Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getSubscriber()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V
    .locals 3
    .param p1, "interactLessonTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .prologue
    .line 706
    if-eqz p1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$100(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$202(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .line 716
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$302(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 717
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->jumpDict:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$402(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 718
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetEntryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$502(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 720
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getCourseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/db/a;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$602(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Lcom/jiliguala/niuwa/logic/db/daometa/e;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .line 721
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$600(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->showReplayDialog()V

    .line 727
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->dismissLoadingProgress()V

    .line 731
    :cond_1
    return-void

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$102(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Z)Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    move-result-object v0

    const/16 v1, 0x1006

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 691
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V

    return-void
.end method
