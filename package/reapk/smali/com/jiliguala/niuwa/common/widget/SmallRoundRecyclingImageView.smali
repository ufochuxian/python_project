.class public Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/common/widget/RoundRecyclingImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a()V

    .line 47
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 106
    if-eqz p1, :cond_0

    move-object v9, p1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_0
    return-void

    :cond_1
    move-object v9, p1

    .line 111
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 113
    .local v3, "original":Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800db

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800d8

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    .line 119
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 120
    .local v8, "width":I
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 121
    .local v1, "height":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 122
    .local v5, "original_w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 125
    .local v4, "original_h":I
    if-ne v8, v5, :cond_3

    if-eq v4, v1, :cond_5

    .line 126
    :cond_3
    const/4 v9, 0x0

    invoke-static {v3, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 127
    .local v2, "origin_New":Landroid/graphics/Bitmap;
    if-eq v2, v3, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 128
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_4
    move-object v3, v2

    .line 133
    .end local v2    # "origin_New":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 134
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 136
    const-string v9, "#00fff000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 138
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 139
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 146
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    iput-object v13, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->b:Landroid/graphics/Bitmap;

    .line 149
    :cond_6
    invoke-virtual {v0, v3, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_7

    .line 154
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    iput-object v13, p0, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->c:Landroid/graphics/Bitmap;

    .line 157
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 159
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p1, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 162
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 55
    instance-of v3, p0, Lcom/jiliguala/niuwa/logic/image/c;

    if-eqz v3, :cond_1

    .line 57
    check-cast p0, Lcom/jiliguala/niuwa/logic/image/c;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/c;->a(Z)V

    .line 65
    :cond_0
    return-void

    .line 58
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 60
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 61
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 82
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 100
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 102
    return-void
.end method
