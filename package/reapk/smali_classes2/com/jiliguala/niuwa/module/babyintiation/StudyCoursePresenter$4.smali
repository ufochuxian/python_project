.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->switchAge(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/PostResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/PostResult;)V
    .locals 2
    .param p1, "result"    # Lcom/jiliguala/niuwa/logic/network/json/PostResult;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->request(Z)V

    .line 177
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->onError()V

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 170
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/PostResult;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;->a(Lcom/jiliguala/niuwa/logic/network/json/PostResult;)V

    return-void
.end method