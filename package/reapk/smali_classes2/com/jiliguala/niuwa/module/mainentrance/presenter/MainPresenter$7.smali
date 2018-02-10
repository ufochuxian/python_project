.class Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->postDataToServer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;",
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
    .line 539
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->reportSubscribeDataToServerSuccess()V

    .line 558
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 548
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;->a(Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;)V

    return-void
.end method
