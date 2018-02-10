.class Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->requestGoodsDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 2
    .param p1, "goodsDetailTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->intro:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->intro:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;->video:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->access$002(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->fillView(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V

    return-void
.end method
