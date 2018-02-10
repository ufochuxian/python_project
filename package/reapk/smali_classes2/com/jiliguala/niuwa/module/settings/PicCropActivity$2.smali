.class Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->decodeBitmap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 190
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x1

    .line 169
    if-nez p3, :cond_0

    .line 170
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$200(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;Z)V

    .line 175
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    const v3, 0x7f090185

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 176
    .local v0, "placeHolder":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    const v4, 0x7f090004

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$002(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    .line 178
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setGuidelines(I)V

    .line 179
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(II)V

    .line 182
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 183
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 163
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    .line 165
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 157
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u4e2d"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$200(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;Z)V

    .line 159
    return-void
.end method
