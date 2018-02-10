.class final Lrx/internal/operators/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/d;
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
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/operators/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/d$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Throwable;

.field private g:Z


# direct methods
.method constructor <init>(Lrx/e;Lrx/internal/operators/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/internal/operators/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/d$a;, "Lrx/internal/operators/d$a<TT;>;"
    .local p1, "items":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "observer":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lrx/internal/operators/d$a;->d:Z

    .line 63
    iput-boolean v0, p0, Lrx/internal/operators/d$a;->e:Z

    .line 68
    iput-object p1, p0, Lrx/internal/operators/d$a;->b:Lrx/e;

    .line 69
    iput-object p2, p0, Lrx/internal/operators/d$a;->a:Lrx/internal/operators/d$b;

    .line 70
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/d$a;, "Lrx/internal/operators/d$a<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/d$a;->g:Z

    if-nez v4, :cond_0

    .line 92
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/d$a;->g:Z

    .line 94
    iget-object v4, p0, Lrx/internal/operators/d$a;->a:Lrx/internal/operators/d$b;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lrx/internal/operators/d$b;->a(I)V

    .line 95
    iget-object v4, p0, Lrx/internal/operators/d$a;->b:Lrx/e;

    invoke-virtual {v4}, Lrx/e;->q()Lrx/e;

    move-result-object v4

    iget-object v5, p0, Lrx/internal/operators/d$a;->a:Lrx/internal/operators/d$b;

    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 98
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/d$a;->a:Lrx/internal/operators/d$b;

    invoke-virtual {v4}, Lrx/internal/operators/d$b;->a()Lrx/Notification;

    move-result-object v1

    .line 99
    .local v1, "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    invoke-virtual {v1}, Lrx/Notification;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/d$a;->e:Z

    .line 101
    invoke-virtual {v1}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lrx/internal/operators/d$a;->c:Ljava/lang/Object;

    .line 108
    :goto_0
    return v2

    .line 106
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/d$a;->d:Z

    .line 107
    invoke-virtual {v1}, Lrx/Notification;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v1}, Lrx/Notification;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v1}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    .line 112
    iget-object v2, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lrx/internal/operators/d$a;->a:Lrx/internal/operators/d$b;

    invoke-virtual {v2}, Lrx/internal/operators/d$b;->unsubscribe()V

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 118
    iput-object v0, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    .line 119
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/d$a;, "Lrx/internal/operators/d$a<TT;>;"
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 80
    :cond_0
    iget-boolean v1, p0, Lrx/internal/operators/d$a;->d:Z

    if-nez v1, :cond_2

    .line 85
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/d$a;->e:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lrx/internal/operators/d$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/d$a;, "Lrx/internal/operators/d$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lrx/internal/operators/d$a;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/d$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/d$a;->e:Z

    .line 131
    iget-object v0, p0, Lrx/internal/operators/d$a;->c:Ljava/lang/Object;

    return-object v0

    .line 134
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/d$a;, "Lrx/internal/operators/d$a<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
