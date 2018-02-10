.class Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->generateQrCodeBmp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;->a:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;->a:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/d/a;->m(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "fileSavePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;->a:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->access$000(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jiliguala/niuwa/common/util/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 158
    const-string v1, "\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;->a:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
