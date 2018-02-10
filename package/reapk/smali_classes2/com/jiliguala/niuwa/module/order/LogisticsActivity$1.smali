.class Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->access$102(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;)Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->access$200(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->access$000(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a:Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->access$000(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V

    .line 67
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;->a(Lcom/jiliguala/niuwa/logic/network/json/LogisticsTemplate;)V

    return-void
.end method
