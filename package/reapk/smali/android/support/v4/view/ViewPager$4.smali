.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 428
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager$4;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/bw;)Landroid/support/v4/view/bw;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "originalInsets"    # Landroid/support/v4/view/bw;

    .prologue
    .line 435
    .line 436
    invoke-static {p1, p2}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Landroid/support/v4/view/bw;)Landroid/support/v4/view/bw;

    move-result-object v0

    .line 437
    .local v0, "applied":Landroid/support/v4/view/bw;
    invoke-virtual {v0}, Landroid/support/v4/view/bw;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    .end local v0    # "applied":Landroid/support/v4/view/bw;
    :goto_0
    return-object v0

    .line 449
    .restart local v0    # "applied":Landroid/support/v4/view/bw;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager$4;->b:Landroid/graphics/Rect;

    .line 450
    .local v4, "res":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/support/v4/view/bw;->a()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 451
    invoke-virtual {v0}, Landroid/support/v4/view/bw;->b()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 452
    invoke-virtual {v0}, Landroid/support/v4/view/bw;->c()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/view/bw;->d()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 455
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 456
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    .line 457
    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/support/v4/view/ap;->b(Landroid/view/View;Landroid/support/v4/view/bw;)Landroid/support/v4/view/bw;

    move-result-object v1

    .line 460
    .local v1, "childInsets":Landroid/support/v4/view/bw;
    invoke-virtual {v1}, Landroid/support/v4/view/bw;->a()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {v1}, Landroid/support/v4/view/bw;->b()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 464
    invoke-virtual {v1}, Landroid/support/v4/view/bw;->c()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 466
    invoke-virtual {v1}, Landroid/support/v4/view/bw;->d()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    .end local v1    # "childInsets":Landroid/support/v4/view/bw;
    :cond_1
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/support/v4/view/bw;->a(IIII)Landroid/support/v4/view/bw;

    move-result-object v0

    goto :goto_0
.end method
