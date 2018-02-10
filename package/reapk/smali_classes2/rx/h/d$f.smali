.class final Lrx/h/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/h/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/h/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field volatile b:I

.field final c:[Ljava/lang/Object;

.field d:[Ljava/lang/Object;

.field e:I

.field volatile f:Z

.field g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 548
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput p1, p0, Lrx/h/d$f;->a:I

    .line 550
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/h/d$f;->c:[Ljava/lang/Object;

    iput-object v0, p0, Lrx/h/d$f;->d:[Ljava/lang/Object;

    .line 551
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 586
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$f;->f:Z

    .line 587
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/h/d$f;->f:Z

    if-eqz v3, :cond_0

    .line 572
    :goto_0
    return-void

    .line 558
    :cond_0
    iget v2, p0, Lrx/h/d$f;->e:I

    .line 559
    .local v2, "i":I
    iget-object v0, p0, Lrx/h/d$f;->d:[Ljava/lang/Object;

    .line 560
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 561
    array-length v3, v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 562
    .local v1, "b":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 563
    const/4 v3, 0x1

    iput v3, p0, Lrx/h/d$f;->e:I

    .line 564
    aput-object v1, v0, v2

    .line 565
    iput-object v1, p0, Lrx/h/d$f;->d:[Ljava/lang/Object;

    .line 570
    .end local v1    # "b":[Ljava/lang/Object;
    :goto_1
    iget v3, p0, Lrx/h/d$f;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lrx/h/d$f;->b:I

    goto :goto_0

    .line 567
    :cond_1
    aput-object p1, v0, v2

    .line 568
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/h/d$f;->e:I

    goto :goto_1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 576
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget-boolean v0, p0, Lrx/h/d$f;->f:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iput-object p1, p0, Lrx/h/d$f;->g:Ljava/lang/Throwable;

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$f;->f:Z

    goto :goto_0
.end method

.method public a(Lrx/h/d$b;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    .local p1, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lrx/h/d$b;->getAndIncrement()I

    move-result v16

    if-eqz v16, :cond_0

    .line 684
    :goto_0
    return-void

    .line 595
    :cond_0
    const/4 v9, 0x1

    .line 597
    .local v9, "missed":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lrx/h/d$b;->a:Lrx/l;

    .line 598
    .local v2, "a":Lrx/l;, "Lrx/l<-TT;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lrx/h/d$f;->a:I

    .line 602
    .local v10, "n":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 603
    .local v12, "r":J
    const-wide/16 v4, 0x0

    .line 605
    .local v4, "e":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/h/d$b;->f:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v11, v16

    check-cast v11, [Ljava/lang/Object;

    .line 606
    .local v11, "node":[Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 607
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/h/d$f;->c:[Ljava/lang/Object;

    .line 609
    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Lrx/h/d$b;->e:I

    .line 610
    .local v14, "tailIndex":I
    move-object/from16 v0, p1

    iget v8, v0, Lrx/h/d$b;->d:I

    .line 612
    .local v8, "index":I
    :goto_1
    cmp-long v16, v4, v12

    if-eqz v16, :cond_7

    .line 613
    invoke-virtual {v2}, Lrx/l;->isUnsubscribed()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 614
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/h/d$f;->f:Z

    .line 619
    .local v3, "d":Z
    move-object/from16 v0, p0

    iget v0, v0, Lrx/h/d$f;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_4

    const/4 v6, 0x1

    .line 621
    .local v6, "empty":Z
    :goto_2
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    .line 622
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 623
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/h/d$f;->g:Ljava/lang/Throwable;

    .line 624
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_5

    .line 625
    invoke-virtual {v2, v7}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 619
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 627
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 632
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v6, :cond_8

    .line 651
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    :cond_7
    cmp-long v16, v4, v12

    if-nez v16, :cond_d

    .line 652
    invoke-virtual {v2}, Lrx/l;->isUnsubscribed()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 653
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 636
    .restart local v3    # "d":Z
    .restart local v6    # "empty":Z
    :cond_8
    if-ne v14, v10, :cond_9

    .line 637
    aget-object v16, v11, v14

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v11, v16

    check-cast v11, [Ljava/lang/Object;

    .line 638
    const/4 v14, 0x0

    .line 642
    :cond_9
    aget-object v15, v11, v14

    .line 644
    .local v15, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v15}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 646
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 647
    add-int/lit8 v14, v14, 0x1

    .line 648
    add-int/lit8 v8, v8, 0x1

    .line 649
    goto :goto_1

    .line 657
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/h/d$f;->f:Z

    .line 658
    .restart local v3    # "d":Z
    move-object/from16 v0, p0

    iget v0, v0, Lrx/h/d$f;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_b

    const/4 v6, 0x1

    .line 660
    .restart local v6    # "empty":Z
    :goto_3
    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    .line 661
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 662
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/h/d$f;->g:Ljava/lang/Throwable;

    .line 663
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_c

    .line 664
    invoke-virtual {v2, v7}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 658
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 666
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    goto/16 :goto_0

    .line 672
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_d
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-eqz v16, :cond_e

    .line 673
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v16, v12, v16

    if-eqz v16, :cond_e

    .line 674
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 678
    :cond_e
    move-object/from16 v0, p1

    iput v8, v0, Lrx/h/d$b;->d:I

    .line 679
    move-object/from16 v0, p1

    iput v14, v0, Lrx/h/d$b;->e:I

    .line 680
    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 682
    neg-int v0, v9

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/h/d$b;->addAndGet(I)I

    move-result v9

    .line 683
    if-nez v9, :cond_1

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 734
    iget v3, p0, Lrx/h/d$f;->b:I

    .line 735
    .local v3, "s":I
    array-length v4, p1

    if-ge v4, v3, :cond_0

    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 739
    :cond_0
    iget-object v0, p0, Lrx/h/d$f;->c:[Ljava/lang/Object;

    .line 740
    .local v0, "h":[Ljava/lang/Object;
    iget v2, p0, Lrx/h/d$f;->a:I

    .line 742
    .local v2, "n":I
    const/4 v1, 0x0

    .line 744
    .local v1, "j":I
    :goto_0
    add-int v4, v1, v2

    if-ge v4, v3, :cond_1

    .line 745
    invoke-static {v0, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    add-int/2addr v1, v2

    .line 747
    aget-object v4, v0, v2

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 750
    :cond_1
    sub-int v4, v3, v1

    invoke-static {v0, v5, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    array-length v4, p1

    if-le v4, v3, :cond_2

    .line 753
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 756
    :cond_2
    return-object p1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 691
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget-boolean v0, p0, Lrx/h/d$f;->f:Z

    return v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 696
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget-object v0, p0, Lrx/h/d$f;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget v2, p0, Lrx/h/d$f;->b:I

    .line 707
    .local v2, "s":I
    if-nez v2, :cond_0

    .line 708
    const/4 v3, 0x0

    .line 718
    :goto_0
    return-object v3

    .line 710
    :cond_0
    iget-object v0, p0, Lrx/h/d$f;->c:[Ljava/lang/Object;

    .line 711
    .local v0, "h":[Ljava/lang/Object;
    iget v1, p0, Lrx/h/d$f;->a:I

    .line 713
    .local v1, "n":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 714
    aget-object v3, v0, v1

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 715
    sub-int/2addr v2, v1

    goto :goto_1

    .line 718
    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 723
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget v0, p0, Lrx/h/d$f;->b:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 728
    .local p0, "this":Lrx/h/d$f;, "Lrx/h/d$f<TT;>;"
    iget v0, p0, Lrx/h/d$f;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
