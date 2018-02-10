.class final Lcom/nineoldandroids/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method static a(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 187
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollX"    # I

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    .line 251
    return-void
.end method

.method static b(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method static b(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotX"    # F

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 195
    return-void
.end method

.method static b(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollY"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 259
    return-void
.end method

.method static c(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method static c(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotY"    # F

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 203
    return-void
.end method

.method static d(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotation"    # F

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 211
    return-void
.end method

.method static e(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method static e(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotationX"    # F

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 219
    return-void
.end method

.method static f(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method static f(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotationY"    # F

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 227
    return-void
.end method

.method static g(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method static g(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scaleX"    # F

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 235
    return-void
.end method

.method static h(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method static h(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scaleY"    # F

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 243
    return-void
.end method

.method static i(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static i(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 267
    return-void
.end method

.method static j(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static j(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationY"    # F

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 275
    return-void
.end method

.method static k(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method static k(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 283
    return-void
.end method

.method static l(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method static l(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "y"    # F

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 291
    return-void
.end method

.method static m(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method static n(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method
