.class Lcom/nineoldandroids/b/c;
.super Lcom/nineoldandroids/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/b/c$a;,
        Lcom/nineoldandroids/b/c$b;,
        Lcom/nineoldandroids/b/c$c;
    }
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x4

.field private static final f:I = 0x8

.field private static final g:I = 0x10

.field private static final h:I = 0x20

.field private static final i:I = 0x40

.field private static final j:I = 0x80

.field private static final k:I = 0x100

.field private static final l:I = 0x200

.field private static final m:I = 0x1ff


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:Z

.field private q:J

.field private r:Z

.field private s:Landroid/view/animation/Interpolator;

.field private t:Z

.field private u:Lcom/nineoldandroids/a/a$a;

.field private v:Lcom/nineoldandroids/b/c$a;

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/a/a;",
            "Lcom/nineoldandroids/b/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/nineoldandroids/b/b;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/c;->a:Ljava/util/ArrayList;

    .line 72
    iput-boolean v2, p0, Lcom/nineoldandroids/b/c;->p:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/b/c;->q:J

    .line 83
    iput-boolean v2, p0, Lcom/nineoldandroids/b/c;->r:Z

    .line 94
    iput-boolean v2, p0, Lcom/nineoldandroids/b/c;->t:Z

    .line 98
    iput-object v3, p0, Lcom/nineoldandroids/b/c;->u:Lcom/nineoldandroids/a/a$a;

    .line 104
    new-instance v0, Lcom/nineoldandroids/b/c$a;

    invoke-direct {v0, p0, v3}, Lcom/nineoldandroids/b/c$a;-><init>(Lcom/nineoldandroids/b/c;Lcom/nineoldandroids/b/c$1;)V

    iput-object v0, p0, Lcom/nineoldandroids/b/c;->v:Lcom/nineoldandroids/b/c$a;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    .line 123
    new-instance v0, Lcom/nineoldandroids/b/c$1;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/b/c$1;-><init>(Lcom/nineoldandroids/b/c;)V

    iput-object v0, p0, Lcom/nineoldandroids/b/c;->x:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    .line 138
    return-void
.end method

.method private a(I)F
    .locals 2
    .param p1, "propertyConstant"    # I

    .prologue
    .line 522
    iget-object v1, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 523
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 524
    sparse-switch p1, :sswitch_data_0

    .line 557
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 527
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    goto :goto_0

    .line 530
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    goto :goto_0

    .line 533
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    goto :goto_0

    .line 536
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v1

    goto :goto_0

    .line 539
    :sswitch_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v1

    goto :goto_0

    .line 542
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    goto :goto_0

    .line 545
    :sswitch_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    goto :goto_0

    .line 548
    :sswitch_7
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    goto :goto_0

    .line 551
    :sswitch_8
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    goto :goto_0

    .line 554
    :sswitch_9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nineoldandroids/b/c;Lcom/nineoldandroids/a/a$a;)Lcom/nineoldandroids/a/a$a;
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;
    .param p1, "x1"    # Lcom/nineoldandroids/a/a$a;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nineoldandroids/b/c;->u:Lcom/nineoldandroids/a/a$a;

    return-object p1
.end method

.method private a(IF)V
    .locals 2
    .param p1, "constantName"    # I
    .param p2, "toValue"    # F

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/nineoldandroids/b/c;->a(I)F

    move-result v1

    .line 395
    .local v1, "fromValue":F
    sub-float v0, p2, v1

    .line 396
    .local v0, "deltaValue":F
    invoke-direct {p0, p1, v1, v0}, Lcom/nineoldandroids/b/c;->a(IFF)V

    .line 397
    return-void
.end method

.method private a(IFF)V
    .locals 8
    .param p1, "constantName"    # I
    .param p2, "startValue"    # F
    .param p3, "byValue"    # F

    .prologue
    .line 425
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "animatorToCancel":Lcom/nineoldandroids/a/a;
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 428
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/a/a;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/a;

    .line 429
    .local v4, "runningAnim":Lcom/nineoldandroids/a/a;
    iget-object v7, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/b/c$c;

    .line 430
    .local v2, "bundle":Lcom/nineoldandroids/b/c$c;
    invoke-virtual {v2, p1}, Lcom/nineoldandroids/b/c$c;->a(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    iget v7, v2, Lcom/nineoldandroids/b/c$c;->a:I

    if-nez v7, :cond_0

    .line 437
    move-object v1, v4

    .line 442
    .end local v2    # "bundle":Lcom/nineoldandroids/b/c$c;
    .end local v4    # "runningAnim":Lcom/nineoldandroids/a/a;
    :cond_1
    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {v1}, Lcom/nineoldandroids/a/a;->b()V

    .line 447
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/a/a;>;"
    .end local v1    # "animatorToCancel":Lcom/nineoldandroids/a/a;
    :cond_2
    new-instance v3, Lcom/nineoldandroids/b/c$b;

    invoke-direct {v3, p1, p2, p3}, Lcom/nineoldandroids/b/c$b;-><init>(IFF)V

    .line 448
    .local v3, "nameValuePair":Lcom/nineoldandroids/b/c$b;
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 450
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 451
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 452
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 454
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/b/c;)V
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nineoldandroids/b/c;->e()V

    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/b/c;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/b/c;->c(IF)V

    return-void
.end method

.method static synthetic b(Lcom/nineoldandroids/b/c;)Lcom/nineoldandroids/a/a$a;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nineoldandroids/b/c;->u:Lcom/nineoldandroids/a/a$a;

    return-object v0
.end method

.method private b(IF)V
    .locals 1
    .param p1, "constantName"    # I
    .param p2, "byValue"    # F

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/nineoldandroids/b/c;->a(I)F

    move-result v0

    .line 410
    .local v0, "fromValue":F
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/b/c;->a(IFF)V

    .line 411
    return-void
.end method

.method static synthetic c(Lcom/nineoldandroids/b/c;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(IF)V
    .locals 2
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    .prologue
    .line 467
    iget-object v1, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 468
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 469
    sparse-switch p1, :sswitch_data_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 472
    :sswitch_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 476
    :sswitch_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 480
    :sswitch_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 484
    :sswitch_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 488
    :sswitch_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 492
    :sswitch_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 496
    :sswitch_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 500
    :sswitch_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 504
    :sswitch_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 508
    :sswitch_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic d(Lcom/nineoldandroids/b/c;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/b/c;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    .line 356
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v6}, Lcom/nineoldandroids/a/q;->b([F)Lcom/nineoldandroids/a/q;

    move-result-object v0

    .line 357
    .local v0, "animator":Lcom/nineoldandroids/a/q;
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 358
    .local v2, "nameValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/b/c$b;>;"
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "propertyMask":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 361
    .local v4, "propertyCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 362
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/b/c$b;

    .line 363
    .local v3, "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    iget v6, v3, Lcom/nineoldandroids/b/c$b;->a:I

    or-int/2addr v5, v6

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    :cond_0
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    new-instance v7, Lcom/nineoldandroids/b/c$c;

    invoke-direct {v7, v5, v2}, Lcom/nineoldandroids/b/c$c;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->v:Lcom/nineoldandroids/b/c$a;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q$b;)V

    .line 367
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->v:Lcom/nineoldandroids/b/c$a;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 368
    iget-boolean v6, p0, Lcom/nineoldandroids/b/c;->r:Z

    if-eqz v6, :cond_1

    .line 369
    iget-wide v6, p0, Lcom/nineoldandroids/b/c;->q:J

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/a/q;->a(J)V

    .line 371
    :cond_1
    iget-boolean v6, p0, Lcom/nineoldandroids/b/c;->p:Z

    if-eqz v6, :cond_2

    .line 372
    iget-wide v6, p0, Lcom/nineoldandroids/b/c;->o:J

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 374
    :cond_2
    iget-boolean v6, p0, Lcom/nineoldandroids/b/c;->t:Z

    if-eqz v6, :cond_3

    .line 375
    iget-object v6, p0, Lcom/nineoldandroids/b/c;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/q;->a(Landroid/view/animation/Interpolator;)V

    .line 377
    :cond_3
    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->a()V

    .line 378
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/nineoldandroids/b/c;->p:Z

    if-eqz v0, :cond_0

    .line 167
    iget-wide v0, p0, Lcom/nineoldandroids/b/c;->o:J

    .line 171
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Lcom/nineoldandroids/a/q;

    invoke-direct {v0}, Lcom/nineoldandroids/a/q;-><init>()V

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 232
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 233
    return-object p0
.end method

.method public a(J)Lcom/nineoldandroids/b/b;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/b/c;->p:Z

    .line 154
    iput-wide p1, p0, Lcom/nineoldandroids/b/c;->o:J

    .line 155
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/b/c;->t:Z

    .line 199
    iput-object p1, p0, Lcom/nineoldandroids/b/c;->s:Landroid/view/animation/Interpolator;

    .line 200
    return-object p0
.end method

.method public a(Lcom/nineoldandroids/a/a$a;)Lcom/nineoldandroids/b/b;
    .locals 0
    .param p1, "listener"    # Lcom/nineoldandroids/a/a$a;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nineoldandroids/b/c;->u:Lcom/nineoldandroids/a/a$a;

    .line 206
    return-object p0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/nineoldandroids/b/c;->r:Z

    if-eqz v0, :cond_0

    .line 178
    iget-wide v0, p0, Lcom/nineoldandroids/b/c;->q:J

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public b(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 238
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 239
    return-object p0
.end method

.method public b(J)Lcom/nineoldandroids/b/b;
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/b/c;->r:Z

    .line 192
    iput-wide p1, p0, Lcom/nineoldandroids/b/c;->q:J

    .line 193
    return-object p0
.end method

.method public c(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 244
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 245
    return-object p0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/nineoldandroids/b/c;->e()V

    .line 212
    return-void
.end method

.method public d(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 250
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 251
    return-object p0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 216
    iget-object v4, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/nineoldandroids/b/c;->w:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 218
    .local v1, "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/nineoldandroids/a/a;Lcom/nineoldandroids/b/c$c;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 219
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/a/a;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/a/a;

    .line 220
    .local v2, "runningAnim":Lcom/nineoldandroids/a/a;
    invoke-virtual {v2}, Lcom/nineoldandroids/a/a;->b()V

    goto :goto_0

    .line 223
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/a/a;>;"
    .end local v1    # "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/nineoldandroids/a/a;Lcom/nineoldandroids/b/c$c;>;"
    .end local v2    # "runningAnim":Lcom/nineoldandroids/a/a;
    :cond_0
    iget-object v4, p0, Lcom/nineoldandroids/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v4, p0, Lcom/nineoldandroids/b/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 225
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 226
    iget-object v4, p0, Lcom/nineoldandroids/b/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    :cond_1
    return-void
.end method

.method public e(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 256
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 257
    return-object p0
.end method

.method public f(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 262
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 263
    return-object p0
.end method

.method public g(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 268
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 269
    return-object p0
.end method

.method public h(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 274
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 275
    return-object p0
.end method

.method public i(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 280
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 281
    return-object p0
.end method

.method public j(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 286
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 287
    return-object p0
.end method

.method public k(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 293
    return-object p0
.end method

.method public l(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 299
    return-object p0
.end method

.method public m(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 304
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 305
    return-object p0
.end method

.method public n(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 310
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 311
    return-object p0
.end method

.method public o(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 316
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 317
    return-object p0
.end method

.method public p(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 322
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 323
    return-object p0
.end method

.method public q(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 328
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 329
    return-object p0
.end method

.method public r(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 334
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 335
    return-object p0
.end method

.method public s(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 340
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->a(IF)V

    .line 341
    return-object p0
.end method

.method public t(F)Lcom/nineoldandroids/b/b;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 346
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/b/c;->b(IF)V

    .line 347
    return-object p0
.end method
