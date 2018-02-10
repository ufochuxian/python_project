.class Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestRecommendCourse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;)V
    .locals 1
    .param p1, "recommendCoursePopTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->onRecommendCourseSuccess(Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;)V

    return-void
.end method
