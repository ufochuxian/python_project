.class Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshStoryLesson()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->access$302(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;)Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    .line 164
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->access$200(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    .line 157
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;->a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    return-void
.end method
