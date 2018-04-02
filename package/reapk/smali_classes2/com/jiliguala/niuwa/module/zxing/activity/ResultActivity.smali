.class public Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mResultImage:Landroid/widget/ImageView;

.field private mResultText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v7, 0x7f0b0045

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 27
    .local v2, "extras":Landroid/os/Bundle;
    const v7, 0x7f09045a

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->mResultImage:Landroid/widget/ImageView;

    .line 28
    const v7, 0x7f09045b

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->mResultText:Landroid/widget/TextView;

    .line 30
    if-eqz v2, :cond_1

    .line 31
    const-string v7, "width"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 32
    .local v6, "width":I
    const-string v7, "height"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 34
    .local v3, "height":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v4, "lps":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v10, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v10, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->mResultImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const-string v7, "result"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "result":Ljava/lang/String;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->mResultText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "barcode":Landroid/graphics/Bitmap;
    const-string v7, "barcode_bitmap"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 46
    .local v1, "compressedBitmap":[B
    if-eqz v1, :cond_0

    .line 47
    const/4 v7, 0x0

    array-length v8, v1

    const/4 v9, 0x0

    invoke-static {v1, v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    :cond_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/zxing/activity/ResultActivity;->mResultImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    .end local v1    # "compressedBitmap":[B
    .end local v3    # "height":I
    .end local v4    # "lps":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "width":I
    :cond_1
    return-void
.end method
