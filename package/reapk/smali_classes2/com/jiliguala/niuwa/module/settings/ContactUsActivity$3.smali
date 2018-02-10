.class Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->save(Landroid/widget/ImageView;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/d/a;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 93
    .local v2, "qrCodeMediaDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "fileSavePath":Ljava/lang/String;
    const-string v3, "\u53fd\u91cc\u5471\u5566\u516c\u4f17\u53f7"

    invoke-static {p1, v0, v3}, Lcom/jiliguala/niuwa/common/util/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 98
    .local v1, "jlgl":Ljava/io/File;
    const-string v3, "\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    new-instance v4, Landroid/media/MediaScannerConnection;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;

    invoke-direct {v6, p0, v1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;-><init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;Ljava/io/File;)V

    invoke-direct {v4, v5, v6}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->access$002(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection;

    .line 111
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
