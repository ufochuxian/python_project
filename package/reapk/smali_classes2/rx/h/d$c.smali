.class final Lrx/h/d$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/d$c$a;
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

.field final b:J

.field final c:Lrx/h;

.field volatile d:Lrx/h/d$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$c$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field e:Lrx/h/d$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$c$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field f:I

.field volatile g:Z

.field h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IJLrx/h;)V
    .locals 4
    .param p1, "limit"    # I
    .param p2, "maxAgeMillis"    # J
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 968
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput p1, p0, Lrx/h/d$c;->a:I

    .line 970
    new-instance v0, Lrx/h/d$c$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/h/d$c$a;-><init>(Ljava/lang/Object;J)V

    .line 971
    .local v0, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    iput-object v0, p0, Lrx/h/d$c;->e:Lrx/h/d$c$a;

    .line 972
    iput-object v0, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 973
    iput-wide p2, p0, Lrx/h/d$c;->b:J

    .line 974
    iput-object p4, p0, Lrx/h/d$c;->c:Lrx/h;

    .line 975
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1019
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$c;->g()V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$c;->g:Z

    .line 1021
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/h/d$c;->c:Lrx/h;

    invoke-virtual {v6}, Lrx/h;->now()J

    move-result-wide v4

    .line 981
    .local v4, "now":J
    new-instance v2, Lrx/h/d$c$a;

    invoke-direct {v2, p1, v4, v5}, Lrx/h/d$c$a;-><init>(Ljava/lang/Object;J)V

    .line 982
    .local v2, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    iget-object v6, p0, Lrx/h/d$c;->e:Lrx/h/d$c$a;

    invoke-virtual {v6, v2}, Lrx/h/d$c$a;->set(Ljava/lang/Object;)V

    .line 983
    iput-object v2, p0, Lrx/h/d$c;->e:Lrx/h/d$c$a;

    .line 985
    iget-wide v6, p0, Lrx/h/d$c;->b:J

    sub-long/2addr v4, v6

    .line 987
    iget v3, p0, Lrx/h/d$c;->f:I

    .line 988
    .local v3, "s":I
    iget-object v1, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 989
    .local v1, "h0":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    move-object v0, v1

    .line 991
    .local v0, "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    iget v6, p0, Lrx/h/d$c;->a:I

    if-ne v3, v6, :cond_2

    .line 992
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    check-cast v0, Lrx/h/d$c$a;

    .line 997
    .restart local v0    # "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    check-cast v2, Lrx/h/d$c$a;

    .restart local v2    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-eqz v2, :cond_0

    .line 998
    iget-wide v6, v2, Lrx/h/d$c$a;->b:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_3

    .line 1005
    :cond_0
    iput v3, p0, Lrx/h/d$c;->f:I

    .line 1006
    if-eq v0, v1, :cond_1

    .line 1007
    iput-object v0, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 1009
    :cond_1
    return-void

    .line 994
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1001
    :cond_3
    move-object v0, v2

    .line 1002
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1012
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$c;->g()V

    .line 1013
    iput-object p1, p0, Lrx/h/d$c;->h:Ljava/lang/Throwable;

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/d$c;->g:Z

    .line 1015
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
    .line 1057
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    .local p1, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-virtual {p1}, Lrx/h/d$b;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p1, Lrx/h/d$b;->a:Lrx/l;

    .line 1063
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v6, 0x1

    .line 1067
    .local v6, "missed":I
    :cond_1
    iget-object v9, p1, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 1068
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 1071
    .local v2, "e":J
    iget-object v8, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    check-cast v8, Lrx/h/d$c$a;

    .line 1072
    .local v8, "node":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-nez v8, :cond_2

    .line 1073
    invoke-virtual {p0}, Lrx/h/d$c;->h()Lrx/h/d$c$a;

    move-result-object v8

    .line 1076
    :cond_2
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 1077
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1078
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1082
    :cond_3
    iget-boolean v1, p0, Lrx/h/d$c;->g:Z

    .line 1083
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/h/d$c$a;

    .line 1084
    .local v7, "next":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 1086
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 1087
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 1088
    iget-object v5, p0, Lrx/h/d$c;->h:Ljava/lang/Throwable;

    .line 1089
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    .line 1090
    invoke-virtual {v0, v5}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1084
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1092
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 1097
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v4, :cond_8

    .line 1107
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_c

    .line 1108
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1109
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1101
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :cond_8
    iget-object v9, v7, Lrx/h/d$c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 1103
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 1104
    move-object v8, v7

    .line 1105
    goto :goto_1

    .line 1113
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :cond_9
    iget-boolean v1, p0, Lrx/h/d$c;->g:Z

    .line 1114
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    const/4 v4, 0x1

    .line 1116
    .restart local v4    # "empty":Z
    :goto_3
    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    .line 1117
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 1118
    iget-object v5, p0, Lrx/h/d$c;->h:Ljava/lang/Throwable;

    .line 1119
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_b

    .line 1120
    invoke-virtual {v0, v5}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1114
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 1122
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 1128
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_d

    .line 1129
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_d

    .line 1130
    iget-object v9, p1, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1134
    :cond_d
    iput-object v8, p1, Lrx/h/d$b;->f:Ljava/lang/Object;

    .line 1136
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/h/d$b;->addAndGet(I)I

    move-result v6

    .line 1137
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
    .line 1195
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$c;->h()Lrx/h/d$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/d$c$a;

    .line 1198
    .local v1, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1199
    iget-object v2, v1, Lrx/h/d$c$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-virtual {v1}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    check-cast v1, Lrx/h/d$c$a;

    .restart local v1    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    goto :goto_0

    .line 1202
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1159
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    iget-boolean v0, p0, Lrx/h/d$c;->g:Z

    return v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1164
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    iget-object v0, p0, Lrx/h/d$c;->h:Ljava/lang/Throwable;

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
    .line 1169
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$c;->h()Lrx/h/d$c$a;

    move-result-object v0

    .line 1171
    .local v0, "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/d$c$a;

    .local v1, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-eqz v1, :cond_0

    .line 1172
    move-object v0, v1

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v2, v0, Lrx/h/d$c$a;->a:Ljava/lang/Object;

    return-object v2
.end method

.method public e()I
    .locals 3

    .prologue
    .line 1179
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    const/4 v1, 0x0

    .line 1180
    .local v1, "s":I
    invoke-virtual {p0}, Lrx/h/d$c;->h()Lrx/h/d$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/d$c$a;

    .line 1181
    .local v0, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1182
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    check-cast v0, Lrx/h/d$c$a;

    .line 1183
    .restart local v0    # "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1190
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$c;->h()Lrx/h/d$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 10

    .prologue
    .line 1024
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    iget-object v3, p0, Lrx/h/d$c;->c:Lrx/h;

    invoke-virtual {v3}, Lrx/h;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/h/d$c;->b:J

    sub-long v4, v6, v8

    .line 1026
    .local v4, "now":J
    iget-object v1, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 1027
    .local v1, "h0":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    move-object v0, v1

    .line 1030
    .local v0, "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/h/d$c$a;

    .local v2, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-eqz v2, :cond_0

    .line 1031
    iget-wide v6, v2, Lrx/h/d$c$a;->b:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 1037
    :cond_0
    if-eq v1, v0, :cond_1

    .line 1038
    iput-object v0, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 1040
    :cond_1
    return-void

    .line 1034
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method h()Lrx/h/d$c$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h/d$c$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Lrx/h/d$c;, "Lrx/h/d$c<TT;>;"
    iget-object v4, p0, Lrx/h/d$c;->c:Lrx/h;

    invoke-virtual {v4}, Lrx/h;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/h/d$c;->b:J

    sub-long v2, v4, v6

    .line 1044
    .local v2, "now":J
    iget-object v0, p0, Lrx/h/d$c;->d:Lrx/h/d$c$a;

    .line 1046
    .local v0, "h":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/h/d$c$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/d$c$a;

    .local v1, "n":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    if-eqz v1, :cond_0

    .line 1047
    iget-wide v4, v1, Lrx/h/d$c$a;->b:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 1052
    :cond_0
    return-object v0

    .line 1050
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
