.class public abstract Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final NO_LAYOUT:I


# instance fields
.field public index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutKind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    const/4 v5, -0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->index:I

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "layoutResId":I
    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne p2, v4, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->getLeftLayout()I

    move-result v1

    .line 42
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 43
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "pageLayout":Landroid/view/View;
    sget-boolean v4, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 36
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "pageLayout":Landroid/view/View;
    :cond_1
    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne p2, v4, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->getRightLayout()I

    move-result v1

    goto :goto_0

    .line 38
    :cond_2
    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->COMBINED:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne p2, v4, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->getPortraitLayout()I

    move-result v1

    goto :goto_0

    .line 46
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "pageLayout":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->addView(Landroid/view/View;)V

    .line 52
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "pageLayout":Landroid/view/View;
    :goto_1
    return-void

    .line 48
    :cond_4
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    .local v3, "placeholder":Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p0, v3, v5, v5}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->addView(Landroid/view/View;II)V

    goto :goto_1
.end method

.method protected static recycle(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 62
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 65
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract getLeftLayout()I
.end method

.method protected abstract getPortraitLayout()I
.end method

.method protected abstract getRightLayout()I
.end method

.method public onAttach()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public shouldPillarbox()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method
