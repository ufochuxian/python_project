.class public abstract Lcom/c/a/a/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a/a/d/g$a;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/c/a/a/a/c;

.field private c:Landroid/support/v4/view/g;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "SimpleClickListener"

    sput-object v0, Lcom/c/a/a/a/d/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/c/a/a/a/d/g;->e:Z

    .line 37
    iput-boolean v0, p0, Lcom/c/a/a/a/d/g;->f:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/c/a/a/a/d/g;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    return-object p1
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mPressedView"    # Landroid/view/View;

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 234
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/c/a/a/a/d/g;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/c/a/a/a/d/g;->a(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method private a(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    if-nez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/a/c;

    iput-object v1, p0, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v1, p1}, Lcom/c/a/a/a/c;->getItemViewType(I)I

    move-result v0

    .line 293
    .local v0, "type":I
    const/16 v1, 0x555

    if-eq v0, v1, :cond_1

    const/16 v1, 0x111

    if-eq v0, v1, :cond_1

    const/16 v1, 0x333

    if-eq v0, v1, :cond_1

    const/16 v1, 0x222

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .end local v0    # "type":I
    :cond_2
    return v2

    .restart local v0    # "type":I
    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/a/a/d/g;)Z
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/c/a/a/a/d/g;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/c/a/a/a/d/g;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/c/a/a/a/d/g;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/c/a/a/a/d/g;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/c/a/a/a/d/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/c/a/a/a/d/g;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    return-object v0
.end method

.method private b(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 297
    const/16 v0, 0x555

    if-eq p1, v0, :cond_0

    const/16 v0, 0x111

    if-eq p1, v0, :cond_0

    const/16 v0, 0x333

    if-eq p1, v0, :cond_0

    const/16 v0, 0x222

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/c/a/a/a/d/g;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/c/a/a/a/d/g;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/c/a/a/a/d/g;->f:Z

    return p1
.end method


# virtual methods
.method public abstract a(Lcom/c/a/a/a/c;Landroid/view/View;I)V
.end method

.method public a(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_4

    .line 43
    iput-object p1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    .line 44
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/a/c;

    iput-object v1, p0, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    .line 45
    new-instance v1, Landroid/support/v4/view/g;

    iget-object v2, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/c/a/a/a/d/g$a;

    iget-object v4, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v3, p0, v4}, Lcom/c/a/a/a/d/g$a;-><init>(Lcom/c/a/a/a/d/g;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/view/g;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/c/a/a/a/d/g;->c:Landroid/support/v4/view/g;

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->c:Landroid/support/v4/view/g;

    invoke-virtual {v1, p2}, Landroid/support/v4/view/g;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/c/a/a/a/d/g;->f:Z

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    .line 54
    .local v0, "vh":Lcom/c/a/a/a/e;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/c/a/a/a/d/g;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->g:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 58
    .end local v0    # "vh":Lcom/c/a/a/a/e;
    :cond_2
    iput-boolean v5, p0, Lcom/c/a/a/a/d/g;->f:Z

    .line 59
    iput-boolean v5, p0, Lcom/c/a/a/a/d/g;->e:Z

    .line 61
    :cond_3
    return v5

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    if-eq v1, p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    .line 48
    iget-object v1, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/a/c;

    iput-object v1, p0, Lcom/c/a/a/a/d/g;->a:Lcom/c/a/a/a/c;

    .line 49
    new-instance v1, Landroid/support/v4/view/g;

    iget-object v2, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/c/a/a/a/d/g$a;

    iget-object v4, p0, Lcom/c/a/a/a/d/g;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v3, p0, v4}, Lcom/c/a/a/a/d/g$a;-><init>(Lcom/c/a/a/a/d/g;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/view/g;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/c/a/a/a/d/g;->c:Landroid/support/v4/view/g;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 265
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 266
    .local v0, "location":[I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 278
    :cond_1
    :goto_0
    return v3

    .line 269
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    aget v1, v0, v4

    .line 271
    .local v1, "x":I
    aget v2, v0, v3

    .line 272
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    int-to-float v6, v1

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_3
    move v3, v4

    .line 276
    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/c/a/a/a/d/g;->c:Landroid/support/v4/view/g;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/g;->a(Landroid/view/MotionEvent;)Z

    .line 67
    return-void
.end method

.method public abstract b(Lcom/c/a/a/a/c;Landroid/view/View;I)V
.end method

.method public abstract c(Lcom/c/a/a/a/c;Landroid/view/View;I)V
.end method

.method public abstract d(Lcom/c/a/a/a/c;Landroid/view/View;I)V
.end method
