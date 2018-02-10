.class final Lrx/h/c$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/h/c$a",
        "<TT;>;>;",
        "Lrx/e$a",
        "<TT;>;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lrx/h/c$a;

.field static final b:[Lrx/h/c$a;

.field private static final serialVersionUID:J = -0x690a478d773d9c84L


# instance fields
.field c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    new-array v0, v1, [Lrx/h/c$a;

    sput-object v0, Lrx/h/c$b;->a:[Lrx/h/c$a;

    .line 130
    new-array v0, v1, [Lrx/h/c$a;

    sput-object v0, Lrx/h/c$b;->b:[Lrx/h/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 136
    sget-object v0, Lrx/h/c$b;->a:[Lrx/h/c$a;

    invoke-virtual {p0, v0}, Lrx/h/c$b;->lazySet(Ljava/lang/Object;)V

    .line 137
    return-void
.end method


# virtual methods
.method a(Lrx/h/c$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/c$a",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    .local p1, "inner":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    const/4 v3, 0x0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    .line 163
    .local v0, "curr":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    sget-object v4, Lrx/h/c$b;->b:[Lrx/h/c$a;

    if-ne v0, v4, :cond_1

    .line 175
    :goto_0
    return v3

    .line 167
    :cond_1
    array-length v1, v0

    .line 170
    .local v1, "n":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/h/c$a;

    .line 171
    .local v2, "next":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    aput-object p1, v2, v1

    .line 174
    invoke-virtual {p0, v0, v2}, Lrx/h/c$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const/4 v3, 0x1

    goto :goto_0
.end method

.method b(Lrx/h/c$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    .local p1, "inner":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    const/4 v7, 0x0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    .line 184
    .local v0, "curr":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    sget-object v5, Lrx/h/c$b;->b:[Lrx/h/c$a;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/h/c$b;->a:[Lrx/h/c$a;

    if-ne v0, v5, :cond_2

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    array-length v3, v0

    .line 189
    .local v3, "n":I
    const/4 v2, -0x1

    .line 190
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 191
    aget-object v5, v0, v1

    if-ne v5, p1, :cond_4

    .line 192
    move v2, v1

    .line 197
    :cond_3
    if-ltz v2, :cond_1

    .line 202
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 203
    sget-object v4, Lrx/h/c$b;->a:[Lrx/h/c$a;

    .line 210
    .local v4, "next":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    :goto_2
    invoke-virtual {p0, v0, v4}, Lrx/h/c$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 190
    .end local v4    # "next":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/h/c$a;

    .line 206
    .restart local v4    # "next":[Lrx/h/c$a;, "[Lrx/h/c$a<TT;>;"
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/c$b;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/h/c$a;

    invoke-direct {v1, p0, p1}, Lrx/h/c$a;-><init>(Lrx/h/c$b;Lrx/l;)V

    .line 142
    .local v1, "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 143
    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 145
    invoke-virtual {p0, v1}, Lrx/h/c$b;->a(Lrx/h/c$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v1}, Lrx/h/c$a;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lrx/h/c$b;->b(Lrx/h/c$a;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lrx/h/c$b;->c:Ljava/lang/Throwable;

    .line 151
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 245
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    sget-object v4, Lrx/h/c$b;->b:[Lrx/h/c$a;

    invoke-virtual {p0, v4}, Lrx/h/c$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    .local v0, "arr$":[Lrx/h/c$a;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 246
    .local v3, "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    invoke-virtual {v3}, Lrx/h/c$a;->onCompleted()V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    iput-object p1, p0, Lrx/h/c$b;->c:Ljava/lang/Throwable;

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v6, Lrx/h/c$b;->b:[Lrx/h/c$a;

    invoke-virtual {p0, v6}, Lrx/h/c$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    .local v0, "arr$":[Lrx/h/c$a;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 230
    .local v5, "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    :try_start_0
    invoke-virtual {v5, p1}, Lrx/h/c$a;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v5    # "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    :cond_1
    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    .local v0, "arr$":[Lrx/h/c$a;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 219
    .local v3, "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    invoke-virtual {v3, p1}, Lrx/h/c$a;->onNext(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "pp":Lrx/h/c$a;, "Lrx/h/c$a<TT;>;"
    :cond_0
    return-void
.end method
