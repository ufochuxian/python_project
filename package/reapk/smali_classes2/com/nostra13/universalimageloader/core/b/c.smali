.class public Lcom/nostra13/universalimageloader/core/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/b/a;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(IZZZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0
    .param p1, "durationMillis"    # I
    .param p2, "animateFromNetwork"    # Z
    .param p3, "animateFromDisk"    # Z
    .param p4, "animateFromMemory"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/nostra13/universalimageloader/core/b/c;->a:I

    .line 56
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:Z

    .line 57
    iput-boolean p3, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Z

    .line 58
    iput-boolean p4, p0, Lcom/nostra13/universalimageloader/core/b/c;->d:Z

    .line 59
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 4
    .param p0, "imageView"    # Landroid/view/View;
    .param p1, "durationMillis"    # I

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 81
    .local v0, "fadeImage":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 82
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .end local v0    # "fadeImage":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 63
    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/Bitmap;)Z

    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-ne p3, v0, :cond_3

    .line 68
    :cond_2
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->a:I

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/b/c;->a(Landroid/view/View;I)V

    .line 70
    :cond_3
    return-void
.end method
