.class public Lcom/nostra13/universalimageloader/core/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/c/a;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/nostra13/universalimageloader/core/assist/c;

.field protected final c:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
    .locals 1
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/nostra13/universalimageloader/core/c/c;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p3, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageSize must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaleType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/c/c;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/c/c;->b:Lcom/nostra13/universalimageloader/core/assist/c;

    .line 50
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/c/c;->c:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c/c;->b:Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/c;->a()I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c/c;->b:Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/c;->b()I

    move-result v0

    return v0
.end method

.method public c()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c/c;->c:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
