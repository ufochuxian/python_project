.class Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getYouzanToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/f",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;",
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
    .line 289
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;)V
    .locals 2
    .param p1, "yzData"    # Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;

    if-eqz v1, :cond_0

    .line 303
    new-instance v0, Lcom/youzan/androidsdk/g;

    invoke-direct {v0}, Lcom/youzan/androidsdk/g;-><init>()V

    .line 304
    .local v0, "token":Lcom/youzan/androidsdk/g;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/g;->a(Ljava/lang/String;)V

    .line 305
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;->cookie_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/g;->b(Ljava/lang/String;)V

    .line 306
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate$Data;->cookie_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/g;->c(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/youzan/androidsdk/e;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 308
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    .line 310
    .end local v0    # "token":Lcom/youzan/androidsdk/g;
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 298
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;->a(Lcom/jiliguala/niuwa/logic/network/json/YzTokenTemplate;)V

    return-void
.end method
