.class Landroid/support/v7/widget/am$2;
.super Landroid/support/v7/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/am;->b(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Landroid/support/v7/widget/am;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/am;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/am;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/v7/widget/am$2;->i:Landroid/support/v7/widget/am;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 228
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$s$a;

    .prologue
    .line 216
    iget-object v4, p0, Landroid/support/v7/widget/am$2;->i:Landroid/support/v7/widget/am;

    iget-object v5, p0, Landroid/support/v7/widget/am$2;->i:Landroid/support/v7/widget/am;

    iget-object v5, v5, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 218
    .local v2, "snapDistances":[I
    const/4 v4, 0x0

    aget v0, v2, v4

    .line 219
    .local v0, "dx":I
    const/4 v4, 0x1

    aget v1, v2, v4

    .line 220
    .local v1, "dy":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/am$2;->a(I)I

    move-result v3

    .line 221
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 222
    iget-object v4, p0, Landroid/support/v7/widget/am$2;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$s$a;->a(IIILandroid/view/animation/Interpolator;)V

    .line 224
    :cond_0
    return-void
.end method
