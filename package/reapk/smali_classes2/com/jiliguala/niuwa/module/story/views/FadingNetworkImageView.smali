.class public Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;
.super Lcom/android/volley/toolbox/NetworkImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME_MS:I = 0xfa


# instance fields
.field private mListener:Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;

.field private mShouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mShouldAnimate:Z

    if-eqz v2, :cond_2

    .line 50
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v2, v6

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 53
    .local v1, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 60
    .end local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mListener:Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mListener:Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;

    invoke-interface {v2, p0}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;->onImageLoaded(Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;)V

    .line 69
    :cond_1
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mShouldAnimate:Z

    goto :goto_0

    .line 57
    :cond_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/android/volley/toolbox/k;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p2, p1, v0, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mShouldAnimate:Z

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V

    .line 89
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/k;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/android/volley/toolbox/k;
    .param p3, "shouldAnimate"    # Z

    .prologue
    .line 81
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mShouldAnimate:Z

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V

    .line 83
    return-void
.end method

.method public setOnImageLoadedListener(Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mListener:Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView$OnImageLoadedListener;

    .line 93
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .param p1, "shouldAnimate"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/views/FadingNetworkImageView;->mShouldAnimate:Z

    .line 41
    return-void
.end method
