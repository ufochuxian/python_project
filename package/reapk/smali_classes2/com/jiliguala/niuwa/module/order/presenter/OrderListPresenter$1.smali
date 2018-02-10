.class Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/h;",
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
    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/h;)V
    .locals 1
    .param p1, "storyEvent"    # Lcom/jiliguala/niuwa/logic/b/a/h;

    .prologue
    .line 38
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshNew()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1019
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/h;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;->a(Lcom/jiliguala/niuwa/logic/b/a/h;)V

    return-void
.end method
