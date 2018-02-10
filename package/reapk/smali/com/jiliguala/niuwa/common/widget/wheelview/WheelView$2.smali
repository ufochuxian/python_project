.class Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->b(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->b(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v5, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->b(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->m:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->b(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v4, v0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$2;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v5, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 260
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 265
    return-void
.end method
