.class Lrx/internal/operators/cq$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/cq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/cq$c;",
        ">;",
        "Lrx/internal/operators/cq$d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field a:Lrx/internal/operators/cq$c;

.field b:I

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 961
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 962
    new-instance v0, Lrx/internal/operators/cq$c;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/cq$c;-><init>(Ljava/lang/Object;J)V

    .line 963
    .local v0, "n":Lrx/internal/operators/cq$c;
    iput-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    .line 964
    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->set(Ljava/lang/Object;)V

    .line 965
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1133
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    return-object p1
.end method

.method final a()V
    .locals 4

    .prologue
    .line 980
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cq$c;

    .line 981
    .local v0, "head":Lrx/internal/operators/cq$c;
    invoke-virtual {v0}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$c;

    .line 982
    .local v1, "next":Lrx/internal/operators/cq$c;
    if-nez v1, :cond_0

    .line 983
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_0
    iget v2, p0, Lrx/internal/operators/cq$a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/cq$a;->b:I

    .line 988
    invoke-virtual {p0, v1}, Lrx/internal/operators/cq$a;->b(Lrx/internal/operators/cq$c;)V

    .line 989
    return-void
.end method

.method final a(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 991
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cq$c;

    .line 992
    .local v0, "head":Lrx/internal/operators/cq$c;
    :goto_0
    if-lez p1, :cond_0

    .line 993
    invoke-virtual {v0}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/cq$c;
    check-cast v0, Lrx/internal/operators/cq$c;

    .line 994
    .restart local v0    # "head":Lrx/internal/operators/cq$c;
    add-int/lit8 p1, p1, -0x1

    .line 995
    iget v1, p0, Lrx/internal/operators/cq$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/cq$a;->b:I

    goto :goto_0

    .line 998
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->b(Lrx/internal/operators/cq$c;)V

    .line 999
    return-void
.end method

.method final a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->b()Lrx/internal/operators/cq$c;

    move-result-object v0

    .line 1162
    .local v0, "n":Lrx/internal/operators/cq$c;
    :goto_0
    invoke-virtual {v0}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1163
    .local v1, "next":Lrx/internal/operators/cq$c;
    if-eqz v1, :cond_0

    .line 1164
    iget-object v2, v1, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    .line 1165
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1166
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1175
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1169
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1170
    move-object v0, v1

    .line 1174
    goto :goto_0
.end method

.method final a(Lrx/internal/operators/cq$c;)V
    .locals 1
    .param p1, "n"    # Lrx/internal/operators/cq$c;

    .prologue
    .line 972
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cq$c;->set(Ljava/lang/Object;)V

    .line 973
    iput-object p1, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    .line 974
    iget v0, p0, Lrx/internal/operators/cq$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/cq$a;->b:I

    .line 975
    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1143
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    return-object p1
.end method

.method b()Lrx/internal/operators/cq$c;
    .locals 1

    .prologue
    .line 1015
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cq$c;

    return-object v0
.end method

.method final b(Lrx/internal/operators/cq$c;)V
    .locals 0
    .param p1, "n"    # Lrx/internal/operators/cq$c;

    .prologue
    .line 1005
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/cq$a;->set(Ljava/lang/Object;)V

    .line 1006
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 1151
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    return-void
.end method

.method public final complete()V
    .locals 6

    .prologue
    .line 1036
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1037
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/cq$c;

    iget-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/cq$c;-><init>(Ljava/lang/Object;J)V

    .line 1038
    .local v0, "n":Lrx/internal/operators/cq$c;
    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->a(Lrx/internal/operators/cq$c;)V

    .line 1039
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->d()V

    .line 1040
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 1158
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 1177
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    iget-object v0, v0, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    iget-object v0, v0, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1028
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1029
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/cq$c;

    iget-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/cq$c;-><init>(Ljava/lang/Object;J)V

    .line 1030
    .local v0, "n":Lrx/internal/operators/cq$c;
    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->a(Lrx/internal/operators/cq$c;)V

    .line 1031
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->d()V

    .line 1032
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 1180
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    iget-object v0, v0, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/cq$a;->a:Lrx/internal/operators/cq$c;

    iget-object v0, v0, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1021
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/cq$c;

    iget-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/cq$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/cq$c;-><init>(Ljava/lang/Object;J)V

    .line 1022
    .local v0, "n":Lrx/internal/operators/cq$c;
    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$a;->a(Lrx/internal/operators/cq$c;)V

    .line 1023
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->c()V

    .line 1024
    return-void
.end method

.method public final replay(Lrx/internal/operators/cq$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$a;, "Lrx/internal/operators/cq$a<TT;>;"
    .local p1, "output":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const/4 v12, 0x0

    .line 1044
    monitor-enter p1

    .line 1045
    :try_start_0
    iget-boolean v9, p1, Lrx/internal/operators/cq$b;->e:Z

    if-eqz v9, :cond_1

    .line 1046
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/cq$b;->f:Z

    .line 1047
    monitor-exit p1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/cq$b;->e:Z

    .line 1050
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1056
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/internal/operators/cq$c;

    .line 1057
    .local v4, "node":Lrx/internal/operators/cq$c;
    if-nez v4, :cond_2

    .line 1058
    invoke-virtual {p0}, Lrx/internal/operators/cq$a;->b()Lrx/internal/operators/cq$c;

    move-result-object v4

    .line 1059
    iput-object v4, p1, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;

    .line 1065
    iget-wide v10, v4, Lrx/internal/operators/cq$c;->b:J

    invoke-virtual {p1, v10, v11}, Lrx/internal/operators/cq$b;->a(J)V

    .line 1068
    :cond_2
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1072
    iget-object v0, p1, Lrx/internal/operators/cq$b;->b:Lrx/l;

    .line 1073
    .local v0, "child":Lrx/l;, "Lrx/l<-TT;>;"
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v6

    .line 1078
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 1080
    .local v2, "e":J
    :cond_3
    cmp-long v9, v2, v6

    if-eqz v9, :cond_5

    .line 1081
    invoke-virtual {v4}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/cq$c;

    .line 1082
    .local v8, "v":Lrx/internal/operators/cq$c;
    if-eqz v8, :cond_5

    .line 1083
    iget-object v9, v8, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lrx/internal/operators/cq$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1085
    .local v5, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v0, v5}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1086
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "err":Ljava/lang/Throwable;
    iput-object v12, p1, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;

    .line 1091
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1092
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->unsubscribe()V

    .line 1093
    invoke-static {v5}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v5}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1094
    invoke-static {v5}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v9}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1050
    .end local v0    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local v2    # "e":J
    .end local v4    # "node":Lrx/internal/operators/cq$c;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "r":J
    .end local v8    # "v":Lrx/internal/operators/cq$c;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1098
    .restart local v0    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v2    # "e":J
    .restart local v4    # "node":Lrx/internal/operators/cq$c;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "r":J
    .restart local v8    # "v":Lrx/internal/operators/cq$c;
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 1099
    move-object v4, v8

    .line 1103
    invoke-virtual {p1}, Lrx/internal/operators/cq$b;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 1108
    .end local v5    # "o":Ljava/lang/Object;
    .end local v8    # "v":Lrx/internal/operators/cq$c;
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 1109
    iput-object v4, p1, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;

    .line 1110
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-eqz v9, :cond_6

    .line 1111
    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/cq$b;->produced(J)J

    .line 1115
    :cond_6
    monitor-enter p1

    .line 1116
    :try_start_3
    iget-boolean v9, p1, Lrx/internal/operators/cq$b;->f:Z

    if-nez v9, :cond_7

    .line 1117
    const/4 v9, 0x0

    iput-boolean v9, p1, Lrx/internal/operators/cq$b;->e:Z

    .line 1118
    monitor-exit p1

    goto/16 :goto_0

    .line 1121
    :catchall_1
    move-exception v9

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1120
    :cond_7
    const/4 v9, 0x0

    :try_start_4
    iput-boolean v9, p1, Lrx/internal/operators/cq$b;->f:Z

    .line 1121
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method
