.class final Lrx/internal/operators/al$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7928e15851eba4daL


# instance fields
.field private final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/al$a;, "Lrx/internal/operators/al$a<TT;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lrx/internal/operators/al$a;->a:Lrx/l;

    .line 76
    iput-object p2, p0, Lrx/internal/operators/al$a;->b:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/al$a;, "Lrx/internal/operators/al$a<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/al$a;->a:Lrx/l;

    .line 157
    .local v3, "o":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/al$a;->b:Ljava/util/Iterator;

    .line 160
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_0
    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v4}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 188
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {v3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 168
    .end local v0    # "b":Z
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 183
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v1

    .line 184
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method a(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/al$a;, "Lrx/internal/operators/al$a<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/al$a;->a:Lrx/l;

    .line 97
    .local v5, "o":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v4, p0, Lrx/internal/operators/al$a;->b:Ljava/util/Iterator;

    .line 99
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v6, p1

    .line 100
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "e":J
    :cond_0
    :goto_0
    cmp-long v9, v2, v6

    if-eqz v9, :cond_4

    .line 104
    invoke-virtual {v5}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 117
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5, v8}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v5}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 126
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 132
    .local v0, "b":Z
    if-nez v0, :cond_3

    .line 133
    invoke-virtual {v5}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 134
    invoke-virtual {v5}, Lrx/l;->onCompleted()V

    goto :goto_1

    .line 112
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_1

    .line 127
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v1

    .line 128
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_1

    .line 139
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 140
    goto :goto_0

    .line 142
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/al$a;->get()J

    move-result-wide v6

    .line 143
    cmp-long v9, v2, v6

    if-nez v9, :cond_0

    .line 144
    invoke-static {p0, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v6

    .line 145
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_1

    .line 148
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/al$a;, "Lrx/internal/operators/al$a<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lrx/internal/operators/al$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/al$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/al$a;->a()V

    goto :goto_0

    .line 88
    :cond_2
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/al$a;->a(J)V

    goto :goto_0
.end method
