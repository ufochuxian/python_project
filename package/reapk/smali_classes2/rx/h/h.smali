.class public final Lrx/h/h;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/h$a;


# direct methods
.method protected constructor <init>(Lrx/e$a;Lrx/h/g;Lrx/schedulers/TestScheduler;)V
    .locals 1
    .param p3, "scheduler"    # Lrx/schedulers/TestScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;",
            "Lrx/h/g",
            "<TT;>;",
            "Lrx/schedulers/TestScheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 66
    iput-object p2, p0, Lrx/h/h;->b:Lrx/h/g;

    .line 67
    invoke-virtual {p3}, Lrx/schedulers/TestScheduler;->createWorker()Lrx/h$a;

    move-result-object v0

    iput-object v0, p0, Lrx/h/h;->c:Lrx/h$a;

    .line 68
    return-void
.end method

.method public static a(Lrx/schedulers/TestScheduler;)Lrx/h/h;
    .locals 2
    .param p0, "scheduler"    # Lrx/schedulers/TestScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/schedulers/TestScheduler;",
            ")",
            "Lrx/h/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lrx/h/g;

    invoke-direct {v0}, Lrx/h/g;-><init>()V

    .line 51
    .local v0, "state":Lrx/h/g;, "Lrx/h/g<TT;>;"
    new-instance v1, Lrx/h/h$1;

    invoke-direct {v1, v0}, Lrx/h/h$1;-><init>(Lrx/h/g;)V

    iput-object v1, v0, Lrx/h/g;->d:Lrx/c/c;

    .line 59
    iget-object v1, v0, Lrx/h/g;->d:Lrx/c/c;

    iput-object v1, v0, Lrx/h/g;->e:Lrx/c/c;

    .line 61
    new-instance v1, Lrx/h/h;

    invoke-direct {v1, v0, v0, p0}, Lrx/h/h;-><init>(Lrx/e$a;Lrx/h/g;Lrx/schedulers/TestScheduler;)V

    return-object v1
.end method


# virtual methods
.method K()V
    .locals 6

    .prologue
    .line 79
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    iget-object v4, p0, Lrx/h/h;->b:Lrx/h/g;

    iget-boolean v4, v4, Lrx/h/g;->b:Z

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Lrx/h/h;->b:Lrx/h/g;

    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 81
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-virtual {v1}, Lrx/h/g$b;->onCompleted()V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    iget-object v0, p0, Lrx/h/h;->b:Lrx/h/g;

    invoke-virtual {v0}, Lrx/h/g;->b()[Lrx/h/g$b;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "delayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/h;->c:Lrx/h$a;

    new-instance v1, Lrx/h/h$4;

    invoke-direct {v1, p0, p1}, Lrx/h/h$4;-><init>(Lrx/h/h;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 169
    return-void
.end method

.method public a(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "delayTime"    # J

    .prologue
    .line 128
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    iget-object v0, p0, Lrx/h/h;->c:Lrx/h$a;

    new-instance v1, Lrx/h/h$3;

    invoke-direct {v1, p0, p1}, Lrx/h/h$3;-><init>(Lrx/h/h;Ljava/lang/Throwable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 136
    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    iget-object v4, p0, Lrx/h/h;->b:Lrx/h/g;

    iget-boolean v4, v4, Lrx/h/g;->b:Z

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lrx/h/h;->b:Lrx/h/g;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/h/g;->c(Ljava/lang/Object;)[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 114
    .local v1, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-virtual {v1, p1}, Lrx/h/g$b;->onError(Ljava/lang/Throwable;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "arr$":[Lrx/h/g$b;
    .end local v1    # "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 93
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    iget-object v0, p0, Lrx/h/h;->c:Lrx/h$a;

    new-instance v1, Lrx/h/h$2;

    invoke-direct {v1, p0}, Lrx/h/h$2;-><init>(Lrx/h/h;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 101
    return-void
.end method

.method h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/h/h;->b:Lrx/h/g;

    invoke-virtual {v4}, Lrx/h/g;->b()[Lrx/h/g$b;

    move-result-object v0

    .local v0, "arr$":[Lrx/h/g$b;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 148
    .local v3, "o":Lrx/f;, "Lrx/f<-TT;>;"
    invoke-interface {v3, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "o":Lrx/f;, "Lrx/f<-TT;>;"
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/h/h;->e(J)V

    .line 76
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lrx/h/h;->a(Ljava/lang/Throwable;J)V

    .line 109
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/h/h;, "Lrx/h/h<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lrx/h/h;->a(Ljava/lang/Object;J)V

    .line 144
    return-void
.end method
