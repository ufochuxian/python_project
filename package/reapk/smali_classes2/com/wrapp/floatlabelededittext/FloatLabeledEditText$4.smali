.class Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;


# direct methods
.method constructor <init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "DRAWABLE_LEFT":I
    const/4 v3, 0x1

    .line 246
    .local v3, "DRAWABLE_TOP":I
    const/4 v2, 0x2

    .line 247
    .local v2, "DRAWABLE_RIGHT":I
    const/4 v0, 0x3

    .line 248
    .local v0, "DRAWABLE_BOTTOM":I
    iget-object v5, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v5}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v4, v5, v6

    .line 249
    .local v4, "drRight":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v6}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 252
    iget-object v5, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v5}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const/4 v5, 0x1

    .line 257
    .end local v0    # "DRAWABLE_BOTTOM":I
    .end local v1    # "DRAWABLE_LEFT":I
    .end local v2    # "DRAWABLE_RIGHT":I
    .end local v3    # "DRAWABLE_TOP":I
    .end local v4    # "drRight":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
