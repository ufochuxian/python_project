.class final Lrx/b$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Ljava/lang/Iterable;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lrx/b$30;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 12
    .param p1, "s"    # Lrx/d;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 174
    new-instance v8, Lrx/i/b;

    invoke-direct {v8}, Lrx/i/b;-><init>()V

    .line 175
    .local v8, "set":Lrx/i/b;
    invoke-interface {p1, v8}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 180
    :try_start_0
    iget-object v9, p0, Lrx/b$30;->a:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 186
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    if-nez v5, :cond_1

    .line 187
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "The iterator returned is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v9}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 285
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_1
    const/4 v3, 0x1

    .line 193
    .local v3, "empty":Z
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 195
    .local v7, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lrx/b$30$1;

    invoke-direct {v4, p0, v7, v8, p1}, Lrx/b$30$1;-><init>(Lrx/b$30;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/i/b;Lrx/d;)V

    .line 222
    .local v4, "inner":Lrx/d;
    :goto_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lrx/i/b;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 229
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 240
    .local v0, "b":Z
    if-nez v0, :cond_3

    .line 241
    if-eqz v3, :cond_0

    .line 242
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 230
    .end local v0    # "b":Z
    :catch_1
    move-exception v2

    .line 231
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 232
    invoke-virtual {v8}, Lrx/i/b;->unsubscribe()V

    .line 233
    invoke-interface {p1, v2}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {v2}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_3
    const/4 v3, 0x0

    .line 249
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lrx/i/b;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 256
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    .local v1, "c":Lrx/b;
    if-nez v1, :cond_6

    .line 268
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v9, "One of the sources is null"

    invoke-direct {v6, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 269
    .local v6, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 270
    invoke-virtual {v8}, Lrx/i/b;->unsubscribe()V

    .line 271
    invoke-interface {p1, v6}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    .end local v1    # "c":Lrx/b;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 259
    invoke-virtual {v8}, Lrx/i/b;->unsubscribe()V

    .line 260
    invoke-interface {p1, v2}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    :cond_4
    invoke-static {v2}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "c":Lrx/b;
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    invoke-static {v6}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lrx/i/b;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 283
    invoke-virtual {v1, v4}, Lrx/b;->a(Lrx/d;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$30;->a(Lrx/d;)V

    return-void
.end method
