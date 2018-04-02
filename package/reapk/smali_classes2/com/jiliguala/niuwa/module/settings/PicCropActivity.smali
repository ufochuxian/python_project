.class public Lcom/jiliguala/niuwa/module/settings/PicCropActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/c$a;


# static fields
.field private static final DEFAULT_ASPECT_RATIO_VALUES:I = 0xa

.field public static final KEY_PATH:Ljava/lang/String; = "pic_path"

.field private static final ROTATE_NINETY_DEGREES:I = 0x5a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field cancelBtn:Landroid/widget/Button;

.field cropBtn:Landroid/widget/Button;

.field croppedImage:Landroid/graphics/Bitmap;

.field private mCropImageView:Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field rotateBtn:Landroid/widget/Button;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mCropImageView:Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;)Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/PicCropActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mCropImageView:Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/PicCropActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->setEnable(Z)V

    return-void
.end method

.method private calFactor(Ljava/lang/String;)F
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 117
    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    .local v7, "scaleFactor":F
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    const/4 v4, 0x0

    .line 122
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v5, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    if-eqz v5, :cond_0

    .line 129
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 133
    :cond_0
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float v1, v8, v9

    .line 134
    .local v1, "amp_h":F
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    div-float v2, v8, v9

    .line 135
    .local v2, "amp_w":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 136
    .local v0, "amp":F
    float-to-int v8, v0

    if-le v8, v10, :cond_1

    .line 137
    div-float/2addr v7, v0

    :cond_1
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move v8, v7

    .line 139
    .end local v0    # "amp":F
    .end local v1    # "amp_h":F
    .end local v2    # "amp_w":F
    :cond_2
    :goto_0
    return v8

    .line 124
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/high16 v8, -0x40800000    # -1.0f

    .line 128
    if-eqz v4, :cond_2

    .line 129
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 128
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v4, :cond_3

    .line 129
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 131
    :cond_3
    throw v8

    .line 128
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 124
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private decodeBitmap(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, "fileUri":Landroid/net/Uri;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    .line 147
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v5, 0x7f0801c0

    .line 149
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    const v5, 0x7f0801c0

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    const/4 v5, 0x0

    .line 150
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    const/4 v5, 0x1

    .line 151
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 152
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 153
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    new-instance v5, Lcom/nostra13/universalimageloader/core/b/f;

    invoke-direct {v5}, Lcom/nostra13/universalimageloader/core/b/f;-><init>()V

    .line 154
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/PicCropActivity;)V

    .line 146
    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v1    # "fileUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->rotateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cropBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 208
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->overridePendingTransition(II)V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 79
    const v3, 0x7f0b0040

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v3, "key_avatar_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    .line 89
    const-string v3, "pic_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_1
    const v3, 0x7f0900e0

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->rotateBtn:Landroid/widget/Button;

    .line 98
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->rotateBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v3, 0x7f0900dc

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cropBtn:Landroid/widget/Button;

    .line 100
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cropBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v3, 0x7f0900d7

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cancelBtn:Landroid/widget/Button;

    .line 102
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->cancelBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->setEnable(Z)V

    .line 106
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->decodeBitmap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method public onPostExecute(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ret"    # I

    .prologue
    const/4 v4, 0x1

    .line 218
    if-ne p3, v4, :cond_5

    .line 219
    const/16 v0, 0x1009

    .line 220
    .local v0, "eventType":I
    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    if-ne v1, v4, :cond_2

    .line 221
    const/16 v0, 0x1009

    .line 227
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    iget v3, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    invoke-direct {v2, p1, v4, v3, v0}, Lcom/jiliguala/niuwa/logic/b/a/g;-><init>(Ljava/lang/String;ZII)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->finish()V

    .line 233
    .end local v0    # "eventType":I
    :cond_1
    :goto_1
    return-void

    .line 222
    .restart local v0    # "eventType":I
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 223
    const/16 v0, 0x1010

    goto :goto_0

    .line 224
    :cond_3
    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 225
    :cond_4
    const/16 v0, 0x1011

    goto :goto_0

    .line 229
    .end local v0    # "eventType":I
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 230
    const-string v1, "\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3\uff0c\u56fe\u7247\u526a\u88c1\u5931\u8d25\uff0c\u8bf7\u6e05\u7406\u540e\u91cd\u8bd5."

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 239
    return-void
.end method
