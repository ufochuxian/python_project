.class Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doReAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 1
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 490
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 492
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$308(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)I

    .line 478
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doReAuth()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const-string v0, "\u8ba4\u8bc1\u5931\u8d25,\u8bf7\u91cd\u65b0\u767b\u9646"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$500(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 466
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
