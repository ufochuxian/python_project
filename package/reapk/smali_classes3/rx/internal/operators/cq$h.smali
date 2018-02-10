.class final Lrx/internal/operators/cq$h;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/cq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/cq$d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .prologue
    .line 843
    .local p0, "this":Lrx/internal/operators/cq$h;, "Lrx/internal/operators/cq$h<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 844
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 859
    .local p0, "this":Lrx/internal/operators/cq$h;, "Lrx/internal/operators/cq$h<TT;>;"
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$h;->add(Ljava/lang/Object;)Z

    .line 860
    iget v0, p0, Lrx/internal/operators/cq$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/cq$h;->a:I

    .line 861
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 853
    .local p0, "this":Lrx/internal/operators/cq$h;, "Lrx/internal/operators/cq$h<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$h;->add(Ljava/lang/Object;)Z

    .line 854
    iget v0, p0, Lrx/internal/operators/cq$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/cq$h;->a:I

    .line 855
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Lrx/internal/operators/cq$h;, "Lrx/internal/operators/cq$h<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$h;->add(Ljava/lang/Object;)Z

    .line 848
    iget v0, p0, Lrx/internal/operators/cq$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/cq$h;->a:I

    .line 849
    return-void
.end method

.method public replay(Lrx/internal/operators/cq$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$h;, "Lrx/internal/operators/cq$h<TT;>;"
    .local p1, "output":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const/4 v10, 0x0

    .line 865
    monitor-enter p1

    .line 866
    :try_start_0
    iget-boolean v11, p1, Lrx/internal/operators/cq$b;->e:Z

    if-eqz v11, :cond_1

    .line 867
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/cq$b;->f:Z

    .line 868
    monitor-exit p1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/cq$b;->e:Z

    .line 871
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 876
    iget v7, p0, Lrx/internal/operators/cq$h;->a:I

    .line 878
    .local v7, "sourceIndex":I
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 879
    .local v2, "destinationIndexObject":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 881
    .local v1, "destinationIndex":I
    :goto_2
    iget-object v0, p1, Lrx/internal/operators/cq$b;->b:Lrx/l;

    .line 882
    .local v0, "child":Lrx/l;, "Lrx/l<-TT;>;"
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v8

    .line 887
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 889
    .local v4, "e":J
    :goto_3
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    if-ge v1, v7, :cond_3

    .line 890
    invoke-virtual {p0, v1}, Lrx/internal/operators/cq$h;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 892
    .local v6, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v0, v6}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_0

    .line 903
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 906
    add-int/lit8 v1, v1, 0x1

    .line 907
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 908
    goto :goto_3

    .line 871
    .end local v0    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v1    # "destinationIndex":I
    .end local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v4    # "e":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "sourceIndex":I
    .end local v8    # "r":J
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .restart local v7    # "sourceIndex":I
    :cond_2
    move v1, v10

    .line 879
    goto :goto_2

    .line 895
    .restart local v0    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v1    # "destinationIndex":I
    .restart local v4    # "e":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "r":J
    :catch_0
    move-exception v3

    .line 896
    .local v3, "err":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 897
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->unsubscribe()V

    .line 898
    invoke-static {v6}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v6}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 899
    invoke-static {v6}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v0, v10}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 909
    .end local v3    # "err":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_4

    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;

    .line 911
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    .line 912
    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/cq$b;->produced(J)J

    .line 916
    :cond_4
    monitor-enter p1

    .line 917
    :try_start_3
    iget-boolean v11, p1, Lrx/internal/operators/cq$b;->f:Z

    if-nez v11, :cond_5

    .line 918
    const/4 v10, 0x0

    iput-boolean v10, p1, Lrx/internal/operators/cq$b;->e:Z

    .line 919
    monitor-exit p1

    goto/16 :goto_0

    .line 922
    :catchall_1
    move-exception v10

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 921
    :cond_5
    const/4 v11, 0x0

    :try_start_4
    iput-boolean v11, p1, Lrx/internal/operators/cq$b;->f:Z

    .line 922
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method
