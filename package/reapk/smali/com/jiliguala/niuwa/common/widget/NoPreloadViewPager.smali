.class public Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;,
        Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;,
        Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$e;,
        Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;,
        Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    }
.end annotation


# static fields
.field private static final I:I = -0x1

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String;

.field private static final e:Z = false

.field private static final f:Z = false

.field private static final g:I = 0x0

.field private static final h:I = 0x258

.field private static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:I

.field private M:F

.field private N:F

.field private O:Z

.field private P:J

.field private Q:Landroid/support/v4/widget/j;

.field private R:Landroid/support/v4/widget/j;

.field private S:Z

.field private T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

.field private U:I

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/support/v4/view/af;

.field private m:I

.field private n:I

.field private o:Landroid/os/Parcelable;

.field private p:Ljava/lang/ClassLoader;

.field private q:Landroid/widget/Scroller;

.field private r:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;

.field private s:I

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->d:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$2;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$2;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    .line 100
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    .line 101
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->o:Landroid/os/Parcelable;

    .line 102
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->p:Ljava/lang/ClassLoader;

    .line 117
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    .line 132
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->S:Z

    .line 174
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->U:I

    .line 237
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a()V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    .line 100
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    .line 101
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->o:Landroid/os/Parcelable;

    .line 102
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->p:Ljava/lang/ClassLoader;

    .line 117
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    .line 132
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->S:Z

    .line 174
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->U:I

    .line 242
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a()V

    .line 243
    return-void
.end method

.method private a(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    const/4 v2, 0x0

    .line 886
    add-int v10, p1, p3

    .line 887
    .local v10, "widthWithMargin":I
    if-lez p2, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v7

    .line 889
    .local v7, "oldScrollPos":I
    add-int v8, p2, p4

    .line 890
    .local v8, "oldwwm":I
    div-int v6, v7, v8

    .line 891
    .local v6, "oldScrollItem":I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 892
    .local v9, "scrollOffset":F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 893
    .local v1, "scrollPos":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 894
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 897
    .local v5, "newDuration":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 906
    .end local v5    # "newDuration":I
    .end local v6    # "oldScrollItem":I
    .end local v7    # "oldScrollPos":I
    .end local v8    # "oldwwm":I
    .end local v9    # "scrollOffset":F
    :cond_0
    :goto_0
    return-void

    .line 900
    .end local v1    # "scrollPos":I
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    mul-int v1, v0, v10

    .line 901
    .restart local v1    # "scrollPos":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    .line 903
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1450
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1451
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1452
    .local v1, "pointerId":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    if-ne v1, v3, :cond_0

    .line 1455
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1456
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1457
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1458
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1459
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1462
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 969
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->z:Z

    .line 970
    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 972
    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    .line 973
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 974
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v3

    .line 975
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v4

    .line 976
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 977
    .local v5, "x":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 978
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 979
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 981
    :cond_1
    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    .line 983
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 984
    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->z:Z

    .line 985
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 986
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 987
    .local v1, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iget-boolean v7, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->c:Z

    if-eqz v7, :cond_3

    .line 988
    const/4 v2, 0x1

    .line 989
    iput-boolean v8, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->c:Z

    .line 985
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_4
    if-eqz v2, :cond_5

    .line 993
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 995
    :cond_5
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1465
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    .line 1466
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    .line 1468
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    .line 1472
    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 264
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->U:I

    if-ne v0, p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->U:I

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->b(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->x:Z

    if-eq v0, p1, :cond_0

    .line 1476
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->x:Z

    .line 1487
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 496
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 497
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 498
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 818
    .local v1, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget-object v3, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/af;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :goto_1
    return-object v1

    .line 816
    .restart local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 5

    .prologue
    .line 246
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setWillNotDraw(Z)V

    .line 247
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setDescendantFocusability(I)V

    .line 248
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setFocusable(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->j:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    .line 251
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 252
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/bb;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->D:I

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->K:I

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->L:I

    .line 255
    new-instance v3, Landroid/support/v4/widget/j;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    .line 256
    new-instance v3, Landroid/support/v4/widget/j;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    .line 258
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 259
    .local v2, "density":F
    const v3, 0x451c4000    # 2500.0f

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->M:F

    .line 260
    const v3, 0x3ecccccd    # 0.4f

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->N:F

    .line 261
    return-void
.end method

.method a(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(III)V

    .line 509
    return-void
.end method

.method a(III)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0, v7}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    .line 551
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v1

    .line 525
    .local v1, "sx":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v2

    .line 526
    .local v2, "sy":I
    sub-int v3, p1, v1

    .line 527
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 528
    .local v4, "dy":I
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    .line 530
    invoke-direct {p0, v7}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    goto :goto_0

    .line 534
    :cond_1
    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    .line 535
    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->z:Z

    .line 536
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    .line 538
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v6, v0, v7

    .line 539
    .local v6, "pageDelta":F
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    float-to-int v5, v0

    .line 541
    .local v5, "duration":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 542
    if-lez p3, :cond_2

    .line 543
    int-to-float v0, v5

    int-to-float v7, v5

    int-to-float v8, p3

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->M:F

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->N:F

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    float-to-int v5, v0

    .line 547
    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 549
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->invalidate()V

    goto :goto_0

    .line 545
    :cond_2
    add-int/lit8 v5, v5, 0x64

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 333
    invoke-virtual {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 334
    return-void
.end method

.method a(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZI)V

    .line 342
    return-void
.end method

.method a(IZZI)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 345
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v4}, Landroid/support/v4/view/af;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 346
    :cond_0
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 353
    :cond_3
    if-gez p1, :cond_6

    .line 354
    const/4 p1, 0x0

    .line 358
    :cond_4
    :goto_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    .line 359
    .local v3, "pageLimit":I
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 363
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 364
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    iput-boolean v1, v4, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->c:Z

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    .end local v2    # "i":I
    .end local v3    # "pageLimit":I
    :cond_6
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v4}, Landroid/support/v4/view/af;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 356
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v4}, Landroid/support/v4/view/af;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 368
    .restart local v3    # "pageLimit":I
    :cond_7
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-eq v4, p1, :cond_8

    .line 369
    .local v1, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    .line 370
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 371
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 372
    .local v0, "destX":I
    if-eqz p2, :cond_9

    .line 373
    invoke-virtual {p0, v0, v5, p4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(III)V

    .line 374
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    if-eqz v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    invoke-interface {v4, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->a(I)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    move v1, v5

    .line 368
    goto :goto_3

    .line 378
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    if-eqz v4, :cond_a

    .line 379
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    invoke-interface {v4, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->a(I)V

    .line 381
    :cond_a
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    .line 382
    invoke-virtual {p0, v0, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1560
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1561
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1563
    :cond_0
    const/4 v1, 0x0

    .line 1565
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1567
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1568
    if-ne p1, v4, :cond_4

    .line 1571
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1572
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->g()Z

    move-result v1

    .line 1592
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1593
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->playSoundEffect(I)V

    .line 1595
    :cond_2
    return v1

    .line 1574
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1576
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1579
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1580
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->h()Z

    move-result v1

    goto :goto_0

    .line 1582
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1585
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1587
    :cond_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->g()Z

    move-result v1

    goto :goto_0

    .line 1588
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1590
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->h()Z

    move-result v1

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1556
    :cond_0
    :goto_0
    return v0

    .line 1542
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(I)Z

    move-result v0

    .line 1543
    goto :goto_0

    .line 1545
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(I)Z

    move-result v0

    .line 1546
    goto :goto_0

    .line 1548
    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/k;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1549
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(I)Z

    move-result v0

    goto :goto_0

    .line 1550
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/k;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(I)Z

    move-result v0

    goto :goto_0

    .line 1540
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1501
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1502
    check-cast v7, Landroid/view/ViewGroup;

    .line 1503
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1504
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1505
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1507
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1510
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1511
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1512
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1513
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1514
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1513
    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    const/4 v0, 0x1

    .line 1520
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1507
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1520
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1621
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getDescendantFocusability()I

    move-result v1

    .line 1623
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 1624
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1625
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1626
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1627
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v4

    .line 1628
    .local v4, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v5, v6, :cond_0

    .line 1629
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1624
    .end local v4    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1639
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 1642
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1645
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1656
    :cond_3
    :goto_1
    return-void

    .line 1648
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 1649
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1652
    :cond_5
    if-eqz p1, :cond_3

    .line 1653
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1667
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1669
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v2

    .line 1670
    .local v2, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v3, v4, :cond_0

    .line 1671
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1666
    .end local v2    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1675
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->w:Z

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 801
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->u:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->v:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 813
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method b(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 827
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 828
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 829
    :cond_0
    const/4 v1, 0x0

    .line 833
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 831
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v1

    goto :goto_1
.end method

.method b()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 567
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v8}, Landroid/support/v4/view/af;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 568
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 570
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 571
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 572
    .local v1, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget-object v8, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/af;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 574
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 570
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "newPos":I
    :cond_1
    move v2, v6

    .line 567
    goto :goto_0

    .line 578
    .restart local v0    # "i":I
    .restart local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "newPos":I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 579
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    add-int/lit8 v0, v0, -0x1

    .line 581
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget v8, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget-object v9, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Landroid/support/v4/view/af;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 582
    const/4 v2, 0x1

    .line 584
    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    iget v8, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-ne v7, v8, :cond_0

    .line 586
    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v8}, Landroid/support/v4/view/af;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 591
    :cond_3
    iget v7, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-eq v7, v4, :cond_0

    .line 592
    iget v7, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v7, v8, :cond_4

    .line 594
    move v3, v4

    .line 597
    :cond_4
    iput v4, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    .line 598
    const/4 v2, 0x1

    goto :goto_2

    .line 602
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .end local v4    # "newPos":I
    :cond_5
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    sget-object v8, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 604
    if-ltz v3, :cond_6

    .line 606
    invoke-virtual {p0, v3, v6, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 607
    const/4 v2, 0x1

    .line 609
    :cond_6
    if-eqz v2, :cond_7

    .line 610
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 611
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->requestLayout()V

    .line 613
    :cond_7
    return-void
.end method

.method public b(F)V
    .locals 19
    .param p1, "xOffset"    # F

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    if-nez v2, :cond_0

    .line 1402
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1405
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float v16, v2, p1

    .line 1407
    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v17

    .line 1408
    .local v17, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int v18, v17, v2

    .line 1410
    .local v18, "widthWithMargin":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v11, v2

    .line 1411
    .local v11, "leftBound":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    .line 1412
    invoke-virtual {v3}, Landroid/support/v4/view/af;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v2, v2, v18

    int-to-float v15, v2

    .line 1413
    .local v15, "rightBound":F
    cmpg-float v2, v16, v11

    if-gez v2, :cond_3

    .line 1414
    move/from16 v16, v11

    .line 1419
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1420
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    if-eqz v2, :cond_2

    .line 1422
    move/from16 v0, v16

    float-to-int v2, v0

    div-int v12, v2, v18

    .line 1423
    .local v12, "position":I
    move/from16 v0, v16

    float-to-int v2, v0

    rem-int v14, v2, v18

    .line 1424
    .local v14, "positionOffsetPixels":I
    int-to-float v2, v14

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 1425
    .local v13, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    invoke-interface {v2, v12, v13, v14}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->a(IFI)V

    .line 1430
    .end local v12    # "position":I
    .end local v13    # "positionOffset":F
    .end local v14    # "positionOffsetPixels":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1431
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->P:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1433
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1434
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1435
    return-void

    .line 1415
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_3
    cmpl-float v2, v16, v15

    if-lez v2, :cond_1

    .line 1416
    move/from16 v16, v15

    goto :goto_0
.end method

.method b(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 554
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;-><init>()V

    .line 555
    .local v0, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iput p1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    .line 556
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/af;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    .line 557
    if-gez p2, :cond_0

    .line 558
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method c()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 616
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-nez v10, :cond_1

    .line 717
    :cond_0
    return-void

    .line 624
    :cond_1
    iget-boolean v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    if-nez v10, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 636
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/af;->startUpdate(Landroid/view/ViewGroup;)V

    .line 638
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    .line 639
    .local v8, "pageLimit":I
    const/4 v10, 0x0

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 640
    .local v9, "startPos":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v10}, Landroid/support/v4/view/af;->getCount()I

    move-result v0

    .line 641
    .local v0, "N":I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 646
    .local v4, "endPos":I
    const/4 v7, -0x1

    .line 647
    .local v7, "lastPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 648
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 649
    .local v6, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->c:Z

    if-nez v10, :cond_4

    .line 651
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 652
    add-int/lit8 v5, v5, -0x1

    .line 653
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget v13, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget-object v14, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Landroid/support/v4/view/af;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 669
    :cond_3
    iget v7, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    .line 647
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 654
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-le v10, v9, :cond_3

    .line 658
    add-int/lit8 v7, v7, 0x1

    .line 659
    if-ge v7, v9, :cond_5

    .line 660
    move v7, v9

    .line 662
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    if-ge v7, v10, :cond_3

    .line 664
    invoke-virtual {p0, v7, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->b(II)V

    .line 665
    add-int/lit8 v7, v7, 0x1

    .line 666
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 673
    .end local v6    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_6
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    iget v7, v10, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    .line 674
    :goto_2
    if-ge v7, v4, :cond_9

    .line 675
    add-int/lit8 v7, v7, 0x1

    .line 676
    if-le v7, v9, :cond_8

    .line 677
    :goto_3
    if-gt v7, v4, :cond_9

    .line 679
    invoke-virtual {p0, v7, v12}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->b(II)V

    .line 680
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 673
    goto :goto_2

    :cond_8
    move v7, v9

    .line 676
    goto :goto_3

    .line 691
    :cond_9
    const/4 v2, 0x0

    .line 692
    .local v2, "curItem":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 693
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    iget v10, v10, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v10, v12, :cond_d

    .line 694
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "curItem":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    check-cast v2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 698
    .restart local v2    # "curItem":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_a
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Landroid/support/v4/view/af;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 700
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/af;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 702
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 704
    .local v3, "currentFocused":Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->b(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v6

    .line 705
    .restart local v6    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-eq v10, v11, :cond_0

    .line 706
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 707
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 708
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v6

    .line 709
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v10, v11, :cond_c

    .line 710
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 706
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 692
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "currentFocused":Landroid/view/View;
    .end local v6    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 698
    goto :goto_5

    .restart local v3    # "currentFocused":Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 704
    goto :goto_6
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 938
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 939
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 941
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v2

    .line 942
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v3

    .line 943
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 944
    .local v6, "x":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->q:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 946
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 947
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 950
    :cond_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    if-eqz v8, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int v5, v8, v9

    .line 952
    .local v5, "widthWithMargin":I
    div-int v4, v6, v5

    .line 953
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 954
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 955
    .local v0, "offset":F
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    invoke-interface {v8, v4, v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->a(IFI)V

    .line 959
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "widthWithMargin":I
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->invalidate()V

    .line 966
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 965
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    goto :goto_0
.end method

.method public d()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1343
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    if-eqz v2, :cond_0

    .line 1359
    :goto_0
    return v4

    .line 1346
    :cond_0
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    .line 1347
    invoke-direct {p0, v9}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    .line 1348
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    .line 1349
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1350
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    .line 1354
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1355
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1356
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1357
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1358
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->P:J

    move v4, v9

    .line 1359
    goto :goto_0

    .line 1352
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1526
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v1

    .line 1718
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1719
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1720
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1721
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v3

    .line 1722
    .local v3, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v4, v5, :cond_0

    .line 1723
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1724
    const/4 v4, 0x1

    .line 1729
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :goto_1
    return v4

    .line 1718
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1729
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 1267
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1268
    const/4 v2, 0x0

    .line 1270
    .local v2, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ap;->a(Landroid/view/View;)I

    move-result v3

    .line 1271
    .local v3, "overScrollMode":I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    .line 1273
    invoke-virtual {v6}, Landroid/support/v4/view/af;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1274
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1276
    .local v4, "restoreCount":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1278
    .local v0, "height":I
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1279
    neg-int v6, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1280
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/j;->a(II)V

    .line 1281
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1282
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1284
    .end local v0    # "height":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->a()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1286
    .restart local v4    # "restoreCount":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v5

    .line 1287
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1288
    .restart local v0    # "height":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v6}, Landroid/support/v4/view/af;->getCount()I

    move-result v1

    .line 1290
    .local v1, "itemCount":I
    :cond_2
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1291
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1293
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/j;->a(II)V

    .line 1294
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1295
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1302
    .end local v0    # "height":I
    .end local v1    # "itemCount":I
    .end local v4    # "restoreCount":I
    .end local v5    # "width":I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1304
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->invalidate()V

    .line 1306
    :cond_4
    return-void

    .line 1298
    :cond_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->b()V

    .line 1299
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 485
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    .line 486
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 489
    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1369
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    if-nez v2, :cond_0

    .line 1370
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    .line 1374
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->L:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1375
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    invoke-static {v1, v2}, Landroid/support/v4/view/an;->b(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    .line 1377
    .local v0, "initialVelocity":I
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 1378
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->K:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    sub-float/2addr v2, v3

    .line 1379
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1380
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1381
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 1388
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->j()V

    .line 1390
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    .line 1391
    return-void

    .line 1383
    :cond_2
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    goto :goto_0

    .line 1386
    :cond_3
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    invoke-virtual {p0, v2, v4, v4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    return v0
.end method

.method g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1599
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-lez v1, :cond_0

    .line 1600
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZ)V

    .line 1603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdapter()Landroid/support/v4/view/af;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    return v0
.end method

.method h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1607
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v2}, Landroid/support/v4/view/af;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1608
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZ)V

    .line 1611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 838
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->S:Z

    .line 840
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1310
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1313
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v2

    .line 1315
    .local v2, "scrollX":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v3

    .line 1316
    .local v3, "width":I
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1317
    .local v1, "offset":I
    if-eqz v1, :cond_0

    .line 1319
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1320
    .local v0, "left":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1321
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1324
    .end local v0    # "left":I
    .end local v1    # "offset":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1008
    .local v7, "action":I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_0

    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 1011
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    .line 1012
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    .line 1013
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1014
    const/4 v1, 0x0

    .line 1118
    :goto_0
    return v1

    .line 1019
    :cond_1
    if-eqz v7, :cond_3

    .line 1020
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    if-eqz v1, :cond_2

    .line 1022
    const/4 v1, 0x1

    goto :goto_0

    .line 1024
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    if-eqz v1, :cond_3

    .line 1026
    const/4 v1, 0x0

    goto :goto_0

    .line 1030
    :cond_3
    sparse-switch v7, :sswitch_data_0

    .line 1118
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    goto :goto_0

    .line 1041
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1042
    .local v8, "activePointerId":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 1047
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1048
    .local v11, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1049
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    sub-float v10, v13, v1

    .line 1050
    .local v10, "dx":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1051
    .local v14, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/x;->d(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 1052
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->G:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1053
    .local v16, "yDiff":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v12

    .line 1054
    .local v12, "scrollX":I
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    .line 1055
    invoke-virtual {v1}, Landroid/support/v4/view/af;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_7

    :cond_6
    const/4 v9, 0x1

    .line 1058
    .local v9, "atEdge":Z
    :goto_2
    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v13

    float-to-int v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1060
    move-object/from16 v0, p0

    iput v13, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    .line 1061
    move-object/from16 v0, p0

    iput v15, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->G:F

    .line 1062
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1055
    .end local v9    # "atEdge":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1064
    .restart local v9    # "atEdge":Z
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->D:I

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_9

    cmpl-float v1, v14, v16

    if-lez v1, :cond_9

    .line 1066
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    .line 1067
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    .line 1068
    move-object/from16 v0, p0

    iput v13, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1069
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 1071
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->D:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_4

    .line 1077
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    goto/16 :goto_1

    .line 1088
    .end local v8    # "activePointerId":I
    .end local v9    # "atEdge":Z
    .end local v10    # "dx":F
    .end local v11    # "pointerIndex":I
    .end local v12    # "scrollX":I
    .end local v13    # "x":F
    .end local v14    # "xDiff":F
    .end local v15    # "y":F
    .end local v16    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->G:F

    .line 1090
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1092
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->U:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1094
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    .line 1095
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    .line 1096
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1098
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    .line 1099
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    .line 1100
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->C:Z

    goto/16 :goto_1

    .line 1110
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 910
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->w:Z

    .line 911
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 912
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->w:Z

    .line 914
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v3

    .line 915
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 917
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 918
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 920
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v5

    .local v5, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    if-eqz v5, :cond_0

    .line 921
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    mul-int v6, v8, v9

    .line 922
    .local v6, "loff":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 923
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v2

    .line 928
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    .line 929
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    .line 927
    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 917
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .end local v6    # "loff":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 932
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->S:Z

    .line 933
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 849
    invoke-static {v5, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getDefaultSize(II)I

    move-result v3

    .line 850
    invoke-static {v5, p2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getDefaultSize(II)I

    move-result v4

    .line 849
    invoke-virtual {p0, v3, v4}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setMeasuredDimension(II)V

    .line 853
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getMeasuredWidth()I

    move-result v3

    .line 854
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 853
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->u:I

    .line 855
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getMeasuredHeight()I

    move-result v3

    .line 856
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 855
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->v:I

    .line 859
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->w:Z

    .line 860
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 861
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->w:Z

    .line 864
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v2

    .line 865
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 866
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 870
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->u:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->v:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildCount()I

    move-result v1

    .line 1687
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1688
    const/4 v6, 0x0

    .line 1689
    .local v6, "index":I
    const/4 v5, 0x1

    .line 1690
    .local v5, "increment":I
    move v2, v1

    .line 1696
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1697
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1698
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1699
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/View;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    move-result-object v4

    .line 1700
    .local v4, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    if-ne v7, v8, :cond_1

    .line 1701
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1702
    const/4 v7, 0x1

    .line 1707
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :goto_2
    return v7

    .line 1692
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1693
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 1694
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 1696
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1707
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 779
    instance-of v1, p1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    if-nez v1, :cond_0

    .line 780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 795
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 784
    check-cast v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    .line 785
    .local v0, "ss":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 787
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->b:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/af;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 789
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    goto :goto_0

    .line 791
    :cond_1
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->a:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    .line 792
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->b:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->o:Landroid/os/Parcelable;

    .line 793
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->c:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->p:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 768
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 769
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;-><init>(Landroid/os/Parcelable;)V

    .line 770
    .local v0, "ss":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    iput v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->a:I

    .line 771
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v2}, Landroid/support/v4/view/af;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;->b:Landroid/os/Parcelable;

    .line 774
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 877
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 880
    if-eq p1, p3, :cond_0

    .line 881
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IIII)V

    .line 883
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->O:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1127
    const/16 v28, 0x1

    .line 1262
    :goto_0
    return v28

    .line 1130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v28

    if-eqz v28, :cond_1

    .line 1133
    const/16 v28, 0x0

    goto :goto_0

    .line 1136
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/af;->getCount()I

    move-result v28

    if-nez v28, :cond_3

    .line 1138
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 1141
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-nez v28, :cond_4

    .line 1142
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    .line 1144
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1147
    .local v4, "action":I
    const/4 v12, 0x0

    .line 1149
    .local v12, "needsInvalidate":Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 1259
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->invalidate()V

    .line 1262
    :cond_6
    const/16 v28, 0x1

    goto :goto_0

    .line 1155
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->i()V

    .line 1158
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->E:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1159
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    goto :goto_1

    .line 1163
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    .line 1164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1165
    .local v16, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1166
    .local v25, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    move/from16 v28, v0

    sub-float v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 1167
    .local v26, "xDiff":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->d(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 1168
    .local v27, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->G:F

    move/from16 v28, v0

    sub-float v28, v27, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    .line 1179
    .end local v16    # "pointerIndex":I
    .end local v25    # "x":F
    .end local v26    # "xDiff":F
    .end local v27    # "y":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1183
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1184
    .restart local v25    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    move/from16 v28, v0

    sub-float v7, v28, v25

    .line 1185
    .local v7, "deltaX":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v28

    move/from16 v0, v28

    int-to-float v14, v0

    .line 1187
    .local v14, "oldScrollX":F
    add-float v21, v14, v7

    .line 1188
    .local v21, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v23

    .line 1189
    .local v23, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    move/from16 v28, v0

    add-int v24, v23, v28

    .line 1191
    .local v24, "widthWithMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/af;->getCount()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    .line 1192
    .local v10, "lastItemIndex":I
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v11, v0

    .line 1193
    .local v11, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    .line 1194
    move/from16 v0, v28

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int v28, v28, v24

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1195
    .local v20, "rightBound":F
    cmpg-float v28, v21, v11

    if-gez v28, :cond_a

    .line 1196
    const/16 v28, 0x0

    cmpl-float v28, v11, v28

    if-nez v28, :cond_8

    .line 1197
    move/from16 v0, v21

    neg-float v15, v0

    .line 1198
    .local v15, "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    move-object/from16 v28, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/j;->a(F)Z

    move-result v12

    .line 1200
    .end local v15    # "over":F
    :cond_8
    move/from16 v21, v11

    .line 1209
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    move/from16 v28, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v21, v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1210
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollY()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1212
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v28, v0

    div-int v17, v28, v24

    .line 1213
    .local v17, "position":I
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v28, v0

    rem-int v19, v28, v24

    .line 1214
    .local v19, "positionOffsetPixels":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v18, v28, v29

    .line 1215
    .local v18, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;->a(IFI)V

    goto/16 :goto_1

    .line 1201
    .end local v17    # "position":I
    .end local v18    # "positionOffset":F
    .end local v19    # "positionOffsetPixels":I
    :cond_a
    cmpl-float v28, v21, v20

    if-lez v28, :cond_9

    .line 1202
    mul-int v28, v10, v24

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v20, v28

    if-nez v28, :cond_b

    .line 1203
    sub-float v15, v21, v20

    .line 1204
    .restart local v15    # "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    move-object/from16 v28, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/j;->a(F)Z

    move-result v12

    .line 1206
    .end local v15    # "over":F
    :cond_b
    move/from16 v21, v20

    goto/16 :goto_2

    .line 1221
    .end local v5    # "activePointerIndex":I
    .end local v7    # "deltaX":F
    .end local v10    # "lastItemIndex":I
    .end local v11    # "leftBound":F
    .end local v14    # "oldScrollX":F
    .end local v20    # "rightBound":F
    .end local v21    # "scrollX":F
    .end local v23    # "width":I
    .end local v24    # "widthWithMargin":I
    .end local v25    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 1223
    .local v22, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->L:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/an;->a(Landroid/view/VelocityTracker;I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    .line 1226
    .local v9, "initialVelocity":I
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    move/from16 v29, v0

    add-int v24, v28, v29

    .line 1228
    .restart local v24    # "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getScrollX()I

    move-result v21

    .line 1229
    .local v21, "scrollX":I
    div-int v6, v21, v24

    .line 1230
    .local v6, "currentPage":I
    if-lez v9, :cond_c

    move v13, v6

    .line 1231
    .local v13, "nextPage":I
    :goto_3
    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v13, v1, v2, v9}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZI)V

    .line 1233
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1234
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->j()V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/j;->c()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/j;->c()Z

    move-result v29

    or-int v12, v28, v29

    .line 1236
    goto/16 :goto_1

    .line 1230
    .end local v13    # "nextPage":I
    :cond_c
    add-int/lit8 v13, v6, 0x1

    goto :goto_3

    .line 1239
    .end local v6    # "currentPage":I
    .end local v9    # "initialVelocity":I
    .end local v21    # "scrollX":I
    .end local v22    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v24    # "widthWithMargin":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->B:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 1241
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    .line 1242
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->j()V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->Q:Landroid/support/v4/widget/j;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/j;->c()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->R:Landroid/support/v4/widget/j;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/j;->c()Z

    move-result v29

    or-int v12, v28, v29

    goto/16 :goto_1

    .line 1247
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1248
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1249
    .restart local v25    # "x":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    .line 1250
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    goto/16 :goto_1

    .line 1254
    .end local v8    # "index":I
    .end local v25    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->H:I

    move/from16 v28, v0

    .line 1256
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v28

    .line 1255
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->F:F

    goto/16 :goto_1

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/v4/view/af;)V
    .locals 7
    .param p1, "adapter"    # Landroid/support/v4/view/af;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 275
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/af;->startUpdate(Landroid/view/ViewGroup;)V

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .line 280
    .local v1, "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget v3, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget-object v4, v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Landroid/support/v4/view/af;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "ii":Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/af;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 283
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->removeAllViews()V

    .line 285
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->m:I

    .line 286
    invoke-virtual {p0, v5, v5}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->scrollTo(II)V

    .line 289
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    .line 291
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->r:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;

    if-nez v2, :cond_2

    .line 293
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;

    invoke-direct {v2, p0, v6}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;-><init>(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->r:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;

    .line 296
    :cond_2
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 297
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    if-ltz v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->l:Landroid/support/v4/view/af;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->o:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->p:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/af;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 299
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 300
    const/4 v2, -0x1

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->n:I

    .line 301
    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->o:Landroid/os/Parcelable;

    .line 302
    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->p:Ljava/lang/ClassLoader;

    .line 307
    :cond_3
    :goto_1
    return-void

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->y:Z

    .line 322
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->S:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IZZ)V

    .line 323
    return-void

    :cond_0
    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 419
    if-gez p1, :cond_0

    .line 421
    const/4 p1, 0x0

    .line 423
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    if-eq p1, v0, :cond_1

    .line 424
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->A:I

    .line 425
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->c()V

    .line 427
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->T:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;

    .line 388
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 438
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    .line 439
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->s:I

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getWidth()I

    move-result v1

    .line 442
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->a(IIII)V

    .line 444
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->requestLayout()V

    .line 445
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    .line 463
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->refreshDrawableState()V

    .line 464
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setWillNotDraw(Z)V

    .line 465
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->invalidate()V

    .line 466
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->t:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
