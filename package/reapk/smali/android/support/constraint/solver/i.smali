.class public Landroid/support/constraint/solver/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Z = false

.field private static final f:I = 0x3e8


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[Landroid/support/constraint/solver/SolverVariable;

.field private g:I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/constraint/solver/d;

.field private j:I

.field private k:I

.field private l:[Landroid/support/constraint/solver/d;

.field private m:[Z

.field private final n:Landroid/support/constraint/solver/e;

.field private o:[Landroid/support/constraint/solver/SolverVariable;

.field private p:I

.field private q:[Landroid/support/constraint/solver/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Landroid/support/constraint/solver/i;->g:I

    .line 44
    iput-object v3, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    .line 51
    iput v2, p0, Landroid/support/constraint/solver/i;->j:I

    .line 52
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    iput v0, p0, Landroid/support/constraint/solver/i;->k:I

    .line 53
    iput-object v3, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    .line 56
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/i;->m:[Z

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/i;->a:I

    .line 59
    iput v1, p0, Landroid/support/constraint/solver/i;->b:I

    .line 60
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    iput v0, p0, Landroid/support/constraint/solver/i;->c:I

    .line 64
    const/16 v0, 0x3e8

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/i;->o:[Landroid/support/constraint/solver/SolverVariable;

    .line 65
    iput v1, p0, Landroid/support/constraint/solver/i;->p:I

    .line 395
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/i;->d:[Landroid/support/constraint/solver/SolverVariable;

    .line 429
    new-array v0, v2, [Landroid/support/constraint/solver/d;

    iput-object v0, p0, Landroid/support/constraint/solver/i;->q:[Landroid/support/constraint/solver/d;

    .line 68
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    new-array v0, v0, [Landroid/support/constraint/solver/d;

    iput-object v0, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    .line 69
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->q()V

    .line 70
    new-instance v0, Landroid/support/constraint/solver/e;

    invoke-direct {v0}, Landroid/support/constraint/solver/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    .line 71
    return-void
.end method

.method private final a(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 4
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 253
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->c:Landroid/support/constraint/solver/k$a;

    invoke-interface {v1}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 254
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    .end local v0    # "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 257
    .restart local v0    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->b()V

    .line 258
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->a(Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 259
    iget-object v1, p0, Landroid/support/constraint/solver/i;->o:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/constraint/solver/i;->p:I

    aput-object v0, v1, v2

    .line 260
    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 219
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/i;->k:I

    if-lt v1, v2, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->a()V

    .line 222
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 223
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->a(Ljava/lang/String;)V

    .line 224
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->g:I

    .line 225
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->a:I

    .line 226
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 227
    iget-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    .line 230
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->g:I

    aput-object v0, v1, v2

    .line 232
    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 885
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v1, v2, 0x400

    .line 886
    .local v1, "mb":I
    if-lez v1, :cond_0

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    :goto_0
    return-object v2

    .line 889
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v0, v2, 0x400

    .line 890
    .local v0, "kb":I
    if-lez v0, :cond_1

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 893
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private d(Landroid/support/constraint/solver/d;)V
    .locals 2
    .param p1, "row"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 403
    iget v0, p0, Landroid/support/constraint/solver/i;->b:I

    if-lez v0, :cond_0

    .line 404
    iget-object v0, p1, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    iget-object v1, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/c;->a(Landroid/support/constraint/solver/d;[Landroid/support/constraint/solver/d;)V

    .line 405
    iget-object v0, p1, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    iget v0, v0, Landroid/support/constraint/solver/c;->a:I

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/solver/d;->h:Z

    .line 427
    :cond_0
    return-void
.end method

.method private e(Landroid/support/constraint/solver/d;)I
    .locals 20
    .param p1, "goal"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 530
    const/4 v6, 0x0

    .line 531
    .local v6, "done":Z
    const/4 v14, 0x0

    .line 532
    .local v14, "tries":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->m:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-boolean v18, v17, v7

    .line 532
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 535
    :cond_0
    const/4 v13, 0x0

    .line 537
    .local v13, "tested":I
    :goto_1
    if-nez v6, :cond_9

    .line 538
    add-int/lit8 v14, v14, 0x1

    .line 543
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/c;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 547
    .local v9, "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v9, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->m:[Z

    move-object/from16 v17, v0

    iget v0, v9, Landroid/support/constraint/solver/SolverVariable;->c:I

    move/from16 v18, v0

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_3

    .line 549
    const/4 v9, 0x0

    .line 559
    :cond_1
    :goto_2
    if-eqz v9, :cond_8

    .line 570
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 571
    .local v8, "min":F
    const/4 v11, -0x1

    .line 572
    .local v11, "pivotRowIndex":I
    const/4 v12, 0x0

    .line 574
    .local v12, "strength":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v5

    .line 576
    .local v5, "d_j":F
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v17, v0

    aget-object v4, v17, v7

    .line 578
    .local v4, "current":Landroid/support/constraint/solver/d;
    iget-object v0, v4, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 579
    .local v16, "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 576
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 551
    .end local v4    # "current":Landroid/support/constraint/solver/d;
    .end local v5    # "d_j":F
    .end local v8    # "min":F
    .end local v11    # "pivotRowIndex":I
    .end local v12    # "strength":I
    .end local v16    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->m:[Z

    move-object/from16 v17, v0

    iget v0, v9, Landroid/support/constraint/solver/SolverVariable;->c:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aput-boolean v19, v17, v18

    .line 552
    add-int/lit8 v13, v13, 0x1

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 554
    const/4 v6, 0x1

    goto :goto_2

    .line 583
    .restart local v4    # "current":Landroid/support/constraint/solver/d;
    .restart local v5    # "d_j":F
    .restart local v8    # "min":F
    .restart local v11    # "pivotRowIndex":I
    .restart local v12    # "strength":I
    .restart local v16    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_4
    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 586
    iget v2, v4, Landroid/support/constraint/solver/d;->d:F

    .line 587
    .local v2, "C":F
    iget-object v0, v4, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v3

    .line 588
    .local v3, "a_j":F
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-lez v17, :cond_2

    .line 589
    div-float v15, v5, v3

    .line 590
    .local v15, "value":F
    iget v0, v9, Landroid/support/constraint/solver/SolverVariable;->e:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v12, :cond_2

    cmpg-float v17, v15, v8

    if-gez v17, :cond_2

    .line 591
    move v8, v15

    .line 592
    iget v12, v9, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 593
    move v11, v7

    goto :goto_4

    .line 601
    .end local v2    # "C":F
    .end local v3    # "a_j":F
    .end local v4    # "current":Landroid/support/constraint/solver/d;
    .end local v15    # "value":F
    .end local v16    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v11, v0, :cond_7

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v17, v0

    aget-object v10, v17, v11

    .line 607
    .local v10, "pivotEquation":Landroid/support/constraint/solver/d;
    iget-object v0, v10, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 608
    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;)V

    .line 609
    iget-object v0, v10, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v11, v0, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 611
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/d;)Z

    .line 611
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 615
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/d;)Z

    goto/16 :goto_1

    .line 623
    .end local v10    # "pivotEquation":Landroid/support/constraint/solver/d;
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 629
    .end local v5    # "d_j":F
    .end local v8    # "min":F
    .end local v11    # "pivotRowIndex":I
    .end local v12    # "strength":I
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 632
    .end local v9    # "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    :cond_9
    return v14
.end method

.method private f(Landroid/support/constraint/solver/d;)I
    .locals 20
    .param p1, "goal"    # Landroid/support/constraint/solver/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v15, 0x0

    .line 647
    .local v15, "tries":I
    const/4 v8, 0x0

    .line 648
    .local v8, "infeasibleSystem":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    .line 650
    .local v17, "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 648
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/solver/d;->d:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_0

    .line 654
    const/4 v8, 0x1

    .line 660
    .end local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_2
    if-eqz v8, :cond_a

    .line 668
    const/4 v6, 0x0

    .line 669
    .local v6, "done":Z
    const/4 v15, 0x0

    .line 670
    :goto_1
    if-nez v6, :cond_a

    .line 671
    add-int/lit8 v15, v15, 0x1

    .line 675
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 676
    .local v10, "min":F
    const v14, 0x7fffffff

    .line 677
    .local v14, "strength":I
    const/4 v13, -0x1

    .line 678
    .local v13, "pivotRowIndex":I
    const/4 v11, -0x1

    .line 680
    .local v11, "pivotColumnIndex":I
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_7

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v4, v18, v7

    .line 682
    .local v4, "current":Landroid/support/constraint/solver/d;
    iget-object v0, v4, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    .line 683
    .restart local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 680
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 688
    :cond_4
    iget v0, v4, Landroid/support/constraint/solver/d;->d:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 693
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    aget-object v3, v18, v9

    .line 695
    .local v3, "candidate":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v4, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 696
    .local v2, "a_j":F
    const/16 v18, 0x0

    cmpg-float v18, v2, v18

    if-gtz v18, :cond_6

    .line 693
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 699
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/c;->c(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v5

    .line 700
    .local v5, "d_j":F
    div-float v16, v5, v2

    .line 705
    .local v16, "value":F
    iget v0, v3, Landroid/support/constraint/solver/SolverVariable;->e:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v14, :cond_5

    cmpg-float v18, v16, v10

    if-gez v18, :cond_5

    .line 706
    move/from16 v10, v16

    .line 707
    move v13, v7

    .line 708
    move v11, v9

    .line 709
    iget v14, v3, Landroid/support/constraint/solver/SolverVariable;->e:I

    goto :goto_4

    .line 715
    .end local v2    # "a_j":F
    .end local v3    # "candidate":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "current":Landroid/support/constraint/solver/d;
    .end local v5    # "d_j":F
    .end local v9    # "j":I
    .end local v16    # "value":F
    .end local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_9

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v12, v18, v13

    .line 722
    .local v12, "pivotEquation":Landroid/support/constraint/solver/d;
    iget-object v0, v12, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;)V

    .line 724
    iget-object v0, v12, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v13, v0, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 726
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/d;)Z

    .line 726
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 731
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/d;)Z

    goto/16 :goto_1

    .line 736
    .end local v12    # "pivotEquation":Landroid/support/constraint/solver/d;
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 747
    .end local v6    # "done":Z
    .end local v10    # "min":F
    .end local v11    # "pivotColumnIndex":I
    .end local v13    # "pivotRowIndex":I
    .end local v14    # "strength":I
    :cond_a
    const/4 v8, 0x0

    .line 748
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/i;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_d

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    .line 750
    .restart local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 748
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 753
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/solver/d;->d:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_b

    .line 754
    const/4 v8, 0x1

    .line 759
    .end local v17    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_d
    if-eqz v8, :cond_e

    .line 763
    :cond_e
    return v15
.end method

.method private q()V
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v1, v2, v0

    .line 97
    .local v1, "row":Landroid/support/constraint/solver/d;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->b:Landroid/support/constraint/solver/k$a;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "row":Landroid/support/constraint/solver/d;
    :cond_1
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v0, v0, Landroid/support/constraint/solver/e;->b:Landroid/support/constraint/solver/k$a;

    iget-object v1, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v0, v2, :cond_0

    .line 768
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v1, v2, v0

    .line 769
    .local v1, "row":Landroid/support/constraint/solver/d;
    iget-object v2, v1, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    iget v3, v1, Landroid/support/constraint/solver/d;->d:F

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->f:F

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    .end local v1    # "row":Landroid/support/constraint/solver/d;
    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Rows ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/i;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") :\n\t | C | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/i;->a:I

    if-gt v0, v3, :cond_0

    .line 876
    iget-object v3, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v3, v3, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v3, v0

    .line 877
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 882
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v1}, Landroid/support/constraint/solver/i;->a(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 279
    .local v0, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 282
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->f:F

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .locals 4
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 155
    if-nez p1, :cond_1

    .line 156
    const/4 v0, 0x0

    .line 181
    .end local p1    # "anchor":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 158
    .restart local p1    # "anchor":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/i;->k:I

    if-lt v1, v2, :cond_2

    .line 159
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->a()V

    .line 161
    :cond_2
    const/4 v0, 0x0

    .line 162
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    instance-of v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 163
    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 164
    if-nez v0, :cond_3

    move-object v1, p1

    .line 165
    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/e;)V

    .line 166
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 168
    :cond_3
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    iget v2, p0, Landroid/support/constraint/solver/i;->g:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 171
    :cond_4
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    if-eq v1, v3, :cond_5

    .line 172
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->b()V

    .line 174
    :cond_5
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->g:I

    .line 175
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->a:I

    .line 176
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 177
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v1, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 178
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->g:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 301
    iget-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    .line 304
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 305
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_1

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/i;->b(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 308
    :cond_1
    return-object v0
.end method

.method public a(I)Landroid/support/constraint/solver/d;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/i;->j:I

    .line 82
    iget-object v0, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    iget v1, p0, Landroid/support/constraint/solver/i;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/d;

    iput-object v0, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    .line 83
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v0, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v0, v0, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->j:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    .line 84
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/i;->m:[Z

    .line 85
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    iput v0, p0, Landroid/support/constraint/solver/i;->k:I

    .line 86
    iget v0, p0, Landroid/support/constraint/solver/i;->j:I

    iput v0, p0, Landroid/support/constraint/solver/i;->c:I

    .line 87
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->r()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    .line 89
    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 5
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 992
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 993
    .local v0, "idx":I
    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->d:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 994
    iget-object v3, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v2, v3, v0

    .line 995
    .local v2, "row":Landroid/support/constraint/solver/d;
    iget-boolean v3, v2, Landroid/support/constraint/solver/d;->h:Z

    if-eqz v3, :cond_0

    .line 996
    int-to-float v3, p2

    iput v3, v2, Landroid/support/constraint/solver/d;->d:F

    .line 1008
    :goto_0
    return-void

    .line 999
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v1

    .line 1000
    .local v1, "newRow":Landroid/support/constraint/solver/d;
    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 1001
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    goto :goto_0

    .line 1004
    .end local v1    # "newRow":Landroid/support/constraint/solver/d;
    .end local v2    # "row":Landroid/support/constraint/solver/d;
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v2

    .line 1005
    .restart local v2    # "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 1006
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 12
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "d"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "m2"    # I
    .param p8, "strength"    # I

    .prologue
    .line 952
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v1

    .line 953
    .local v1, "row":Landroid/support/constraint/solver/d;
    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/d;

    .line 954
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 955
    .local v10, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v11

    .line 956
    .local v11, "error2":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v0, p8

    iput v0, v10, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 957
    move/from16 v0, p8

    iput v0, v11, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 958
    invoke-virtual {v1, v10, v11}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/d;

    .line 959
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 960
    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 2
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 911
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 912
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 913
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 914
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 915
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 916
    return-void
.end method

.method a(Landroid/support/constraint/solver/d;)V
    .locals 2
    .param p1, "row"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 208
    .local v0, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 210
    .local v1, "error2":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/d;

    .line 211
    return-void
.end method

.method a(Landroid/support/constraint/solver/d;I)V
    .locals 1
    .param p1, "row"    # Landroid/support/constraint/solver/d;
    .param p2, "sign"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 215
    .local v0, "error":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, p2}, Landroid/support/constraint/solver/d;->c(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 216
    return-void
.end method

.method a(Landroid/support/constraint/solver/d;Landroid/support/constraint/solver/SolverVariable;)V
    .locals 2
    .param p1, "target"    # Landroid/support/constraint/solver/d;
    .param p2, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 780
    iget v0, p2, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 781
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 782
    iget-object v1, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/d;)Z

    .line 784
    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/solver/h;)V
    .locals 1
    .param p1, "e"    # Landroid/support/constraint/solver/h;

    .prologue
    .line 150
    invoke-static {p0, p1}, Landroid/support/constraint/solver/f;->a(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/h;)Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 151
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 152
    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 3
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    .line 286
    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 287
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v0, :cond_0

    .line 288
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->f:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 290
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v2, v0

    .line 119
    .local v1, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/support/constraint/solver/SolverVariable;->b()V

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->c:Landroid/support/constraint/solver/k$a;

    iget-object v3, p0, Landroid/support/constraint/solver/i;->o:[Landroid/support/constraint/solver/SolverVariable;

    iget v4, p0, Landroid/support/constraint/solver/i;->p:I

    invoke-interface {v2, v3, v4}, Landroid/support/constraint/solver/k$a;->a([Ljava/lang/Object;I)V

    .line 124
    iput v5, p0, Landroid/support/constraint/solver/i;->p:I

    .line 126
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Landroid/support/constraint/solver/i;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 130
    :cond_2
    iput v5, p0, Landroid/support/constraint/solver/i;->g:I

    .line 131
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->r()V

    .line 132
    iput-object v6, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    .line 133
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/i;->a:I

    .line 134
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v0, v2, :cond_3

    .line 135
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v2, v2, v0

    iput-boolean v5, v2, Landroid/support/constraint/solver/d;->e:Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->q()V

    .line 138
    iput v5, p0, Landroid/support/constraint/solver/i;->b:I

    .line 139
    return-void
.end method

.method public b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 2
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v0

    .line 930
    .local v0, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 931
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 932
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/d;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 933
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 934
    return-void
.end method

.method public b(Landroid/support/constraint/solver/d;)V
    .locals 5
    .param p1, "goal"    # Landroid/support/constraint/solver/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v3, p1, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    invoke-virtual {v3, p1, v4}, Landroid/support/constraint/solver/c;->a(Landroid/support/constraint/solver/d;[Landroid/support/constraint/solver/d;)V

    .line 360
    invoke-virtual {p1}, Landroid/support/constraint/solver/d;->b()Z

    move-result v2

    .line 362
    .local v2, "validGoal":Z
    if-nez v2, :cond_0

    .line 363
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->s()V

    .line 393
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/i;->f(Landroid/support/constraint/solver/d;)I

    move-result v1

    .line 383
    .local v1, "tries":I
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/i;->e(Landroid/support/constraint/solver/d;)I

    move-result v1

    .line 388
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v1    # "tries":I
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->s()V

    .line 391
    throw v0
.end method

.method public c()Landroid/support/constraint/solver/d;
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->b:Landroid/support/constraint/solver/k$a;

    invoke-interface {v1}, Landroid/support/constraint/solver/k$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/d;

    .line 186
    .local v0, "row":Landroid/support/constraint/solver/d;
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/support/constraint/solver/d;

    .end local v0    # "row":Landroid/support/constraint/solver/d;
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/d;-><init>(Landroid/support/constraint/solver/e;)V

    .line 191
    .restart local v0    # "row":Landroid/support/constraint/solver/d;
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/d;->e()V

    goto :goto_0
.end method

.method public c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v2

    .line 974
    .local v2, "row":Landroid/support/constraint/solver/d;
    invoke-virtual {v2, p1, p2, p3}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/d;

    .line 975
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 976
    .local v0, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 977
    .local v1, "error2":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v0, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 978
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 979
    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/d;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/d;

    .line 980
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/i;->c(Landroid/support/constraint/solver/d;)V

    .line 981
    return-void
.end method

.method public c(Landroid/support/constraint/solver/d;)V
    .locals 7
    .param p1, "row"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 522
    :cond_0
    return-void

    .line 439
    :cond_1
    iget v4, p0, Landroid/support/constraint/solver/i;->b:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroid/support/constraint/solver/i;->c:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroid/support/constraint/solver/i;->k:I

    if-lt v4, v5, :cond_3

    .line 440
    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->a()V

    .line 446
    :cond_3
    iget-boolean v4, p1, Landroid/support/constraint/solver/d;->h:Z

    if-nez v4, :cond_4

    .line 448
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/i;->d(Landroid/support/constraint/solver/d;)V

    .line 451
    invoke-virtual {p1}, Landroid/support/constraint/solver/d;->g()V

    .line 458
    invoke-virtual {p1}, Landroid/support/constraint/solver/d;->h()V

    .line 460
    invoke-virtual {p1}, Landroid/support/constraint/solver/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    :cond_4
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    iget v5, p0, Landroid/support/constraint/solver/i;->b:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_5

    .line 474
    iget-object v4, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v4, v4, Landroid/support/constraint/solver/e;->b:Landroid/support/constraint/solver/k$a;

    iget-object v5, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    iget v6, p0, Landroid/support/constraint/solver/i;->b:I

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Landroid/support/constraint/solver/k$a;->a(Ljava/lang/Object;)Z

    .line 476
    :cond_5
    iget-boolean v4, p1, Landroid/support/constraint/solver/d;->h:Z

    if-nez v4, :cond_6

    .line 477
    invoke-virtual {p1}, Landroid/support/constraint/solver/d;->a()V

    .line 479
    :cond_6
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    iget v5, p0, Landroid/support/constraint/solver/i;->b:I

    aput-object p1, v4, v5

    .line 480
    iget-object v4, p1, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    iget v5, p0, Landroid/support/constraint/solver/i;->b:I

    iput v5, v4, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 481
    iget v4, p0, Landroid/support/constraint/solver/i;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/constraint/solver/i;->b:I

    .line 483
    iget-object v4, p1, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    iget v2, v4, Landroid/support/constraint/solver/SolverVariable;->j:I

    .line 484
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 485
    :goto_0
    iget-object v4, p0, Landroid/support/constraint/solver/i;->q:[Landroid/support/constraint/solver/d;

    array-length v4, v4

    if-ge v4, v2, :cond_7

    .line 486
    iget-object v4, p0, Landroid/support/constraint/solver/i;->q:[Landroid/support/constraint/solver/d;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Landroid/support/constraint/solver/d;

    iput-object v4, p0, Landroid/support/constraint/solver/i;->q:[Landroid/support/constraint/solver/d;

    goto :goto_0

    .line 488
    :cond_7
    iget-object v1, p0, Landroid/support/constraint/solver/i;->q:[Landroid/support/constraint/solver/d;

    .line 500
    .local v1, "clients":[Landroid/support/constraint/solver/d;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 501
    iget-object v4, p1, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 504
    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_0

    .line 505
    aget-object v0, v1, v3

    .line 506
    .local v0, "client":Landroid/support/constraint/solver/d;
    if-ne v0, p1, :cond_9

    .line 504
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 510
    :cond_9
    iget-object v4, v0, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    invoke-virtual {v4, v0, p1}, Landroid/support/constraint/solver/c;->a(Landroid/support/constraint/solver/d;Landroid/support/constraint/solver/d;)V

    .line 514
    invoke-virtual {v0}, Landroid/support/constraint/solver/d;->a()V

    goto :goto_3
.end method

.method public d()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .prologue
    .line 195
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/i;->k:I

    if-lt v1, v2, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->a()V

    .line 198
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 199
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->g:I

    .line 200
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->a:I

    .line 201
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 202
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->g:I

    aput-object v0, v1, v2

    .line 203
    return-object v0
.end method

.method e()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .prologue
    .line 236
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/i;->k:I

    if-lt v1, v2, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->a()V

    .line 239
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/i;->a(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 240
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->g:I

    .line 241
    iget v1, p0, Landroid/support/constraint/solver/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/i;->a:I

    .line 242
    iget v1, p0, Landroid/support/constraint/solver/i;->g:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 243
    iget-object v1, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v1, v1, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/i;->g:I

    aput-object v0, v1, v2

    .line 244
    return-object v0
.end method

.method public f()Landroid/support/constraint/solver/d;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 319
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-virtual {v2}, Landroid/support/constraint/solver/d;->e()V

    .line 324
    :goto_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/i;->a:I

    if-ge v0, v2, :cond_2

    .line 325
    iget-object v2, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    iget-object v2, v2, Landroid/support/constraint/solver/e;->e:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v2, v0

    .line 326
    .local v1, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_0

    .line 328
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    iget-object v2, v2, Landroid/support/constraint/solver/d;->g:Landroid/support/constraint/solver/c;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/solver/c;->a(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    .end local v0    # "i":I
    .end local v1    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->c()Landroid/support/constraint/solver/d;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    goto :goto_0

    .line 336
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/support/constraint/solver/i;->g()V

    .line 343
    iget-object v0, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/i;->b(Landroid/support/constraint/solver/d;)V

    .line 344
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 791
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->t()V

    .line 792
    const-string v1, ""

    .line 793
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v0, v2, :cond_0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    if-eqz v2, :cond_1

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 800
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 804
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->t()V

    .line 805
    const-string v1, ""

    .line 806
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v0, v2, :cond_0

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    if-eqz v2, :cond_1

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-virtual {v3}, Landroid/support/constraint/solver/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 817
    invoke-direct {p0}, Landroid/support/constraint/solver/i;->t()V

    .line 818
    const-string v1, ""

    .line 819
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v0, v2, :cond_1

    .line 820
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/d;->b:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    if-eqz v2, :cond_2

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/i;->i:Landroid/support/constraint/solver/d;

    invoke-virtual {v3}, Landroid/support/constraint/solver/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public l()I
    .locals 3

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v1, v2, :cond_1

    .line 834
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/d;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 833
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_1
    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Landroid/support/constraint/solver/i;->b:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Landroid/support/constraint/solver/i;->g:I

    return v0
.end method

.method public o()V
    .locals 8

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "count":I
    const/4 v3, 0x0

    .line 850
    .local v3, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/support/constraint/solver/i;->j:I

    if-ge v2, v4, :cond_1

    .line 851
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 852
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/support/constraint/solver/d;->f()I

    move-result v4

    add-int/2addr v3, v4

    .line 850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_1
    const/4 v0, 0x0

    .line 856
    .local v0, "actualRowSize":I
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Landroid/support/constraint/solver/i;->b:I

    if-ge v2, v4, :cond_3

    .line 857
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 858
    iget-object v4, p0, Landroid/support/constraint/solver/i;->l:[Landroid/support/constraint/solver/d;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/support/constraint/solver/d;->f()I

    move-result v4

    add-int/2addr v0, v4

    .line 856
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 862
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Linear System -> Table size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->j:I

    iget v7, p0, Landroid/support/constraint/solver/i;->j:I

    mul-int/2addr v6, v7

    .line 863
    invoke-direct {p0, v6}, Landroid/support/constraint/solver/i;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") -- row sizes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 864
    invoke-direct {p0, v3}, Landroid/support/constraint/solver/i;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 865
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/i;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cols: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/solver/i;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " occupied cells, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 868
    invoke-direct {p0, v1}, Landroid/support/constraint/solver/i;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/support/constraint/solver/j;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " created Link variables"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 862
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public p()Landroid/support/constraint/solver/e;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Landroid/support/constraint/solver/i;->n:Landroid/support/constraint/solver/e;

    return-object v0
.end method
