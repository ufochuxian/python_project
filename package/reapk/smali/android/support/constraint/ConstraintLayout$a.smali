.class public Landroid/support/constraint/ConstraintLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field private static final ag:I = 0x0

.field private static final ah:I = 0x1

.field private static final ai:I = 0x2

.field public static final b:I = 0x0

.field public static final c:I = -0x1

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:F

.field public J:F

.field public K:Ljava/lang/String;

.field L:F

.field M:I

.field public N:F

.field public O:F

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field U:Z

.field V:Z

.field W:Z

.field X:Z

.field Y:I

.field Z:I

.field aa:I

.field ab:I

.field ac:I

.field ad:I

.field ae:F

.field af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1706
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1256
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 1261
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 1266
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 1271
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1276
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1281
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1286
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1291
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1296
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1301
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1306
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1311
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1316
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1321
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1326
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1331
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1336
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 1341
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 1346
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 1351
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 1356
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 1361
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    .line 1366
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 1371
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1381
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1386
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1392
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 1398
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 1410
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 1422
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 1428
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 1434
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 1436
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 1439
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1440
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1442
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    .line 1443
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1445
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1446
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1447
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1448
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1449
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1450
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1451
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1453
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1707
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1511
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1256
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 1261
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 1266
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 1271
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1276
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1281
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1286
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1291
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1296
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1301
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1306
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1311
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1316
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1321
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1326
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1331
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1336
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 1341
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 1346
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 1351
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 1356
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 1361
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    .line 1366
    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 1371
    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 1376
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1381
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1386
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1392
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 1398
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 1410
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 1422
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 1428
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 1434
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 1436
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 1439
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1440
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1442
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    .line 1443
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1445
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1446
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1447
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1448
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1449
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1450
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1451
    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1453
    new-instance v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1513
    sget-object v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1514
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 1515
    .local v2, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_26

    .line 1516
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 1517
    .local v4, "attr":I
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    if-ne v4, v15, :cond_1

    .line 1518
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1519
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1520
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1515
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1522
    :cond_1
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    if-ne v4, v15, :cond_2

    .line 1523
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1524
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1525
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    goto :goto_1

    .line 1527
    :cond_2
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    if-ne v4, v15, :cond_3

    .line 1528
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1529
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1530
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    goto :goto_1

    .line 1532
    :cond_3
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    if-ne v4, v15, :cond_4

    .line 1533
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1534
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1535
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    goto :goto_1

    .line 1537
    :cond_4
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    if-ne v4, v15, :cond_5

    .line 1538
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1539
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1540
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    goto/16 :goto_1

    .line 1542
    :cond_5
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    if-ne v4, v15, :cond_6

    .line 1543
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1544
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1545
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    goto/16 :goto_1

    .line 1547
    :cond_6
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    if-ne v4, v15, :cond_7

    .line 1548
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1549
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1550
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    goto/16 :goto_1

    .line 1552
    :cond_7
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    if-ne v4, v15, :cond_8

    .line 1553
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1554
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1555
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    goto/16 :goto_1

    .line 1557
    :cond_8
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    if-ne v4, v15, :cond_9

    .line 1558
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1559
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1560
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    goto/16 :goto_1

    .line 1562
    :cond_9
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    if-ne v4, v15, :cond_a

    .line 1563
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    goto/16 :goto_1

    .line 1564
    :cond_a
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    if-ne v4, v15, :cond_b

    .line 1565
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    goto/16 :goto_1

    .line 1566
    :cond_b
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    if-ne v4, v15, :cond_c

    .line 1567
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    goto/16 :goto_1

    .line 1568
    :cond_c
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    if-ne v4, v15, :cond_d

    .line 1569
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    goto/16 :goto_1

    .line 1570
    :cond_d
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    if-ne v4, v15, :cond_e

    .line 1571
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    goto/16 :goto_1

    .line 1572
    :cond_e
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_android_orientation:I

    if-ne v4, v15, :cond_f

    .line 1573
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    goto/16 :goto_1

    .line 1574
    :cond_f
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    if-ne v4, v15, :cond_10

    .line 1575
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1576
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1577
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    goto/16 :goto_1

    .line 1579
    :cond_10
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    if-ne v4, v15, :cond_11

    .line 1580
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1581
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1582
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    goto/16 :goto_1

    .line 1584
    :cond_11
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    if-ne v4, v15, :cond_12

    .line 1585
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1586
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1587
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    goto/16 :goto_1

    .line 1589
    :cond_12
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    if-ne v4, v15, :cond_13

    .line 1590
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1591
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1592
    const/4 v15, -0x1

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    goto/16 :goto_1

    .line 1594
    :cond_13
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    if-ne v4, v15, :cond_14

    .line 1595
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    goto/16 :goto_1

    .line 1596
    :cond_14
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginTop:I

    if-ne v4, v15, :cond_15

    .line 1597
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    goto/16 :goto_1

    .line 1598
    :cond_15
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginRight:I

    if-ne v4, v15, :cond_16

    .line 1599
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    goto/16 :goto_1

    .line 1600
    :cond_16
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    if-ne v4, v15, :cond_17

    .line 1601
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    goto/16 :goto_1

    .line 1602
    :cond_17
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginStart:I

    if-ne v4, v15, :cond_18

    .line 1603
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    goto/16 :goto_1

    .line 1604
    :cond_18
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    if-ne v4, v15, :cond_19

    .line 1605
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    goto/16 :goto_1

    .line 1606
    :cond_19
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    if-ne v4, v15, :cond_1a

    .line 1607
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    goto/16 :goto_1

    .line 1608
    :cond_1a
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    if-ne v4, v15, :cond_1b

    .line 1609
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    goto/16 :goto_1

    .line 1610
    :cond_1b
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    if-ne v4, v15, :cond_21

    .line 1611
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1612
    const/high16 v15, 0x7fc00000    # NaNf

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1613
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1614
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 1615
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 1616
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    const/16 v16, 0x2c

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1617
    .local v6, "commaIndex":I
    if-lez v6, :cond_1e

    add-int/lit8 v15, v11, -0x1

    if-ge v6, v15, :cond_1e

    .line 1618
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1619
    .local v9, "dimension":Ljava/lang/String;
    const-string v15, "W"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 1620
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1624
    :cond_1c
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 1628
    .end local v9    # "dimension":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1629
    .local v5, "colonIndex":I
    if-ltz v5, :cond_20

    add-int/lit8 v15, v11, -0x1

    if-ge v5, v15, :cond_20

    .line 1630
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1631
    .local v12, "nominator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1632
    .local v7, "denominator":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 1634
    :try_start_0
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1635
    .local v13, "nominatorValue":F
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 1636
    .local v8, "denominatorValue":F
    const/4 v15, 0x0

    cmpl-float v15, v13, v15

    if-lez v15, :cond_0

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_0

    .line 1637
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 1638
    div-float v15, v8, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->L:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1643
    .end local v8    # "denominatorValue":F
    .end local v13    # "nominatorValue":F
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 1621
    .end local v5    # "colonIndex":I
    .end local v7    # "denominator":Ljava/lang/String;
    .end local v12    # "nominator":Ljava/lang/String;
    .restart local v9    # "dimension":Ljava/lang/String;
    :cond_1d
    const-string v15, "H"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 1622
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    goto :goto_2

    .line 1626
    .end local v9    # "dimension":Ljava/lang/String;
    :cond_1e
    const/4 v6, 0x0

    goto :goto_3

    .line 1640
    .restart local v5    # "colonIndex":I
    .restart local v7    # "denominator":Ljava/lang/String;
    .restart local v8    # "denominatorValue":F
    .restart local v12    # "nominator":Ljava/lang/String;
    .restart local v13    # "nominatorValue":F
    :cond_1f
    div-float v15, v13, v8

    :try_start_1
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->L:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1648
    .end local v7    # "denominator":Ljava/lang/String;
    .end local v8    # "denominatorValue":F
    .end local v12    # "nominator":Ljava/lang/String;
    .end local v13    # "nominatorValue":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1649
    .local v14, "r":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 1651
    :try_start_2
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->L:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1652
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 1658
    .end local v5    # "colonIndex":I
    .end local v6    # "commaIndex":I
    .end local v11    # "len":I
    .end local v14    # "r":Ljava/lang/String;
    :cond_21
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    if-ne v4, v15, :cond_22

    .line 1659
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    goto/16 :goto_1

    .line 1660
    :cond_22
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    if-ne v4, v15, :cond_23

    .line 1661
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    goto/16 :goto_1

    .line 1662
    :cond_23
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I

    if-ne v4, v15, :cond_24

    .line 1663
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    goto/16 :goto_1

    .line 1664
    :cond_24
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I

    if-ne v4, v15, :cond_25

    .line 1665
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    goto/16 :goto_1

    .line 1666
    :cond_25
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    if-eq v4, v15, :cond_0

    .line 1668
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    if-eq v4, v15, :cond_0

    .line 1670
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    if-eq v4, v15, :cond_0

    .line 1672
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    if-eq v4, v15, :cond_0

    .line 1674
    sget v15, Landroid/support/constraint/c$c;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    if-eq v4, v15, :cond_0

    .line 1677
    const-string v15, "ConstraintLayout"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown attribute 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1680
    .end local v4    # "attr":I
    :cond_26
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    .line 1682
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$a;)V
    .locals 6
    .param p1, "source"    # Landroid/support/constraint/ConstraintLayout$a;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1461
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1256
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 1261
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 1266
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 1271
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1276
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1281
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1286
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1291
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1296
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1301
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1306
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1311
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1316
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1321
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1326
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1331
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1336
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 1341
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 1346
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 1351
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 1356
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 1361
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    .line 1366
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 1371
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1381
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1386
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1392
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 1398
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 1410
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 1422
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 1428
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 1434
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 1436
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 1439
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1440
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1442
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    .line 1443
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1445
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1446
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1447
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1448
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1449
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1450
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1451
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1453
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1462
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 1463
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->n:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 1464
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 1465
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1466
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1467
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1468
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1469
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1470
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->u:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1471
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1472
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->w:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1473
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1474
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1475
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->z:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1476
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->A:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1477
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->B:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1478
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->C:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 1479
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->D:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 1480
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->E:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 1481
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->F:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 1482
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 1483
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    .line 1484
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->I:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 1485
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->J:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 1486
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1487
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->L:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1488
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1489
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->N:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 1490
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->O:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 1491
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->P:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 1492
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 1493
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 1494
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 1495
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->T:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 1496
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1497
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1498
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    .line 1499
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1500
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1501
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1502
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1503
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1504
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1505
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1506
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1507
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1508
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1710
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 1261
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 1266
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 1271
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 1276
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 1281
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 1286
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 1291
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 1296
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 1301
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 1306
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 1311
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 1316
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 1321
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 1326
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 1331
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 1336
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 1341
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 1346
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 1351
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 1356
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 1361
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    .line 1366
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 1371
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 1381
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->L:F

    .line 1386
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 1392
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 1398
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 1410
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 1422
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 1428
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 1434
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 1436
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 1439
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1440
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1442
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    .line 1443
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1445
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1446
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1447
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1448
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1449
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1450
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1451
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1453
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1711
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1685
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1686
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1687
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1688
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v0, v3, :cond_1

    .line 1689
    :cond_0
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1691
    :cond_1
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v0, v3, :cond_3

    .line 1692
    :cond_2
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1694
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->o:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->m:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->n:I

    if-eq v0, v3, :cond_6

    .line 1695
    :cond_4
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1696
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->U:Z

    .line 1697
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    .line 1698
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/f;

    if-nez v0, :cond_5

    .line 1699
    new-instance v0, Landroid/support/constraint/solver/widgets/f;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/f;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1701
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->af:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/f;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->T:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/f;->a(I)V

    .line 1703
    :cond_6
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1719
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1721
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1722
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1723
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1724
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1726
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1727
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1728
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->C:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1729
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->E:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1730
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1732
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$a;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1734
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_a

    .line 1735
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    if-eq v1, v3, :cond_9

    .line 1736
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1740
    :cond_0
    :goto_1
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    if-eq v1, v3, :cond_1

    .line 1741
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1743
    :cond_1
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    if-eq v1, v3, :cond_2

    .line 1744
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1746
    :cond_2
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    if-eq v1, v3, :cond_3

    .line 1747
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 1749
    :cond_3
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    if-eq v1, v3, :cond_4

    .line 1750
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1752
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->I:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ae:F

    .line 1774
    :cond_5
    :goto_2
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    if-ne v1, v3, :cond_6

    .line 1775
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-eq v1, v3, :cond_10

    .line 1776
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1781
    :cond_6
    :goto_3
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    if-ne v1, v3, :cond_7

    .line 1782
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-eq v1, v3, :cond_11

    .line 1783
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1788
    :cond_7
    :goto_4
    return-void

    .line 1732
    .end local v0    # "isRtl":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 1737
    .restart local v0    # "isRtl":Z
    :cond_9
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    if-eq v1, v3, :cond_0

    .line 1738
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    goto :goto_1

    .line 1754
    :cond_a
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    if-eq v1, v3, :cond_b

    .line 1755
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    .line 1757
    :cond_b
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    if-eq v1, v3, :cond_c

    .line 1758
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->z:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Y:I

    .line 1760
    :cond_c
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    if-eq v1, v3, :cond_d

    .line 1761
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->A:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->aa:I

    .line 1763
    :cond_d
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    if-eq v1, v3, :cond_e

    .line 1764
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->B:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 1766
    :cond_e
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    if-eq v1, v3, :cond_f

    .line 1767
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 1769
    :cond_f
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    if-eq v1, v3, :cond_5

    .line 1770
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->H:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    goto :goto_2

    .line 1777
    :cond_10
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-eq v1, v3, :cond_6

    .line 1778
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    goto :goto_3

    .line 1784
    :cond_11
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-eq v1, v3, :cond_7

    .line 1785
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->Z:I

    goto :goto_4
.end method
