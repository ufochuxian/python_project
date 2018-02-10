.class final Lrx/b$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a([Lrx/b;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lrx/b;


# direct methods
.method constructor <init>([Lrx/b;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lrx/b$23;->a:[Lrx/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 10
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 105
    new-instance v7, Lrx/i/b;

    invoke-direct {v7}, Lrx/i/b;-><init>()V

    .line 106
    .local v7, "set":Lrx/i/b;
    invoke-interface {p1, v7}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 108
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 110
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Lrx/b$23$1;

    invoke-direct {v3, p0, v6, v7, p1}, Lrx/b$23$1;-><init>(Lrx/b$23;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/i/b;Lrx/d;)V

    .line 136
    .local v3, "inner":Lrx/d;
    iget-object v0, p0, Lrx/b$23;->a:[Lrx/b;

    .local v0, "arr$":[Lrx/b;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 137
    .local v1, "c":Lrx/b;
    invoke-virtual {v7}, Lrx/i/b;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    .end local v1    # "c":Lrx/b;
    :cond_0
    :goto_1
    return-void

    .line 140
    .restart local v1    # "c":Lrx/b;
    :cond_1
    if-nez v1, :cond_3

    .line 141
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v8, "One of the sources is null"

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, "npe":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    invoke-virtual {v7}, Lrx/i/b;->unsubscribe()V

    .line 144
    invoke-interface {p1, v5}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v5}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 150
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lrx/i/b;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    invoke-virtual {v1, v3}, Lrx/b;->a(Lrx/d;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$23;->a(Lrx/d;)V

    return-void
.end method
