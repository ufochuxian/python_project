.class Landroid/support/v7/widget/a/a$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2260
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2264
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2269
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2270
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2271
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    .line 2272
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$w;
    if-eqz v3, :cond_0

    .line 2273
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->D:Landroid/support/v7/widget/a/a$a;

    iget-object v7, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget-object v7, v7, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7, v3}, Landroid/support/v7/widget/a/a$a;->c(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2297
    .end local v3    # "vh":Landroid/support/v7/widget/RecyclerView$w;
    :cond_0
    :goto_0
    return-void

    .line 2276
    .restart local v3    # "vh":Landroid/support/v7/widget/RecyclerView$w;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2280
    .local v2, "pointerId":I
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->C:I

    if-ne v2, v6, :cond_0

    .line 2281
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget v6, v6, Landroid/support/v7/widget/a/a;->C:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2282
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2283
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2284
    .local v5, "y":F
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iput v4, v6, Landroid/support/v7/widget/a/a;->u:F

    .line 2285
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iput v5, v6, Landroid/support/v7/widget/a/a;->v:F

    .line 2286
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget-object v7, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/widget/a/a;->z:F

    iput v8, v6, Landroid/support/v7/widget/a/a;->y:F

    .line 2291
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    iget-object v6, v6, Landroid/support/v7/widget/a/a;->D:Landroid/support/v7/widget/a/a$a;

    invoke-virtual {v6}, Landroid/support/v7/widget/a/a$a;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2292
    iget-object v6, p0, Landroid/support/v7/widget/a/a$b;->a:Landroid/support/v7/widget/a/a;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    goto :goto_0
.end method
