.class Landroid/support/v4/view/ap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ap$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static e:Ljava/lang/reflect/Method;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/bm;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ap$b;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/al;I)Z
    .locals 6
    .param p1, "view"    # Landroid/support/v4/view/al;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1006
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeHorizontalScrollOffset()I

    move-result v0

    .line 1007
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeHorizontalScrollRange()I

    move-result v4

    .line 1008
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 1009
    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    .line 1013
    :cond_0
    :goto_0
    return v2

    .line 1010
    :cond_1
    if-gez p2, :cond_2

    .line 1011
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 1013
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 707
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchStartTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ap$b;->b:Ljava/lang/reflect/Method;

    .line 709
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchFinishTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ap$b;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ap$b;->d:Z

    .line 715
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/al;I)Z
    .locals 6
    .param p1, "view"    # Landroid/support/v4/view/al;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1018
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeVerticalScrollOffset()I

    move-result v0

    .line 1019
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeVerticalScrollRange()I

    move-result v4

    .line 1020
    invoke-interface {p1}, Landroid/support/v4/view/al;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 1021
    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    .line 1025
    :cond_0
    :goto_0
    return v2

    .line 1022
    :cond_1
    if-gez p2, :cond_2

    .line 1023
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 1025
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public C(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public D(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public E(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 769
    invoke-static {p1}, Landroid/support/v4/view/ar;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public F(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 774
    invoke-static {p1}, Landroid/support/v4/view/ar;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public G(Landroid/view/View;)Landroid/support/v4/view/bm;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/view/bm;

    invoke-direct {v0, p1}, Landroid/support/v4/view/bm;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public H(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public I(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public J(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public K(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public L(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 868
    return-void
.end method

.method public M(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public N(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public O(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 894
    const/4 v0, 0x0

    return-object v0
.end method

.method public P(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public Q(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 932
    return-void
.end method

.method public R(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 962
    const/4 v0, 0x0

    return v0
.end method

.method public S(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 974
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 975
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/aa;->isNestedScrollingEnabled()Z

    move-result v0

    .line 977
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 987
    invoke-static {p1}, Landroid/support/v4/view/ar;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public U(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1002
    invoke-static {p1}, Landroid/support/v4/view/ar;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public V(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1039
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1040
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/aa;->stopNestedScroll()V

    .line 1042
    :cond_0
    return-void
.end method

.method public W(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1046
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1047
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/aa;->hasNestedScrollingParent()Z

    move-result v0

    .line 1049
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method public Y(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1097
    invoke-static {p1}, Landroid/support/v4/view/ar;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public Z(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .locals 1
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 1107
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "childMeasuredState"    # I

    .prologue
    .line 623
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 559
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bw;)Landroid/support/v4/view/bw;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/bw;

    .prologue
    .line 942
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 785
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1143
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 548
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 549
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 588
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 992
    invoke-static {p1, p2}, Landroid/support/v4/view/ar;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 993
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 604
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 997
    invoke-static {p1, p2}, Landroid/support/v4/view/ar;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 998
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 890
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 982
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 983
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    .line 532
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/ae;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/ae;

    .prologue
    .line 938
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/ah;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerIcon"    # Landroid/support/v4/view/ah;

    .prologue
    .line 1158
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/b;

    .prologue
    .line 514
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 524
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/view/ap$b;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 556
    invoke-virtual {p0}, Landroid/support/v4/view/ap$b;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .prologue
    .line 854
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 541
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    .line 899
    sget-object v1, Landroid/support/v4/view/ap$b;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 901
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 902
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/ap$b;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_0
    sget-object v1, Landroid/support/v4/view/ap$b;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 909
    :cond_0
    :try_start_1
    sget-object v1, Landroid/support/v4/view/ap$b;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 917
    :goto_1
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 910
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 912
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 914
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1084
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1085
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/aa;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 1087
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1075
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1076
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/aa;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 1079
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 502
    instance-of v0, p1, Landroid/support/v4/view/al;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/al;

    .line 503
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ap$b;->a(Landroid/support/v4/view/al;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII[I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "offsetInWindow"    # [I

    .prologue
    .line 1055
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1056
    check-cast v0, Landroid/support/v4/view/aa;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/aa;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;II[I[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 1065
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1066
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/aa;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    .line 1069
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public aa(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ap$b;->N(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ap$b;->M(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public ab(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1122
    invoke-static {p1}, Landroid/support/v4/view/ar;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public ac(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public ad(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1132
    const/4 v0, 0x0

    return v0
.end method

.method public ae(Landroid/view/View;)Landroid/view/Display;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1162
    invoke-static {p1}, Landroid/support/v4/view/ar;->g(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/bw;)Landroid/support/v4/view/bw;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/bw;

    .prologue
    .line 947
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 790
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 663
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 664
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 528
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fitSystemWindows"    # Z

    .prologue
    .line 927
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 507
    instance-of v0, p1, Landroid/support/v4/view/al;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/al;

    .line 508
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ap$b;->b(Landroid/support/v4/view/al;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 545
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 795
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 568
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 953
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 800
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 600
    return-void
.end method

.method public d(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    .prologue
    .line 958
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 805
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 614
    return-void
.end method

.method public e(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 967
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 968
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/aa;->setNestedScrollingEnabled(Z)V

    .line 970
    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public f(Landroid/view/View;)Landroid/support/v4/view/a/r;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 810
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 649
    return-void
.end method

.method public g(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 583
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public g(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 815
    return-void
.end method

.method public g(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "axes"    # I

    .prologue
    .line 1031
    instance-of v0, p1, Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    .line 1032
    check-cast p1, Landroid/support/v4/view/aa;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/aa;->startNestedScroll(I)Z

    move-result v0

    .line 1034
    :goto_0
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 820
    return-void
.end method

.method public h(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I

    .prologue
    .line 1138
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 825
    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1147
    invoke-static {p1, p2}, Landroid/support/v4/view/ar;->b(Landroid/view/View;I)V

    .line 1148
    return-void
.end method

.method public j(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 830
    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1152
    invoke-static {p1, p2}, Landroid/support/v4/view/ar;->a(Landroid/view/View;I)V

    .line 1153
    return-void
.end method

.method public k(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 835
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 840
    return-void
.end method

.method public m(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    .prologue
    .line 872
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationZ"    # F

    .prologue
    .line 881
    return-void
.end method

.method public o(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .prologue
    .line 1118
    return-void
.end method

.method public p(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 668
    iget-boolean v1, p0, Landroid/support/v4/view/ap$b;->d:Z

    if-nez v1, :cond_0

    .line 669
    invoke-direct {p0}, Landroid/support/v4/view/ap$b;->b()V

    .line 671
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ap$b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ap$b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public s(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 685
    iget-boolean v1, p0, Landroid/support/v4/view/ap$b;->d:Z

    if-nez v1, :cond_0

    .line 686
    invoke-direct {p0}, Landroid/support/v4/view/ap$b;->b()V

    .line 688
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ap$b;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 690
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ap$b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 696
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public t(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public u(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public w(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public x(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public y(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method
