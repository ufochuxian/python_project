.class public Lcom/nostra13/universalimageloader/core/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/b/d$a;
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cornerRadiusPixels"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/b/d;-><init>(II)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cornerRadiusPixels"    # I
    .param p2, "marginPixels"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/nostra13/universalimageloader/core/b/d;->a:I

    .line 52
    iput p2, p0, Lcom/nostra13/universalimageloader/core/b/d;->b:I

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 57
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/c/b;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/d$a;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/d;->a:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/d;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/b/d$a;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 62
    return-void
.end method
