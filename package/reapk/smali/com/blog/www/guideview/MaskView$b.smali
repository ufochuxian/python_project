.class Lcom/blog/www/guideview/MaskView$b;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blog/www/guideview/MaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x10

.field public static final g:I = 0x20

.field public static final h:I = 0x30

.field public static final i:I = 0x31


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 373
    const/4 v0, 0x4

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->j:I

    .line 374
    const/16 v0, 0x20

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->k:I

    .line 375
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->l:I

    .line 376
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->m:I

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 373
    const/4 v0, 0x4

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->j:I

    .line 374
    const/16 v0, 0x20

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->k:I

    .line 375
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->l:I

    .line 376
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->m:I

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 387
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    const/4 v0, 0x4

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->j:I

    .line 374
    const/16 v0, 0x20

    iput v0, p0, Lcom/blog/www/guideview/MaskView$b;->k:I

    .line 375
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->l:I

    .line 376
    iput v1, p0, Lcom/blog/www/guideview/MaskView$b;->m:I

    .line 388
    return-void
.end method
