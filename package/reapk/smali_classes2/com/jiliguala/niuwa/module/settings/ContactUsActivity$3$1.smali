.class Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;Ljava/io/File;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3$1;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 109
    return-void
.end method
