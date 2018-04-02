.class Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


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
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;->b:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;->a:Ljava/lang/String;

    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;->b:Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08018a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/e/c;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;->a(Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
