.class Lcom/makeramen/roundedimageview/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/makeramen/roundedimageview/e;->a()Lcom/squareup/picasso/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/makeramen/roundedimageview/e;


# direct methods
.method constructor <init>(Lcom/makeramen/roundedimageview/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    iget-object v2, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 163
    invoke-static {v2}, Lcom/makeramen/roundedimageview/e;->e(Lcom/makeramen/roundedimageview/e;)Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/d;->a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    iget-object v2, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 164
    invoke-static {v2}, Lcom/makeramen/roundedimageview/e;->d(Lcom/makeramen/roundedimageview/e;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    invoke-static {v3}, Lcom/makeramen/roundedimageview/e;->d(Lcom/makeramen/roundedimageview/e;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    invoke-static {v4}, Lcom/makeramen/roundedimageview/e;->d(Lcom/makeramen/roundedimageview/e;)[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    invoke-static {v5}, Lcom/makeramen/roundedimageview/e;->d(Lcom/makeramen/roundedimageview/e;)[F

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/makeramen/roundedimageview/d;->a(FFFF)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    iget-object v2, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 165
    invoke-static {v2}, Lcom/makeramen/roundedimageview/e;->c(Lcom/makeramen/roundedimageview/e;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/d;->b(F)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    iget-object v2, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 166
    invoke-static {v2}, Lcom/makeramen/roundedimageview/e;->b(Lcom/makeramen/roundedimageview/e;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/d;->a(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    iget-object v2, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 167
    invoke-static {v2}, Lcom/makeramen/roundedimageview/e;->a(Lcom/makeramen/roundedimageview/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/d;->a(Z)Lcom/makeramen/roundedimageview/d;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/makeramen/roundedimageview/d;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    invoke-static {v1}, Lcom/makeramen/roundedimageview/e;->d(Lcom/makeramen/roundedimageview/e;)[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 177
    invoke-static {v1}, Lcom/makeramen/roundedimageview/e;->c(Lcom/makeramen/roundedimageview/e;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 178
    invoke-static {v1}, Lcom/makeramen/roundedimageview/e;->b(Lcom/makeramen/roundedimageview/e;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e$1;->a:Lcom/makeramen/roundedimageview/e;

    .line 179
    invoke-static {v1}, Lcom/makeramen/roundedimageview/e;->a(Lcom/makeramen/roundedimageview/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
