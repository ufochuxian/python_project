.class Landroid/support/v4/app/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ao$a;
    }
.end annotation


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/ao;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    return-void
.end method

.method private static a(Landroid/support/v4/app/ao$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/ao$a;
    .locals 0
    .param p0, "containerTransition"    # Landroid/support/v4/app/ao$a;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ao$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/ao$a;",
            ">;I)",
            "Landroid/support/v4/app/ao$a;"
        }
    .end annotation

    .prologue
    .line 1110
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/ao$a;>;"
    if-nez p0, :cond_0

    .line 1111
    new-instance p0, Landroid/support/v4/app/ao$a;

    .end local p0    # "containerTransition":Landroid/support/v4/app/ao$a;
    invoke-direct {p0}, Landroid/support/v4/app/ao$a;-><init>()V

    .line 1112
    .restart local p0    # "containerTransition":Landroid/support/v4/app/ao$a;
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    :cond_0
    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/k/a;
    .locals 12
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/t;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/t;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/support/v4/k/a;

    invoke-direct {v2}, Landroid/support/v4/k/a;-><init>()V

    .line 139
    .local v2, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v6, p4, -0x1

    .local v6, "recordNum":I
    :goto_0
    if-lt v6, p3, :cond_4

    .line 140
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/t;

    .line 141
    .local v5, "record":Landroid/support/v4/app/t;
    invoke-virtual {v5, p0}, Landroid/support/v4/app/t;->f(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 139
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 145
    .local v1, "isPop":Z
    iget-object v11, v5, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 146
    iget-object v11, v5, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 149
    .local v3, "numSharedElements":I
    if-eqz v1, :cond_2

    .line 150
    iget-object v10, v5, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 151
    .local v10, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v5, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .line 156
    .local v8, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 157
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 158
    .local v7, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 159
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .local v4, "previousTarget":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {v2, v7, v4}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    .end local v0    # "i":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, v5, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 154
    .restart local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v5, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .restart local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 163
    .restart local v0    # "i":I
    .restart local v4    # "previousTarget":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v7, v9}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 168
    .end local v0    # "i":I
    .end local v1    # "isPop":Z
    .end local v3    # "numSharedElements":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v5    # "record":Landroid/support/v4/app/t;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method static synthetic a(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/k/a;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Landroid/support/v4/app/ao$a;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ao;->c(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/k/a;
    .param p1, "x1"    # Landroid/support/v4/app/ao$a;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z

    .prologue
    .line 400
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 401
    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    return-object v1

    .line 403
    :cond_1
    if-eqz p2, :cond_2

    .line 404
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v1

    .line 403
    :goto_1
    invoke-static {v1}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "transition":Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/app/ap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 405
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z

    .prologue
    .line 413
    if-nez p0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 416
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/support/v4/app/ao$a;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/ao$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    .line 467
    .local v3, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    .line 468
    .local v4, "outFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_0
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    .line 472
    :cond_1
    const/4 v12, 0x0

    .line 538
    :goto_0
    return-object v12

    .line 475
    :cond_2
    move-object/from16 v0, p3

    iget-boolean v5, v0, Landroid/support/v4/app/ao$a;->b:Z

    .line 476
    .local v5, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    .line 479
    .local v12, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;

    move-result-object v10

    .line 482
    .local v10, "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/support/v4/app/ao;->c(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;

    move-result-object v6

    .line 485
    .local v6, "inSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    const/4 v12, 0x0

    .line 487
    if-eqz v10, :cond_3

    .line 488
    invoke-virtual {v10}, Landroid/support/v4/k/a;->clear()V

    .line 490
    :cond_3
    if-eqz v6, :cond_4

    .line 491
    invoke-virtual {v6}, Landroid/support/v4/k/a;->clear()V

    .line 500
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    :goto_2
    if-nez p6, :cond_7

    if-nez p7, :cond_7

    if-nez v12, :cond_7

    .line 502
    const/4 v12, 0x0

    goto :goto_0

    .line 477
    .end local v6    # "inSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    .end local v10    # "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    :cond_5
    invoke-static {v3, v4, v5}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 495
    .restart local v6    # "inSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v10    # "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 494
    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Landroid/support/v4/app/ao;->a(Ljava/util/ArrayList;Landroid/support/v4/k/a;Ljava/util/Collection;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->values()Ljava/util/Collection;

    move-result-object v2

    .line 496
    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Landroid/support/v4/app/ao;->a(Ljava/util/ArrayList;Landroid/support/v4/k/a;Ljava/util/Collection;)V

    goto :goto_2

    .line 505
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_7
    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v10, v2}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V

    .line 509
    if-eqz v12, :cond_9

    .line 510
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 513
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/support/v4/app/ao$a;->e:Z

    .line 514
    .local v9, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/support/v4/app/ao$a;->f:Landroid/support/v4/app/t;

    .line 515
    .local v11, "outTransaction":Landroid/support/v4/app/t;
    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/k/a;ZLandroid/support/v4/app/t;)V

    .line 517
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 518
    .local v8, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v5}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v7

    .line 520
    .local v7, "epicenterView":Landroid/view/View;
    if-eqz v7, :cond_8

    .line 521
    move-object/from16 v0, p6

    invoke-static {v0, v8}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 528
    .end local v9    # "outIsPop":Z
    .end local v11    # "outTransaction":Landroid/support/v4/app/t;
    :cond_8
    :goto_3
    new-instance v2, Landroid/support/v4/app/ao$3;

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/app/ao$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Landroid/support/v4/app/bn;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/bn;

    goto/16 :goto_0

    .line 524
    .end local v7    # "epicenterView":Landroid/view/View;
    .end local v8    # "epicenter":Landroid/graphics/Rect;
    :cond_9
    const/4 v8, 0x0

    .line 525
    .restart local v8    # "epicenter":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .restart local v7    # "epicenterView":Landroid/view/View;
    goto :goto_3
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "enterTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isPop"    # Z

    .prologue
    .line 938
    const/4 v0, 0x1

    .line 939
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 940
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 949
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 951
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, "transition":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 941
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    .line 956
    :cond_2
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/ap;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "transition":Ljava/lang/Object;
    goto :goto_1
.end method

.method private static a(Landroid/support/v4/k/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "map":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v4/k/a;->size()I

    move-result v1

    .line 793
    .local v1, "numElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 794
    invoke-virtual {p0, v0}, Landroid/support/v4/k/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    invoke-virtual {p0, v0}, Landroid/support/v4/k/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 798
    :goto_1
    return-object v2

    .line 793
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ao;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/Fragment;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/support/v4/k/a;
    .param p4, "x4"    # Z

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/ah;ILandroid/support/v4/app/ao$a;Landroid/view/View;Landroid/support/v4/k/a;)V
    .locals 22
    .param p0, "fragmentManager"    # Landroid/support/v4/app/ah;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/ao$a;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ah;",
            "I",
            "Landroid/support/v4/app/ao$a;",
            "Landroid/view/View;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p4, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 190
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/ah;->v:Landroid/support/v4/app/ad;

    invoke-virtual {v3}, Landroid/support/v4/app/ad;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/ah;->v:Landroid/support/v4/app/ad;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/app/ad;->a(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 193
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_0
    if-nez v2, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 197
    .local v17, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    move-object/from16 v20, v0

    .line 198
    .local v20, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/ao$a;->b:Z

    move/from16 v18, v0

    .line 199
    .local v18, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/ao$a;->e:Z

    move/from16 v21, v0

    .line 201
    .local v21, "outIsPop":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static/range {v17 .. v18}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 204
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .local v9, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 206
    invoke-static/range {v2 .. v9}, Landroid/support/v4/app/ao;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 210
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_3

    if-nez v15, :cond_3

    if-eqz v9, :cond_1

    .line 215
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/ao;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 218
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Landroid/support/v4/app/ao;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    .line 221
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x4

    invoke-static {v12, v3}, Landroid/support/v4/app/ao;->b(Ljava/util/ArrayList;I)V

    .line 223
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 226
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 227
    move-object/from16 v0, v20

    invoke-static {v9, v0, v14}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 229
    invoke-static {v7}, Landroid/support/v4/app/ap;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .local v19, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 230
    invoke-static/range {v10 .. v16}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 233
    invoke-static {v2, v10}, Landroid/support/v4/app/ap;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 234
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v2, v6, v7, v0, v1}, Landroid/support/v4/app/ap;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 236
    const/4 v3, 0x0

    invoke-static {v12, v3}, Landroid/support/v4/app/ao;->b(Ljava/util/ArrayList;I)V

    .line 237
    invoke-static {v15, v6, v7}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static a(Landroid/support/v4/app/ah;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 12
    .param p0, "fragmentManager"    # Landroid/support/v4/app/ah;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isOptimized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ah;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/t;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/t;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v10, p0, Landroid/support/v4/app/ah;->t:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v10, v11, :cond_1

    .line 118
    :cond_0
    return-void

    .line 87
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 89
    .local v9, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/ao$a;>;"
    move v3, p3

    .local v3, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_3

    .line 90
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/t;

    .line 91
    .local v8, "record":Landroid/support/v4/app/t;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 92
    .local v4, "isPop":Z
    if-eqz v4, :cond_2

    .line 93
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/t;Landroid/util/SparseArray;Z)V

    .line 89
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/t;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 99
    .end local v4    # "isPop":Z
    .end local v8    # "record":Landroid/support/v4/app/t;
    :cond_3
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Landroid/support/v4/app/ah;->u:Landroid/support/v4/app/af;

    invoke-virtual {v10}, Landroid/support/v4/app/af;->i()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    .local v6, "nonExistentView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 102
    .local v7, "numContainers":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_0

    .line 103
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 104
    .local v1, "containerId":I
    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Landroid/support/v4/app/ao;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/k/a;

    move-result-object v5

    .line 107
    .local v5, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ao$a;

    .line 109
    .local v2, "containerTransition":Landroid/support/v4/app/ao$a;
    if-eqz p5, :cond_4

    .line 110
    invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/ah;ILandroid/support/v4/app/ao$a;Landroid/view/View;Landroid/support/v4/k/a;)V

    .line 102
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 113
    :cond_4
    invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/ah;ILandroid/support/v4/app/ao$a;Landroid/view/View;Landroid/support/v4/k/a;)V

    goto :goto_3
.end method

.method private static a(Landroid/support/v4/app/t;Landroid/support/v4/app/t$a;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .param p0, "transaction"    # Landroid/support/v4/app/t;
    .param p1, "op"    # Landroid/support/v4/app/t$a;
    .param p3, "isPop"    # Z
    .param p4, "isOptimizedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/t;",
            "Landroid/support/v4/app/t$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/ao$a;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/ao$a;>;"
    iget-object v2, p1, Landroid/support/v4/app/t$a;->b:Landroid/support/v4/app/Fragment;

    .line 1017
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    iget v8, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1018
    .local v8, "containerId":I
    if-nez v8, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    if-eqz p3, :cond_7

    sget-object v3, Landroid/support/v4/app/ao;->a:[I

    iget v4, p1, Landroid/support/v4/app/t$a;->a:I

    aget v7, v3, v4

    .line 1022
    .local v7, "command":I
    :goto_1
    const/4 v11, 0x0

    .line 1023
    .local v11, "setLastIn":Z
    const/4 v13, 0x0

    .line 1024
    .local v13, "wasRemoved":Z
    const/4 v10, 0x0

    .line 1025
    .local v10, "setFirstOut":Z
    const/4 v12, 0x0

    .line 1026
    .local v12, "wasAdded":Z
    packed-switch v7, :pswitch_data_0

    .line 1064
    :goto_2
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/ao$a;

    .line 1065
    .local v9, "containerTransition":Landroid/support/v4/app/ao$a;
    if-eqz v11, :cond_2

    .line 1067
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/ao$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/ao$a;

    move-result-object v9

    .line 1068
    iput-object v2, v9, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    .line 1069
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/support/v4/app/ao$a;->b:Z

    .line 1070
    iput-object p0, v9, Landroid/support/v4/app/ao$a;->c:Landroid/support/v4/app/t;

    .line 1072
    :cond_2
    if-nez p4, :cond_4

    if-eqz v12, :cond_4

    .line 1073
    if-eqz v9, :cond_3

    iget-object v3, v9, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_3

    .line 1074
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    .line 1081
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    .line 1082
    .local v1, "manager":Landroid/support/v4/app/ah;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    iget v3, v1, Landroid/support/v4/app/ah;->t:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/support/v4/app/t;->D:Z

    if-nez v3, :cond_4

    .line 1084
    invoke-virtual {v1, v2}, Landroid/support/v4/app/ah;->f(Landroid/support/v4/app/Fragment;)V

    .line 1085
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1088
    .end local v1    # "manager":Landroid/support/v4/app/ah;
    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    iget-object v3, v9, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 1090
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/ao$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/ao$a;

    move-result-object v9

    .line 1091
    iput-object v2, v9, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    .line 1092
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/support/v4/app/ao$a;->e:Z

    .line 1093
    iput-object p0, v9, Landroid/support/v4/app/ao$a;->f:Landroid/support/v4/app/t;

    .line 1096
    :cond_6
    if-nez p4, :cond_0

    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    iget-object v3, v9, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_0

    .line 1098
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 1021
    .end local v7    # "command":I
    .end local v9    # "containerTransition":Landroid/support/v4/app/ao$a;
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    .end local v12    # "wasAdded":Z
    .end local v13    # "wasRemoved":Z
    :cond_7
    iget v7, p1, Landroid/support/v4/app/t$a;->a:I

    goto :goto_1

    .line 1028
    .restart local v7    # "command":I
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "setLastIn":Z
    .restart local v12    # "wasAdded":Z
    .restart local v13    # "wasRemoved":Z
    :pswitch_1
    if-eqz p4, :cond_9

    .line 1029
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_8

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_8

    const/4 v11, 0x1

    .line 1033
    :goto_3
    const/4 v12, 0x1

    .line 1034
    goto :goto_2

    .line 1029
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1031
    :cond_9
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto :goto_3

    .line 1037
    :pswitch_2
    if-eqz p4, :cond_a

    .line 1038
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1042
    :goto_4
    const/4 v12, 0x1

    .line 1043
    goto/16 :goto_2

    .line 1040
    :cond_a
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_b

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_b

    const/4 v11, 0x1

    :goto_5
    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 1045
    :pswitch_3
    if-eqz p4, :cond_d

    .line 1046
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_c

    const/4 v10, 0x1

    .line 1050
    :goto_6
    const/4 v13, 0x1

    .line 1051
    goto/16 :goto_2

    .line 1046
    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    .line 1048
    :cond_d
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_e

    const/4 v10, 0x1

    :goto_7
    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    .line 1054
    :pswitch_4
    if-eqz p4, :cond_10

    .line 1055
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_f

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_f

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1056
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    iget v3, v2, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    const/4 v10, 0x1

    .line 1061
    :goto_8
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1056
    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    .line 1059
    :cond_10
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_11

    const/4 v10, 0x1

    :goto_9
    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    goto :goto_9

    .line 1026
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/t;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/support/v4/app/t;
    .param p2, "isOptimized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/t;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/ao$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/ao$a;>;"
    iget-object v3, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 974
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 975
    iget-object v3, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/t$a;

    .line 976
    .local v1, "op":Landroid/support/v4/app/t$a;
    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/t;Landroid/support/v4/app/t$a;Landroid/util/SparseArray;ZZ)V

    .line 974
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "op":Landroid/support/v4/app/t$a;
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/k/a;Landroid/support/v4/k/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/k/a;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 859
    invoke-virtual {p0, v0}, Landroid/support/v4/k/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/support/v4/k/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-virtual {p0, v0}, Landroid/support/v4/k/a;->d(I)Ljava/lang/Object;

    .line 858
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 864
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "enterTransition"    # Ljava/lang/Object;
    .param p6, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/support/v4/app/ao$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/ao$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/bn;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/bn;

    .line 384
    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "exitingFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_0

    .line 251
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 253
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 252
    invoke-static {p0, v1, p2}, Landroid/support/v4/app/ap;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 254
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 255
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroid/support/v4/app/ao$1;

    invoke-direct {v1, p2}, Landroid/support/v4/app/ao$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/bn;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/bn;

    .line 262
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/k/a;ZLandroid/support/v4/app/t;)V
    .locals 4
    .param p0, "sharedElementTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Landroid/support/v4/app/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/t;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 837
    iget-object v2, p4, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p4, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    if-eqz p3, :cond_1

    iget-object v2, p4, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 842
    .local v1, "sourceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 843
    .local v0, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 845
    if-eqz p1, :cond_0

    .line 846
    invoke-static {p1, v0}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 849
    .end local v0    # "outEpicenterView":Landroid/view/View;
    .end local v1    # "sourceName":Ljava/lang/String;
    :cond_0
    return-void

    .line 840
    :cond_1
    iget-object v2, p4, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 841
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/app/ao;->b(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/support/v4/k/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/support/v4/k/a;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 553
    invoke-virtual {p1, v0}, Landroid/support/v4/k/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 554
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ap;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 558
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static b(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;
    .locals 10
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Landroid/support/v4/app/ao$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/ao$a;",
            ")",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_2

    .line 688
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/k/a;->clear()V

    .line 689
    const/4 v4, 0x0

    .line 722
    :cond_1
    :goto_0
    return-object v4

    .line 691
    :cond_2
    iget-object v3, p2, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    .line 692
    .local v3, "outFragment":Landroid/support/v4/app/Fragment;
    new-instance v4, Landroid/support/v4/k/a;

    invoke-direct {v4}, Landroid/support/v4/k/a;-><init>()V

    .line 693
    .local v4, "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/support/v4/app/ap;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 697
    iget-object v5, p2, Landroid/support/v4/app/ao$a;->f:Landroid/support/v4/app/t;

    .line 698
    .local v5, "outTransaction":Landroid/support/v4/app/t;
    iget-boolean v9, p2, Landroid/support/v4/app/ao$a;->e:Z

    if-eqz v9, :cond_4

    .line 699
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v6

    .line 700
    .local v6, "sharedElementCallback":Landroid/support/v4/app/bx;
    iget-object v2, v5, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .line 706
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v4/k/a;->c(Ljava/util/Collection;)Z

    .line 707
    if-eqz v6, :cond_6

    .line 708
    invoke-virtual {v6, v2, v4}, Landroid/support/v4/app/bx;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 709
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 710
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 711
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 712
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_5

    .line 713
    invoke-virtual {p0, v1}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 702
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sharedElementCallback":Landroid/support/v4/app/bx;
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v6

    .line 703
    .restart local v6    # "sharedElementCallback":Landroid/support/v4/app/bx;
    iget-object v2, v5, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 714
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v8}, Landroid/support/v4/view/ap;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 715
    invoke-virtual {p0, v1}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 716
    .local v7, "targetValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/support/v4/view/ap;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 720
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "targetValue":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    invoke-virtual {v4}, Landroid/support/v4/k/a;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/support/v4/k/a;->c(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 4
    .param p1, "fragments"    # Landroid/support/v4/app/ao$a;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/ao$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "inSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 813
    iget-object v0, p1, Landroid/support/v4/app/ao$a;->c:Landroid/support/v4/app/t;

    .line 814
    .local v0, "inTransaction":Landroid/support/v4/app/t;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 816
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 817
    if-eqz p3, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 818
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 820
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 822
    .end local v1    # "targetName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 818
    :cond_0
    iget-object v2, v0, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .line 819
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 822
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/support/v4/app/ao$a;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/ao$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    .line 595
    .local v9, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    .line 597
    .local v10, "outFragment":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 598
    :cond_0
    const/4 v5, 0x0

    .line 667
    :goto_0
    return-object v5

    .line 601
    :cond_1
    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/support/v4/app/ao$a;->b:Z

    .line 602
    .local v11, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v18, 0x0

    .line 605
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;

    move-result-object v16

    .line 608
    .local v16, "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    const/16 v18, 0x0

    move-object/from16 v5, v18

    .line 614
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .local v5, "sharedElementTransition":Ljava/lang/Object;
    :goto_2
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez v5, :cond_4

    .line 616
    const/4 v5, 0x0

    goto :goto_0

    .line 603
    .end local v5    # "sharedElementTransition":Ljava/lang/Object;
    .end local v16    # "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    :cond_2
    invoke-static {v9, v10, v11}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    .line 611
    .restart local v16    # "outSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/k/a;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v5, v18

    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v5    # "sharedElementTransition":Ljava/lang/Object;
    goto :goto_2

    .line 619
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v9, v10, v11, v0, v3}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V

    .line 622
    if-eqz v5, :cond_6

    .line 623
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 624
    .local v14, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v5, v0, v1}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 626
    move-object/from16 v0, p3

    iget-boolean v15, v0, Landroid/support/v4/app/ao$a;->e:Z

    .line 627
    .local v15, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/v4/app/ao$a;->f:Landroid/support/v4/app/t;

    move-object/from16 v17, v0

    .line 628
    .local v17, "outTransaction":Landroid/support/v4/app/t;
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v5, v0, v1, v15, v2}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/k/a;ZLandroid/support/v4/app/t;)V

    .line 630
    if-eqz p6, :cond_5

    .line 631
    move-object/from16 v0, p6

    invoke-static {v0, v14}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 639
    .end local v15    # "outIsPop":Z
    .end local v17    # "outTransaction":Landroid/support/v4/app/t;
    .local v5, "finalSharedElementTransition":Ljava/lang/Object;
    :cond_5
    :goto_3
    new-instance v3, Landroid/support/v4/app/ao$4;

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-direct/range {v3 .. v14}, Landroid/support/v4/app/ao$4;-><init>(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/app/bn;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/bn;

    goto :goto_0

    .line 634
    .end local v14    # "inEpicenter":Landroid/graphics/Rect;
    .local v5, "sharedElementTransition":Ljava/lang/Object;
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "inEpicenter":Landroid/graphics/Rect;
    goto :goto_3
.end method

.method private static b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 901
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_2

    .line 902
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .restart local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 905
    invoke-static {v1, v0}, Landroid/support/v4/app/ap;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 907
    :cond_0
    if-eqz p2, :cond_1

    .line 908
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 910
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 911
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-static {p0, v1}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 915
    .end local v0    # "root":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V
    .locals 7
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "sharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 879
    if-eqz p2, :cond_0

    .line 880
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v3

    .line 882
    .local v3, "sharedElementCallback":Landroid/support/v4/app/bx;
    :goto_0
    if-eqz v3, :cond_3

    .line 883
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 886
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 887
    invoke-virtual {p3, v1}, Landroid/support/v4/k/a;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {p3, v1}, Landroid/support/v4/k/a;->c(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 881
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedElementCallback":Landroid/support/v4/app/bx;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v3

    goto :goto_0

    .line 885
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "sharedElementCallback":Landroid/support/v4/app/bx;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/k/a;->size()I

    move-result v0

    goto :goto_1

    .line 890
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    if-eqz p4, :cond_4

    .line 891
    invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/bx;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 896
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    :goto_3
    return-void

    .line 893
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/bx;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static b(Landroid/support/v4/app/ah;ILandroid/support/v4/app/ao$a;Landroid/view/View;Landroid/support/v4/k/a;)V
    .locals 27
    .param p0, "fragmentManager"    # Landroid/support/v4/app/ah;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/ao$a;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ah;",
            "I",
            "Landroid/support/v4/app/ao$a;",
            "Landroid/view/View;",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p4, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 283
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/ah;->v:Landroid/support/v4/app/ad;

    invoke-virtual {v3}, Landroid/support/v4/app/ad;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/ah;->v:Landroid/support/v4/app/ad;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/app/ad;->a(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 286
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_0
    if-nez v2, :cond_2

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 290
    .local v17, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/ao$a;->d:Landroid/support/v4/app/Fragment;

    move-object/from16 v25, v0

    .line 291
    .local v25, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/ao$a;->b:Z

    move/from16 v24, v0

    .line 292
    .local v24, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/ao$a;->e:Z

    move/from16 v26, v0

    .line 294
    .local v26, "outIsPop":Z
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 295
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v25 .. v26}, Landroid/support/v4/app/ao;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 297
    .local v9, "exitTransition":Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 300
    invoke-static/range {v2 .. v9}, Landroid/support/v4/app/ao;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/k/a;Landroid/support/v4/app/ao$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 304
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_3

    if-nez v15, :cond_3

    if-eqz v9, :cond_1

    .line 309
    :cond_3
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/ao;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 312
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    :cond_4
    const/4 v9, 0x0

    .line 318
    .end local v9    # "exitTransition":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/ap;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 320
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v4/app/ao$a;->b:Z

    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 323
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 324
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 325
    invoke-static/range {v10 .. v16}, Landroid/support/v4/app/ap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 328
    invoke-static/range {v16 .. v23}, Landroid/support/v4/app/ao;->a(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 330
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Landroid/support/v4/app/ap;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 333
    invoke-static {v2, v10}, Landroid/support/v4/app/ap;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 334
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Landroid/support/v4/app/ap;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static b(Landroid/support/v4/app/t;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/support/v4/app/t;
    .param p2, "isOptimized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/t;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/ao$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/ao$a;>;"
    iget-object v3, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/ah;

    iget-object v3, v3, Landroid/support/v4/app/ah;->v:Landroid/support/v4/app/ad;

    invoke-virtual {v3}, Landroid/support/v4/app/ad;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 998
    :cond_0
    return-void

    .line 993
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    .local v0, "numOps":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_0

    .line 995
    iget-object v3, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/t$a;

    .line 996
    .local v1, "op":Landroid/support/v4/app/t$a;
    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/t;Landroid/support/v4/app/t$a;Landroid/util/SparseArray;ZZ)V

    .line 994
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_1

    .line 929
    :cond_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 926
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 927
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static c(Landroid/support/v4/k/a;Ljava/lang/Object;Landroid/support/v4/app/ao$a;)Landroid/support/v4/k/a;
    .locals 11
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Landroid/support/v4/app/ao$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/ao$a;",
            ")",
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "nameOverrides":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p2, Landroid/support/v4/app/ao$a;->a:Landroid/support/v4/app/Fragment;

    .line 743
    .local v2, "inFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_2

    .line 745
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/k/a;->clear()V

    .line 746
    const/4 v3, 0x0

    .line 785
    :cond_1
    :goto_0
    return-object v3

    .line 748
    :cond_2
    new-instance v3, Landroid/support/v4/k/a;

    invoke-direct {v3}, Landroid/support/v4/k/a;-><init>()V

    .line 749
    .local v3, "inSharedElements":Landroid/support/v4/k/a;, "Landroid/support/v4/k/a<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v3, v0}, Landroid/support/v4/app/ap;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 753
    iget-object v4, p2, Landroid/support/v4/app/ao$a;->c:Landroid/support/v4/app/t;

    .line 754
    .local v4, "inTransaction":Landroid/support/v4/app/t;
    iget-boolean v10, p2, Landroid/support/v4/app/ao$a;->b:Z

    if-eqz v10, :cond_5

    .line 755
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v8

    .line 756
    .local v8, "sharedElementCallback":Landroid/support/v4/app/bx;
    iget-object v7, v4, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 762
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-eqz v7, :cond_3

    .line 763
    invoke-virtual {v3, v7}, Landroid/support/v4/k/a;->c(Ljava/util/Collection;)Z

    .line 765
    :cond_3
    if-eqz v8, :cond_7

    .line 766
    invoke-virtual {v8, v7, v3}, Landroid/support/v4/app/bx;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 767
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_1

    .line 768
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 769
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 770
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_6

    .line 771
    invoke-static {p0, v6}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/k/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 773
    invoke-virtual {p0, v5}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 758
    .end local v1    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sharedElementCallback":Landroid/support/v4/app/bx;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/bx;

    move-result-object v8

    .line 759
    .restart local v8    # "sharedElementCallback":Landroid/support/v4/app/bx;
    iget-object v7, v4, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 775
    .restart local v1    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "view":Landroid/view/View;
    :cond_6
    invoke-static {v9}, Landroid/support/v4/view/ap;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 776
    invoke-static {p0, v6}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/k/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 777
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 778
    invoke-static {v9}, Landroid/support/v4/view/ap;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 783
    .end local v1    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_7
    invoke-static {p0, v3}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/k/a;Landroid/support/v4/k/a;)V

    goto :goto_0
.end method
