.class public Landroid/support/constraint/solver/widgets/d;
.super Landroid/support/constraint/solver/widgets/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/d$b;,
        Landroid/support/constraint/solver/widgets/d$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field private static final an:I = 0x3

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/f;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/f;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Landroid/support/constraint/solver/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/e;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    .line 29
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    .line 30
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/e;-><init>(II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    .line 29
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    .line 30
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    .line 89
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/e;-><init>(IIII)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    .line 29
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    .line 30
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    .line 79
    return-void
.end method

.method private au()V
    .locals 6

    .prologue
    .line 404
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    if-nez v2, :cond_1

    .line 415
    :cond_0
    return-void

    .line 407
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 408
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 409
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".VG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/i;Ljava/lang/String;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 412
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 413
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/i;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private av()V
    .locals 8

    .prologue
    .line 422
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 423
    move-object v4, p0

    .line 424
    .local v4, "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 425
    .local v2, "increment":F
    move v3, v2

    .line 426
    .local v3, "percent":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    if-ge v1, v6, :cond_1

    .line 427
    new-instance v5, Landroid/support/constraint/solver/widgets/d$b;

    invoke-direct {v5, p0}, Landroid/support/constraint/solver/widgets/d$b;-><init>(Landroid/support/constraint/solver/widgets/d;)V

    .line 428
    .local v5, "slice":Landroid/support/constraint/solver/widgets/d$b;
    iput-object v4, v5, Landroid/support/constraint/solver/widgets/d$b;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 429
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 430
    new-instance v0, Landroid/support/constraint/solver/widgets/f;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/f;-><init>()V

    .line 431
    .local v0, "guideline":Landroid/support/constraint/solver/widgets/f;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/f;->a(I)V

    .line 432
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/f;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 433
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/f;->c(I)V

    .line 434
    add-float/2addr v3, v2

    .line 435
    iput-object v0, v5, Landroid/support/constraint/solver/widgets/d$b;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 436
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v0    # "guideline":Landroid/support/constraint/solver/widgets/f;
    :goto_1
    iget-object v4, v5, Landroid/support/constraint/solver/widgets/d$b;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 441
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    iput-object p0, v5, Landroid/support/constraint/solver/widgets/d$b;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 443
    .end local v5    # "slice":Landroid/support/constraint/solver/widgets/d$b;
    :cond_1
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->au()V

    .line 444
    return-void
.end method

.method private aw()V
    .locals 8

    .prologue
    .line 451
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 452
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 453
    .local v2, "increment":F
    move v3, v2

    .line 454
    .local v3, "percent":F
    move-object v4, p0

    .line 455
    .local v4, "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    if-ge v1, v6, :cond_1

    .line 456
    new-instance v5, Landroid/support/constraint/solver/widgets/d$a;

    invoke-direct {v5, p0}, Landroid/support/constraint/solver/widgets/d$a;-><init>(Landroid/support/constraint/solver/widgets/d;)V

    .line 457
    .local v5, "slice":Landroid/support/constraint/solver/widgets/d$a;
    iput-object v4, v5, Landroid/support/constraint/solver/widgets/d$a;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 458
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 459
    new-instance v0, Landroid/support/constraint/solver/widgets/f;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/f;-><init>()V

    .line 460
    .local v0, "guideline":Landroid/support/constraint/solver/widgets/f;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/f;->a(I)V

    .line 461
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/f;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 462
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/f;->c(I)V

    .line 463
    add-float/2addr v3, v2

    .line 464
    iput-object v0, v5, Landroid/support/constraint/solver/widgets/d$a;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 465
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "guideline":Landroid/support/constraint/solver/widgets/f;
    :goto_1
    iget-object v4, v5, Landroid/support/constraint/solver/widgets/d$a;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 470
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iput-object p0, v5, Landroid/support/constraint/solver/widgets/d$a;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 472
    .end local v5    # "slice":Landroid/support/constraint/solver/widgets/d$a;
    :cond_1
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->au()V

    .line 473
    return-void
.end method

.method private ax()V
    .locals 15

    .prologue
    .line 479
    iget-object v12, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 480
    .local v1, "count":I
    const/4 v4, 0x0

    .line 481
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 482
    iget-object v12, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 483
    .local v6, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad()I

    move-result v12

    add-int/2addr v4, v12

    .line 485
    iget v12, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    rem-int v0, v4, v12

    .line 486
    .local v0, "col":I
    iget v12, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    div-int v5, v4, v12

    .line 488
    .local v5, "row":I
    iget-object v12, p0, Landroid/support/constraint/solver/widgets/d;->ak:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/d$a;

    .line 489
    .local v2, "horizontalSlice":Landroid/support/constraint/solver/widgets/d$a;
    iget-object v12, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/d$b;

    .line 490
    .local v11, "verticalSlice":Landroid/support/constraint/solver/widgets/d$b;
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/d$b;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 491
    .local v8, "targetLeft":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v11, Landroid/support/constraint/solver/widgets/d$b;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 492
    .local v9, "targetRight":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/d$a;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 493
    .local v10, "targetTop":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/d$a;->b:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 495
    .local v7, "targetBottom":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 496
    invoke-virtual {v8, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 497
    instance-of v12, v9, Landroid/support/constraint/solver/widgets/f;

    if-eqz v12, :cond_0

    .line 498
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 499
    invoke-virtual {v9, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 506
    :goto_1
    iget v12, v11, Landroid/support/constraint/solver/widgets/d$b;->c:I

    packed-switch v12, :pswitch_data_0

    .line 526
    :goto_2
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 527
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 528
    instance-of v12, v7, Landroid/support/constraint/solver/widgets/f;

    if-eqz v12, :cond_1

    .line 529
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 530
    invoke-virtual {v7, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 536
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 501
    :cond_0
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 502
    invoke-virtual {v9, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1

    .line 508
    :pswitch_0
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    .line 512
    :pswitch_1
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 514
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    .line 519
    :pswitch_2
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 521
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    .line 532
    :cond_1
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 533
    invoke-virtual {v7, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_3

    .line 538
    .end local v0    # "col":I
    .end local v2    # "horizontalSlice":Landroid/support/constraint/solver/widgets/d$a;
    .end local v5    # "row":I
    .end local v6    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "targetBottom":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "targetLeft":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "targetRight":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "targetTop":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "verticalSlice":Landroid/support/constraint/solver/widgets/d$b;
    :cond_2
    return-void

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 158
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/d$b;

    .line 159
    .local v0, "slice":Landroid/support/constraint/solver/widgets/d$b;
    iget v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 160
    const-string v1, "L"

    .line 168
    :goto_0
    return-object v1

    .line 161
    :cond_0
    iget v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    if-nez v1, :cond_1

    .line 162
    const-string v1, "C"

    goto :goto_0

    .line 163
    :cond_1
    iget v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 164
    const-string v1, "F"

    goto :goto_0

    .line 165
    :cond_2
    iget v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 166
    const-string v1, "R"

    goto :goto_0

    .line 168
    :cond_3
    const-string v1, "!"

    goto :goto_0
.end method

.method public a(II)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "alignment"    # I

    .prologue
    .line 239
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 240
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/d$b;

    .line 241
    .local v0, "slice":Landroid/support/constraint/solver/widgets/d$b;
    iput p2, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    .line 242
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->ax()V

    .line 244
    .end local v0    # "slice":Landroid/support/constraint/solver/widgets/d$b;
    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/solver/i;I)V
    .locals 9
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "group"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 314
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/i;I)V

    .line 315
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 316
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->i()V

    .line 322
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->V:Landroid/support/constraint/solver/i;

    if-ne p1, v5, :cond_0

    .line 323
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 324
    .local v4, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 325
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    .line 327
    .local v2, "guideline":Landroid/support/constraint/solver/widgets/f;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->ai()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    move v5, v6

    .line 326
    :goto_1
    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/f;->a(Z)V

    .line 328
    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/i;I)V

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    .line 327
    goto :goto_1

    .line 330
    .end local v2    # "guideline":Landroid/support/constraint/solver/widgets/f;
    :cond_3
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 331
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 332
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    .line 334
    .restart local v2    # "guideline":Landroid/support/constraint/solver/widgets/f;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->aj()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_4

    move v5, v6

    .line 333
    :goto_3
    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/f;->a(Z)V

    .line 335
    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/i;I)V

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v5, v7

    .line 334
    goto :goto_3

    .line 337
    .end local v2    # "guideline":Landroid/support/constraint/solver/widgets/f;
    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_0

    .line 338
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 339
    .local v0, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/i;I)V

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public a(Landroid/support/constraint/solver/i;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Landroid/support/constraint/solver/i;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/d;->ao:Landroid/support/constraint/solver/i;

    .line 397
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/i;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->au()V

    .line 399
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "alignment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_0

    .line 276
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/support/constraint/solver/widgets/d;->a(II)V

    .line 273
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_0
    const/16 v3, 0x43

    if-ne v0, v3, :cond_1

    .line 278
    invoke-virtual {p0, v1, v4}, Landroid/support/constraint/solver/widgets/d;->a(II)V

    goto :goto_1

    .line 279
    :cond_1
    const/16 v3, 0x46

    if-ne v0, v3, :cond_2

    .line 280
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Landroid/support/constraint/solver/widgets/d;->a(II)V

    goto :goto_1

    .line 281
    :cond_2
    const/16 v3, 0x52

    if-ne v0, v3, :cond_3

    .line 282
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/support/constraint/solver/widgets/d;->a(II)V

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {p0, v1, v4}, Landroid/support/constraint/solver/widgets/d;->a(II)V

    goto :goto_1

    .line 287
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    .line 218
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    return v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    .line 181
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->av()V

    .line 182
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->i()V

    .line 184
    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/i;I)V
    .locals 4
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "group"    # I

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/e;->b(Landroid/support/constraint/solver/i;I)V

    .line 550
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->V:Landroid/support/constraint/solver/i;

    if-ne p1, v3, :cond_1

    .line 551
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 552
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 553
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/f;

    .line 554
    .local v0, "guideline":Landroid/support/constraint/solver/widgets/f;
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/widgets/f;->b(Landroid/support/constraint/solver/i;I)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "guideline":Landroid/support/constraint/solver/widgets/f;
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 557
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 558
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/f;

    .line 559
    .restart local v0    # "guideline":Landroid/support/constraint/solver/widgets/f;
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/widgets/f;->b(Landroid/support/constraint/solver/i;I)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "guideline":Landroid/support/constraint/solver/widgets/f;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    return v0
.end method

.method public c(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    if-eq v0, p1, :cond_0

    .line 195
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 196
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->aw()V

    .line 197
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->i()V

    .line 199
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    return v0
.end method

.method public d(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 227
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ai:I

    .line 229
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "numSlices":I
    const-string v2, ""

    .line 136
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 137
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/d$b;

    .line 138
    .local v3, "slice":Landroid/support/constraint/solver/widgets/d$b;
    iget v4, v3, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget v4, v3, Landroid/support/constraint/solver/widgets/d$b;->c:I

    if-nez v4, :cond_2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 142
    :cond_2
    iget v4, v3, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_3
    iget v4, v3, Landroid/support/constraint/solver/widgets/d$b;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 148
    .end local v3    # "slice":Landroid/support/constraint/solver/widgets/d$b;
    :cond_4
    return-object v2
.end method

.method public e(I)V
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 252
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/d$b;

    .line 253
    .local v0, "slice":Landroid/support/constraint/solver/widgets/d$b;
    iget v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->ax()V

    .line 265
    return-void

    .line 255
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    goto :goto_0

    .line 258
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/constraint/solver/widgets/d$b;->c:I

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    return v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "extra":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 351
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 352
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->ae:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 353
    .local v5, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad()I

    move-result v6

    add-int/2addr v2, v6

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v5    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    add-int/2addr v1, v2

    .line 356
    iget-boolean v6, p0, Landroid/support/constraint/solver/widgets/d;->af:Z

    if-eqz v6, :cond_5

    .line 357
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    if-nez v6, :cond_1

    .line 358
    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/d;->b(I)V

    .line 360
    :cond_1
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    div-int v4, v1, v6

    .line 361
    .local v4, "rows":I
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    mul-int/2addr v6, v4

    if-ge v6, v1, :cond_2

    .line 362
    add-int/lit8 v4, v4, 0x1

    .line 364
    :cond_2
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    if-ne v6, v4, :cond_4

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 386
    .end local v4    # "rows":I
    :cond_3
    :goto_1
    return-void

    .line 368
    .restart local v4    # "rows":I
    :cond_4
    iput v4, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 369
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->aw()V

    .line 385
    .end local v4    # "rows":I
    :goto_2
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->ax()V

    goto :goto_1

    .line 371
    :cond_5
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    if-nez v6, :cond_6

    .line 372
    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/d;->c(I)V

    .line 374
    :cond_6
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    div-int v0, v1, v6

    .line 375
    .local v0, "cols":I
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    mul-int/2addr v6, v0

    if-ge v6, v1, :cond_7

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_7
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    if-ne v6, v0, :cond_8

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_3

    .line 382
    :cond_8
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ag:I

    .line 383
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/d;->av()V

    goto :goto_2
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 578
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 579
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 580
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/f;->i()V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 584
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->am:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/f;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/f;->i()V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_1
    return-void
.end method
