.class Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V
    .locals 2
    .param p1, "courseEntranceTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    .prologue
    .line 96
    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;->onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V

    .line 92
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V

    return-void
.end method
