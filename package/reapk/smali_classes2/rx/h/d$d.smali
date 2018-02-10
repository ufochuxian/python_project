.class final Lrx/h/d$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/d$d$a;
    }
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

.field volatile b:Lrx/h/d$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$d$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Lrx/h/d$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$d$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I

.field volatile e:Z

.field f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 772
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput p1, p0, Lrx/h/d$d;->a:I

    .line 774
    new-instance v0, Lrx/h/d$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/h/d$d$a;-><init>(Ljava/lang/Object;)V

    .line 775
    .local v0, "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    iput-object v0, p0, Lrx/h/d$d;->c:Lrx/h/d$d$a;

    .line 776
    iput-object v0, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    .line 777
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$d;->e:Z

    .line 801
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/h/d$d$a;

    invoke-direct {v0, p1}, Lrx/h/d$d$a;-><init>(Ljava/lang/Object;)V

    .line 782
    .local v0, "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    iget-object v2, p0, Lrx/h/d$d;->c:Lrx/h/d$d$a;

    invoke-virtual {v2, v0}, Lrx/h/d$d$a;->set(Ljava/lang/Object;)V

    .line 783
    iput-object v0, p0, Lrx/h/d$d;->c:Lrx/h/d$d$a;

    .line 784
    iget v1, p0, Lrx/h/d$d;->d:I

    .line 785
    .local v1, "s":I
    iget v2, p0, Lrx/h/d$d;->a:I

    if-ne v1, v2, :cond_0

    .line 786
    iget-object v2, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    invoke-virtual {v2}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/h/d$d$a;

    iput-object v2, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/h/d$d;->d:I

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 794
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    iput-object p1, p0, Lrx/h/d$d;->f:Ljava/lang/Throwable;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$d;->e:Z

    .line 796
    return-void
.end method

.method public a(Lrx/h/d$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    .local p1, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-virtual {p1}, Lrx/h/d$b;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 886
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p1, Lrx/h/d$b;->a:Lrx/l;

    .line 811
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v6, 0x1

    .line 815
    .local v6, "missed":I
    :cond_1
    iget-object v9, p1, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 816
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 819
    .local v2, "e":J
    iget-object v8, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    check-cast v8, Lrx/h/d$d$a;

    .line 820
    .local v8, "node":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    if-nez v8, :cond_2

    .line 821
    iget-object v8, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    .line 824
    :cond_2
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 825
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 826
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 830
    :cond_3
    iget-boolean v1, p0, Lrx/h/d$d;->e:Z

    .line 831
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/h/d$d$a;

    .line 832
    .local v7, "next":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 834
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 835
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 836
    iget-object v5, p0, Lrx/h/d$d;->f:Ljava/lang/Throwable;

    .line 837
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    .line 838
    invoke-virtual {v0, v5}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 832
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 840
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 845
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v4, :cond_8

    .line 855
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_c

    .line 856
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 857
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 849
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :cond_8
    iget-object v9, v7, Lrx/h/d$d$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 851
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 852
    move-object v8, v7

    .line 853
    goto :goto_1

    .line 861
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :cond_9
    iget-boolean v1, p0, Lrx/h/d$d;->e:Z

    .line 862
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    const/4 v4, 0x1

    .line 864
    .restart local v4    # "empty":Z
    :goto_3
    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    .line 865
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 866
    iget-object v5, p0, Lrx/h/d$d;->f:Ljava/lang/Throwable;

    .line 867
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_b

    .line 868
    invoke-virtual {v0, v5}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 862
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 870
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 876
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_d

    .line 877
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_d

    .line 878
    iget-object v9, p1, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 882
    :cond_d
    iput-object v8, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 884
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/h/d$b;->addAndGet(I)I

    move-result v6

    .line 885
    if-nez v6, :cond_1

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    invoke-virtual {v2}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/d$d$a;

    .line 943
    .local v1, "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 944
    iget-object v2, v1, Lrx/h/d$d$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {v1}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    check-cast v1, Lrx/h/d$d$a;

    .restart local v1    # "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    goto :goto_0

    .line 947
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 904
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    iget-boolean v0, p0, Lrx/h/d$d;->e:Z

    return v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 909
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    iget-object v0, p0, Lrx/h/d$d;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    iget-object v0, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    .line 916
    .local v0, "h":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/d$d$a;

    .local v1, "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    if-eqz v1, :cond_0

    .line 917
    move-object v0, v1

    goto :goto_0

    .line 919
    :cond_0
    iget-object v2, v0, Lrx/h/d$d$a;->a:Ljava/lang/Object;

    return-object v2
.end method

.method public e()I
    .locals 3

    .prologue
    .line 924
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    const/4 v1, 0x0

    .line 925
    .local v1, "s":I
    iget-object v2, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    invoke-virtual {v2}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/d$d$a;

    .line 926
    .local v0, "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 927
    invoke-virtual {v0}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    check-cast v0, Lrx/h/d$d$a;

    .line 928
    .restart local v0    # "n":Lrx/h/d$d$a;, "Lrx/h/d$d$a<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 935
    .local p0, "this":Lrx/h/d$d;, "Lrx/h/d$d<TT;>;"
    iget-object v0, p0, Lrx/h/d$d;->b:Lrx/h/d$d$a;

    invoke-virtual {v0}, Lrx/h/d$d$a;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
