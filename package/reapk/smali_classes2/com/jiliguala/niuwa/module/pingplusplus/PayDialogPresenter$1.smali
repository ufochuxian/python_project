.class Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->reportOrderNoStatusToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 125
    return-void
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$000(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$102(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;J)J

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$200(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$000(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 120
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;->a(Ljava/lang/Void;)V

    return-void
.end method
