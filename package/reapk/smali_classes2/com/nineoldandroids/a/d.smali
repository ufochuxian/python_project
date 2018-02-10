.class public final Lcom/nineoldandroids/a/d;
.super Lcom/nineoldandroids/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/a/d$b;,
        Lcom/nineoldandroids/a/d$a;,
        Lcom/nineoldandroids/a/d$e;,
        Lcom/nineoldandroids/a/d$c;,
        Lcom/nineoldandroids/a/d$d;
    }
.end annotation


# instance fields
.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/a/a;",
            "Lcom/nineoldandroids/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/nineoldandroids/a/d$a;

.field private i:Z

.field private j:J

.field private k:Lcom/nineoldandroids/a/q;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/nineoldandroids/a/a;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/nineoldandroids/a/d;->b:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/d;->c:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/d;->d:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 88
    iput-object v2, p0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    .line 93
    iput-boolean v1, p0, Lcom/nineoldandroids/a/d;->i:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/a/d;->j:J

    .line 99
    iput-object v2, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/a/d;->l:J

    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nineoldandroids/a/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/nineoldandroids/a/d;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/a/d;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/nineoldandroids/a/d;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nineoldandroids/a/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private o()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 597
    iget-boolean v11, p0, Lcom/nineoldandroids/a/d;->g:Z

    if-eqz v11, :cond_7

    .line 598
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 599
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v9, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 601
    .local v6, "numNodes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 602
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/d$e;

    .line 603
    .local v3, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 604
    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v3    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v10, "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 609
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 610
    .local v7, "numRoots":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 611
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nineoldandroids/a/d$e;

    .line 612
    .local v8, "root":Lcom/nineoldandroids/a/d$e;
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v11, v8, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 614
    iget-object v11, v8, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 615
    .local v5, "numDependents":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 616
    iget-object v11, v8, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/d$e;

    .line 617
    .restart local v3    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 619
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 610
    .end local v2    # "j":I
    .end local v3    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v5    # "numDependents":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 624
    .end local v8    # "root":Lcom/nineoldandroids/a/d$e;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 625
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 626
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 628
    .end local v7    # "numRoots":I
    :cond_6
    iput-boolean v13, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 629
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 630
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 636
    .end local v1    # "i":I
    .end local v6    # "numNodes":I
    .end local v9    # "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    .end local v10    # "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    :cond_7
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 637
    .restart local v6    # "numNodes":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_b

    .line 638
    iget-object v11, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/d$e;

    .line 639
    .restart local v3    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 640
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 641
    .local v4, "numDependencies":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_a

    .line 642
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$c;

    .line 643
    .local v0, "dependency":Lcom/nineoldandroids/a/d$c;
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    .line 644
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    .line 646
    :cond_8
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 647
    iget-object v11, v3, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 653
    .end local v0    # "dependency":Lcom/nineoldandroids/a/d$c;
    .end local v2    # "j":I
    .end local v4    # "numDependencies":I
    :cond_a
    iput-boolean v13, v3, Lcom/nineoldandroids/a/d$e;->f:Z

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 656
    .end local v3    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_b
    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;
    .locals 1
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 253
    new-instance v0, Lcom/nineoldandroids/a/d$b;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/d$b;-><init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/a;)V

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 18

    .prologue
    .line 422
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/nineoldandroids/a/d;->b:Z

    .line 423
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/nineoldandroids/a/d;->i:Z

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/nineoldandroids/a/d;->o()V

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 430
    .local v11, "numSortedNodes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_3

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    .line 433
    .local v7, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v14}, Lcom/nineoldandroids/a/a;->h()Ljava/util/ArrayList;

    move-result-object v12

    .line 434
    .local v12, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 437
    .local v2, "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nineoldandroids/a/a$a;

    .line 438
    .local v6, "listener":Lcom/nineoldandroids/a/a$a;
    instance-of v15, v6, Lcom/nineoldandroids/a/d$d;

    if-nez v15, :cond_1

    instance-of v15, v6, Lcom/nineoldandroids/a/d$a;

    if-eqz v15, :cond_0

    .line 439
    :cond_1
    iget-object v15, v7, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v15, v6}, Lcom/nineoldandroids/a/a;->b(Lcom/nineoldandroids/a/a$a;)V

    goto :goto_1

    .line 430
    .end local v2    # "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    .end local v6    # "listener":Lcom/nineoldandroids/a/a$a;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v7    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v12    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v8, "nodesToStart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_8

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    .line 452
    .restart local v7    # "node":Lcom/nineoldandroids/a/d$e;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    if-nez v14, :cond_4

    .line 453
    new-instance v14, Lcom/nineoldandroids/a/d$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/nineoldandroids/a/d$a;-><init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/d;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    .line 455
    :cond_4
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    if-eqz v14, :cond_5

    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_6

    .line 456
    :cond_5
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_3
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    invoke-virtual {v14, v15}, Lcom/nineoldandroids/a/a;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 450
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 458
    :cond_6
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 459
    .local v9, "numDependencies":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v5, v9, :cond_7

    .line 460
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/d$c;

    .line 461
    .local v3, "dependency":Lcom/nineoldandroids/a/d$c;
    iget-object v14, v3, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    iget-object v14, v14, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    new-instance v15, Lcom/nineoldandroids/a/d$d;

    iget v0, v3, Lcom/nineoldandroids/a/d$c;->d:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v7, v1}, Lcom/nineoldandroids/a/d$d;-><init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/d$e;I)V

    invoke-virtual {v14, v15}, Lcom/nineoldandroids/a/a;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 463
    .end local v3    # "dependency":Lcom/nineoldandroids/a/d$c;
    :cond_7
    iget-object v14, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iput-object v14, v7, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    goto :goto_3

    .line 468
    .end local v5    # "j":I
    .end local v7    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v9    # "numDependencies":I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nineoldandroids/a/d;->j:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_9

    .line 469
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    .line 470
    .restart local v7    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v15, v7, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v15}, Lcom/nineoldandroids/a/a;->a()V

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/a/d;->c:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 474
    .end local v7    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_9
    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v14}, Lcom/nineoldandroids/a/q;->b([F)Lcom/nineoldandroids/a/q;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nineoldandroids/a/d;->j:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    new-instance v15, Lcom/nineoldandroids/a/d$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/nineoldandroids/a/d$1;-><init>(Lcom/nineoldandroids/a/d;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v15}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    invoke-virtual {v14}, Lcom/nineoldandroids/a/q;->a()V

    .line 496
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v14, :cond_b

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 498
    .local v13, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 499
    .local v10, "numListeners":I
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v10, :cond_b

    .line 500
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nineoldandroids/a/a$a;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/nineoldandroids/a/a$a;->onAnimationStart(Lcom/nineoldandroids/a/a;)V

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 503
    .end local v10    # "numListeners":I
    .end local v13    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nineoldandroids/a/d;->j:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_c

    .line 506
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/nineoldandroids/a/d;->i:Z

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v14, :cond_c

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 509
    .restart local v13    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 510
    .restart local v10    # "numListeners":I
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v10, :cond_c

    .line 511
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nineoldandroids/a/a$a;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/nineoldandroids/a/a$a;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V

    .line 510
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 515
    .end local v10    # "numListeners":I
    .end local v13    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_c
    return-void

    .line 474
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 363
    iput-wide p1, p0, Lcom/nineoldandroids/a/d;->j:J

    .line 364
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    .line 219
    .local v0, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, v0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2, p1}, Lcom/nineoldandroids/a/a;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 221
    .end local v0    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 202
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v0, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    .line 203
    .local v0, "animation":Lcom/nineoldandroids/a/a;
    instance-of v3, v0, Lcom/nineoldandroids/a/d;

    if-eqz v3, :cond_1

    .line 204
    check-cast v0, Lcom/nineoldandroids/a/d;

    .end local v0    # "animation":Lcom/nineoldandroids/a/a;
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    .restart local v0    # "animation":Lcom/nineoldandroids/a/a;
    :cond_1
    instance-of v3, v0, Lcom/nineoldandroids/a/l;

    if-eqz v3, :cond_0

    .line 206
    check-cast v0, Lcom/nineoldandroids/a/l;

    .end local v0    # "animation":Lcom/nineoldandroids/a/a;
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_2
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nineoldandroids/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nineoldandroids/a/a;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "builder":Lcom/nineoldandroids/a/d$b;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/a;

    .line 131
    .local v0, "anim":Lcom/nineoldandroids/a/a;
    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/a/d$b;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    goto :goto_0

    .line 138
    .end local v0    # "anim":Lcom/nineoldandroids/a/a;
    .end local v1    # "builder":Lcom/nineoldandroids/a/d$b;
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/a/a;>;"
    const/4 v2, 0x1

    .line 166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 169
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/a;

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 176
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/a;

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/a;

    invoke-virtual {v2, v1}, Lcom/nineoldandroids/a/d$b;->b(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs a([Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "items"    # [Lcom/nineoldandroids/a/a;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 114
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v0

    .line 115
    .local v0, "builder":Lcom/nineoldandroids/a/d$b;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/d$b;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "builder":Lcom/nineoldandroids/a/d$b;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public synthetic b(J)Lcom/nineoldandroids/a/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/d;->c(J)Lcom/nineoldandroids/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 265
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nineoldandroids/a/d;->b:Z

    .line 266
    invoke-virtual {p0}, Lcom/nineoldandroids/a/d;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 270
    .restart local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/a$a;

    .line 271
    .local v0, "listener":Lcom/nineoldandroids/a/a$a;
    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/a$a;->onAnimationCancel(Lcom/nineoldandroids/a/a;)V

    goto :goto_0

    .line 274
    .end local v0    # "listener":Lcom/nineoldandroids/a/a$a;
    :cond_0
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    invoke-virtual {v3}, Lcom/nineoldandroids/a/q;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    invoke-virtual {v3}, Lcom/nineoldandroids/a/q;->b()V

    .line 283
    :cond_1
    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/a$a;

    .line 285
    .restart local v0    # "listener":Lcom/nineoldandroids/a/a$a;
    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/a$a;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V

    goto :goto_1

    .line 278
    .end local v0    # "listener":Lcom/nineoldandroids/a/a$a;
    :cond_2
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 280
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v4, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/a;->b()V

    goto :goto_2

    .line 288
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nineoldandroids/a/d;->i:Z

    .line 290
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_4
    return-void
.end method

.method public varargs b([Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "items"    # [Lcom/nineoldandroids/a/a;

    .prologue
    const/4 v2, 0x1

    .line 147
    if-eqz p1, :cond_0

    .line 148
    iput-boolean v2, p0, Lcom/nineoldandroids/a/d;->g:Z

    .line 149
    array-length v1, p1

    if-ne v1, v2, :cond_1

    .line 150
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 157
    :cond_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 153
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/d$b;->b(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(J)Lcom/nineoldandroids/a/d;
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 388
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration must be a value of zero or greater"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    .line 394
    .local v0, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, v0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2, p1, p2}, Lcom/nineoldandroids/a/a;->b(J)Lcom/nineoldandroids/a/a;

    goto :goto_0

    .line 396
    .end local v0    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_1
    iput-wide p1, p0, Lcom/nineoldandroids/a/d;->l:J

    .line 397
    return-object p0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 298
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nineoldandroids/a/d;->b:Z

    .line 299
    invoke-virtual {p0}, Lcom/nineoldandroids/a/d;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/nineoldandroids/a/d;->o()V

    .line 303
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 304
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v4, p0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    if-nez v4, :cond_0

    .line 305
    new-instance v4, Lcom/nineoldandroids/a/d$a;

    invoke-direct {v4, p0, p0}, Lcom/nineoldandroids/a/d$a;-><init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/d;)V

    iput-object v4, p0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    .line 307
    :cond_0
    iget-object v4, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    iget-object v5, p0, Lcom/nineoldandroids/a/d;->h:Lcom/nineoldandroids/a/d$a;

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/a;->a(Lcom/nineoldandroids/a/a$a;)V

    goto :goto_0

    .line 310
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_1
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    if-eqz v3, :cond_2

    .line 311
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->k:Lcom/nineoldandroids/a/q;

    invoke-virtual {v3}, Lcom/nineoldandroids/a/q;->b()V

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 314
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 315
    .restart local v1    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v4, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/a;->c()V

    goto :goto_1

    .line 318
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_3
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 319
    iget-object v3, p0, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 320
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/a$a;

    .line 321
    .local v0, "listener":Lcom/nineoldandroids/a/a$a;
    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/a$a;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V

    goto :goto_2

    .line 324
    .end local v0    # "listener":Lcom/nineoldandroids/a/a$a;
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nineoldandroids/a/d;->i:Z

    .line 326
    :cond_5
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/nineoldandroids/a/d;->n()Lcom/nineoldandroids/a/d;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/nineoldandroids/a/d;->j:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/nineoldandroids/a/d;->l:J

    return-wide v0
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    .line 336
    .local v0, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, v0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/4 v1, 0x1

    .line 340
    .end local v0    # "node":Lcom/nineoldandroids/a/d$e;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/nineoldandroids/a/d;->i:Z

    return v0
.end method

.method public synthetic j()Lcom/nineoldandroids/a/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/nineoldandroids/a/d;->n()Lcom/nineoldandroids/a/d;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    .line 403
    .local v0, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, v0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/a;->k()V

    goto :goto_0

    .line 405
    .end local v0    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    .line 410
    .local v0, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, v0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/a;->l()V

    goto :goto_0

    .line 412
    .end local v0    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_0
    return-void
.end method

.method public m()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a;>;"
    iget-object v2, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 188
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v3, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :cond_0
    return-object v0
.end method

.method public n()Lcom/nineoldandroids/a/d;
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 519
    invoke-super {p0}, Lcom/nineoldandroids/a/a;->j()Lcom/nineoldandroids/a/a;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d;

    .line 528
    .local v0, "anim":Lcom/nineoldandroids/a/d;
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/nineoldandroids/a/d;->g:Z

    .line 529
    iput-boolean v11, v0, Lcom/nineoldandroids/a/d;->b:Z

    .line 530
    iput-boolean v11, v0, Lcom/nineoldandroids/a/d;->i:Z

    .line 531
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/nineoldandroids/a/d;->c:Ljava/util/ArrayList;

    .line 532
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/nineoldandroids/a/d;->d:Ljava/util/HashMap;

    .line 533
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    .line 534
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/nineoldandroids/a/d;->f:Ljava/util/ArrayList;

    .line 539
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v9, "nodeCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/nineoldandroids/a/d$e;Lcom/nineoldandroids/a/d$e;>;"
    iget-object v10, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    .line 541
    .local v7, "node":Lcom/nineoldandroids/a/d$e;
    invoke-virtual {v7}, Lcom/nineoldandroids/a/d$e;->a()Lcom/nineoldandroids/a/d$e;

    move-result-object v8

    .line 542
    .local v8, "nodeClone":Lcom/nineoldandroids/a/d$e;
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v11, v0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v11, v0, Lcom/nineoldandroids/a/d;->d:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iput-object v13, v8, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    .line 547
    iput-object v13, v8, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    .line 548
    iput-object v13, v8, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    .line 549
    iput-object v13, v8, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    .line 552
    iget-object v11, v8, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v11}, Lcom/nineoldandroids/a/a;->h()Ljava/util/ArrayList;

    move-result-object v2

    .line 553
    .local v2, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    if-eqz v2, :cond_0

    .line 554
    const/4 v6, 0x0

    .line 555
    .local v6, "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/a$a;

    .line 556
    .local v5, "listener":Lcom/nineoldandroids/a/a$a;
    instance-of v12, v5, Lcom/nineoldandroids/a/d$a;

    if-eqz v12, :cond_1

    .line 557
    if-nez v6, :cond_2

    .line 558
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .restart local v6    # "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    .end local v5    # "listener":Lcom/nineoldandroids/a/a$a;
    :cond_3
    if-eqz v6, :cond_0

    .line 564
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/a/a$a;

    .line 565
    .restart local v5    # "listener":Lcom/nineoldandroids/a/a$a;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 572
    .end local v2    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    .end local v5    # "listener":Lcom/nineoldandroids/a/a$a;
    .end local v6    # "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    .end local v7    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v8    # "nodeClone":Lcom/nineoldandroids/a/d$e;
    :cond_4
    iget-object v10, p0, Lcom/nineoldandroids/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    .line 573
    .restart local v7    # "node":Lcom/nineoldandroids/a/d$e;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nineoldandroids/a/d$e;

    .line 574
    .restart local v8    # "nodeClone":Lcom/nineoldandroids/a/d$e;
    iget-object v11, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 575
    iget-object v11, v7, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/d$c;

    .line 576
    .local v4, "dependency":Lcom/nineoldandroids/a/d$c;
    iget-object v12, v4, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/d$e;

    .line 577
    .local v3, "clonedDependencyNode":Lcom/nineoldandroids/a/d$e;
    new-instance v1, Lcom/nineoldandroids/a/d$c;

    iget v12, v4, Lcom/nineoldandroids/a/d$c;->d:I

    invoke-direct {v1, v3, v12}, Lcom/nineoldandroids/a/d$c;-><init>(Lcom/nineoldandroids/a/d$e;I)V

    .line 578
    .local v1, "cloneDependency":Lcom/nineoldandroids/a/d$c;
    invoke-virtual {v8, v1}, Lcom/nineoldandroids/a/d$e;->a(Lcom/nineoldandroids/a/d$c;)V

    goto :goto_2

    .line 583
    .end local v1    # "cloneDependency":Lcom/nineoldandroids/a/d$c;
    .end local v3    # "clonedDependencyNode":Lcom/nineoldandroids/a/d$e;
    .end local v4    # "dependency":Lcom/nineoldandroids/a/d$c;
    .end local v7    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v8    # "nodeClone":Lcom/nineoldandroids/a/d$e;
    :cond_6
    return-object v0
.end method
