.class Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/PicCropActivity;
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
    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 56
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(I)V

    goto :goto_0

    .line 59
    :sswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->croppedImage:Landroid/graphics/Bitmap;

    .line 60
    new-instance v1, Lcom/jiliguala/niuwa/common/util/c$b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/util/c$b;-><init>()V

    .line 61
    .local v1, "config":Lcom/jiliguala/niuwa/common/util/c$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    .line 62
    iput-boolean v3, v1, Lcom/jiliguala/niuwa/common/util/c$b;->g:Z

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/jiliguala/niuwa/common/util/c$b;->h:Z

    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/common/util/c;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {v0, v2, v1}, Lcom/jiliguala/niuwa/common/util/c;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/util/c$b;)V

    .line 65
    .local v0, "bmpSaveTask":Lcom/jiliguala/niuwa/common/util/c;
    new-array v2, v3, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->croppedImage:Landroid/graphics/Bitmap;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .end local v0    # "bmpSaveTask":Lcom/jiliguala/niuwa/common/util/c;
    :cond_0
    move v2, v4

    .line 63
    goto :goto_1

    .line 68
    .end local v1    # "config":Lcom/jiliguala/niuwa/common/util/c$b;
    :sswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900d7 -> :sswitch_2
        0x7f0900dc -> :sswitch_1
        0x7f0900e0 -> :sswitch_0
    .end sparse-switch
.end method
