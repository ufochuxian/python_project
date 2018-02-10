.class public Lcom/nostra13/universalimageloader/core/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/b/b$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Integer;

.field protected final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/b/b;-><init>(Ljava/lang/Integer;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "strokeColor"    # Ljava/lang/Integer;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/b/b;-><init>(Ljava/lang/Integer;F)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;F)V
    .locals 0
    .param p1, "strokeColor"    # Ljava/lang/Integer;
    .param p2, "strokeWidth"    # F

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/b/b;->a:Ljava/lang/Integer;

    .line 60
    iput p2, p0, Lcom/nostra13/universalimageloader/core/b/b;->b:F

    .line 61
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 65
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/c/b;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/b$a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/b;->a:Ljava/lang/Integer;

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/b;->b:F

    invoke-direct {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/b/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 70
    return-void
.end method
