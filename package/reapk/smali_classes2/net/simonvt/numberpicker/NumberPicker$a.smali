.class Lnet/simonvt/numberpicker/NumberPicker$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final b:I = -0x80000000

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;

.field private final f:Landroid/graphics/Rect;

.field private final g:[I

.field private h:I


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 2234
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->f:Landroid/graphics/Rect;

    .line 2245
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->g:[I

    .line 2247
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    return-void
.end method

.method private a()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2525
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2526
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2527
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v1, v2, :cond_0

    .line 2528
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2530
    :cond_0
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v1, v2, :cond_1

    .line 2531
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2533
    :cond_1
    return-object v0
.end method

.method private a(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2572
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2573
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2574
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2575
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2577
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2578
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2580
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2581
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2582
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2585
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2586
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2587
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2608
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v1, v3, :cond_2

    .line 2609
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2611
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v1, v3, :cond_3

    .line 2612
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2614
    :cond_3
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2615
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2616
    :cond_4
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2618
    :cond_5
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_7

    .line 2619
    :cond_6
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2623
    :cond_7
    return-object v0
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2538
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2539
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2540
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2541
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2542
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2543
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2545
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2546
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2547
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->f:Landroid/graphics/Rect;

    .line 2548
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2550
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2551
    move-object v1, v0

    .line 2552
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->g:[I

    .line 2553
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4, v3}, Lnet/simonvt/numberpicker/NumberPicker;->getLocationOnScreen([I)V

    .line 2554
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2555
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2557
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v4, p1, :cond_0

    .line 2558
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2560
    :cond_0
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v4, p1, :cond_1

    .line 2561
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2563
    :cond_1
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2564
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2567
    :cond_2
    return-object v2
.end method

.method private a(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2468
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2469
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2470
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2471
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2472
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2473
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2475
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2479
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2480
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2481
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2482
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2483
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2485
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2486
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2488
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x2

    .line 2492
    packed-switch p2, :pswitch_data_0

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2494
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 2495
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2496
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2497
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2501
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2502
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2503
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2504
    invoke-virtual {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2507
    :cond_1
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2508
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2509
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2510
    invoke-virtual {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2515
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 2516
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2517
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2518
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 2627
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 2631
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2635
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->l(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2636
    .local v0, "value":I
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->m(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2637
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;I)I

    move-result v0

    .line 2639
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->n(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2640
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2643
    :goto_0
    return-object v1

    .line 2640
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2641
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->n(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2643
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2647
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->l(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2648
    .local v0, "value":I
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->m(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2649
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;I)I

    move-result v0

    .line 2651
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->d(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2652
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2655
    :goto_0
    return-object v1

    .line 2652
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2653
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->n(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2655
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2448
    packed-switch p1, :pswitch_data_0

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2450
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2451
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2456
    :pswitch_1
    invoke-direct {p0, p2}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(I)V

    goto :goto_0

    .line 2459
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 2460
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2251
    packed-switch p1, :pswitch_data_0

    .line 2268
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2253
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2254
    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2253
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2256
    :pswitch_2
    const/4 v1, 0x3

    .line 2257
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v4

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2258
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2259
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v6}, Lnet/simonvt/numberpicker/NumberPicker;->k(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    .line 2256
    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2261
    :pswitch_3
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2263
    :pswitch_4
    const/4 v1, 0x1

    .line 2264
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2265
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v4}, Lnet/simonvt/numberpicker/NumberPicker;->k(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2266
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v6

    iget-object v7, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v7}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    .line 2263
    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2251
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2297
    :goto_0
    return-object v0

    .line 2277
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2278
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2279
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2297
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2281
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2283
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2285
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2292
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2279
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2302
    packed-switch p1, :pswitch_data_0

    .line 2444
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2304
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2306
    :sswitch_0
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v2, p1, :cond_0

    .line 2307
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2309
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2310
    goto :goto_1

    .line 2314
    :sswitch_1
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v2, p1, :cond_0

    .line 2315
    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2317
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2318
    goto :goto_1

    .line 2323
    :sswitch_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2324
    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2325
    :cond_1
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    move v0, v1

    .line 2326
    goto :goto_1

    .line 2330
    :sswitch_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2331
    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2332
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    move v0, v1

    .line 2333
    goto :goto_1

    .line 2339
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2378
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2341
    :sswitch_4
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2342
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2346
    :sswitch_5
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2347
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2348
    goto/16 :goto_1

    .line 2353
    :sswitch_6
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2354
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->j(Lnet/simonvt/numberpicker/NumberPicker;)V

    move v0, v1

    .line 2355
    goto/16 :goto_1

    .line 2360
    :sswitch_7
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v2, p1, :cond_0

    .line 2361
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2362
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2364
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2365
    goto/16 :goto_1

    .line 2369
    :sswitch_8
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v2, p1, :cond_0

    .line 2370
    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2371
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2373
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2374
    goto/16 :goto_1

    .line 2383
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2385
    :sswitch_9
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2386
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2387
    invoke-virtual {p0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    move v0, v1

    .line 2389
    goto/16 :goto_1

    .line 2393
    :sswitch_a
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v2, p1, :cond_0

    .line 2394
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2395
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2397
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2398
    goto/16 :goto_1

    .line 2402
    :sswitch_b
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v2, p1, :cond_0

    .line 2403
    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2404
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2406
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2407
    goto/16 :goto_1

    .line 2413
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2415
    :sswitch_c
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2416
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2417
    .local v0, "increment":Z
    :cond_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2418
    invoke-virtual {p0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    move v0, v1

    .line 2420
    goto/16 :goto_1

    .line 2424
    .end local v0    # "increment":Z
    :sswitch_d
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-eq v2, p1, :cond_0

    .line 2425
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2426
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2428
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v4}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2429
    goto/16 :goto_1

    .line 2433
    :sswitch_e
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    if-ne v2, p1, :cond_0

    .line 2434
    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->h:I

    .line 2435
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2437
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$a;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v4}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2438
    goto/16 :goto_1

    .line 2302
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2304
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2339
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch

    .line 2383
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_9
        0x40 -> :sswitch_a
        0x80 -> :sswitch_b
    .end sparse-switch

    .line 2413
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_c
        0x40 -> :sswitch_d
        0x80 -> :sswitch_e
    .end sparse-switch
.end method
