.class public Lorg/chromium/content/browser/input/HandleViewResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CENTER_HANDLE_ATTRS:[I

.field private static final HANDLE_HORIZONTAL_PADDING_RATIO:F = 0.25f

.field private static final LEFT_HANDLE_ATTRS:[I

.field private static final RIGHT_HANDLE_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-class v0, Lorg/chromium/content/browser/input/HandleViewResources;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/HandleViewResources;->$assertionsDisabled:Z

    .line 30
    new-array v0, v1, [I

    const v3, 0x10102c5

    aput v3, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    .line 34
    new-array v0, v1, [I

    const v3, 0x10102c7

    aput v3, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    .line 38
    new-array v0, v1, [I

    const v1, 0x10102c6

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCenterHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .prologue
    const/4 v7, 0x0

    .line 72
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 75
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    sget-boolean v6, Lorg/chromium/content/browser/input/HandleViewResources;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 77
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 78
    .local v5, "width":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 79
    .local v4, "height":I
    invoke-static {v5, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    .local v1, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v7, v7, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    const/16 v6, 0x42

    const/16 v7, 0x85

    const/16 v8, 0xf3

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    return-object v1
.end method

.method private static getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-object v1

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHandleHorizontalPaddingRatio()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 93
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private static getLeftHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getRightHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
