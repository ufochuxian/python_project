.class Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->requestServerAndLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/YzData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V
    .locals 2
    .param p1, "yzData"    # Lcom/jiliguala/niuwa/logic/network/json/YzData;

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadErrorPage()V

    .line 516
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;->a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V

    return-void
.end method
