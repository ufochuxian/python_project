.class Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->requestQrCodeUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->c:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;)V
    .locals 4
    .param p1, "qrCodeUrlTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->c:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;->qr_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->generateQrCodeBmp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->c:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;->a(Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;)V

    return-void
.end method
