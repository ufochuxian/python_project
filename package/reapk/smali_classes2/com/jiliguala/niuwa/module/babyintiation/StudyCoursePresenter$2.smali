.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->request(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->a:Z

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;)V
    .locals 4
    .param p1, "babyIntiationTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 82
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    move-object v1, p1

    .line 85
    .local v1, "templete":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;
    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .line 86
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->a:Z

    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->onSuccess(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;Z)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->onError()V

    .line 76
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;)V

    return-void
.end method
