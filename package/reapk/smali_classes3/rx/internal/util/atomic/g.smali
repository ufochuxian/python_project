.class public final Lrx/internal/util/atomic/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:I

.field private static final j:Ljava/lang/Object;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field c:I

.field d:J

.field e:I

.field f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/atomic/g;->a:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/atomic/g;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v3, 0x8

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lrx/internal/util/a/p;->a(I)I

    move-result v2

    .line 47
    .local v2, "p2capacity":I
    add-int/lit8 v1, v2, -0x1

    .line 48
    .local v1, "mask":I
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lrx/internal/util/atomic/g;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lrx/internal/util/atomic/g;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 51
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v0, p0, Lrx/internal/util/atomic/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 52
    iput v1, p0, Lrx/internal/util/atomic/g;->e:I

    .line 53
    invoke-direct {p0, v2}, Lrx/internal/util/atomic/g;->a(I)V

    .line 54
    iput-object v0, p0, Lrx/internal/util/atomic/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iput v1, p0, Lrx/internal/util/atomic/g;->g:I

    .line 56
    add-int/lit8 v3, v1, -0x1

    int-to-long v4, v3

    iput-wide v4, p0, Lrx/internal/util/atomic/g;->d:J

    .line 57
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/g;->a(J)V

    .line 58
    return-void
.end method

.method private static a(JI)I
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .prologue
    .line 244
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lrx/internal/util/atomic/g;->b(I)I

    move-result v0

    return v0
.end method

.method private a()J
    .locals 2

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 6
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 147
    iput-object p1, p0, Lrx/internal/util/atomic/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 148
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v1

    .line 149
    .local v1, "offsetInNew":I
    invoke-static {p1, v1}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "n":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    move-object v0, v2

    .line 155
    .end local v0    # "n":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 153
    .restart local v0    # "n":Ljava/lang/Object;, "TT;"
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/g;->b(J)V

    .line 154
    invoke-static {p1, v1, v2}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/g;->b(I)I

    move-result v0

    invoke-static {p1, v0}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/atomic/g;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/g;->c:I

    .line 217
    return-void
.end method

.method private a(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 236
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 237
    return-void
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .locals 6
    .param p2, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x1

    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 102
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lrx/internal/util/atomic/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 104
    add-long v2, p2, p6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/atomic/g;->d:J

    .line 105
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/atomic/g;->a(J)V

    .line 106
    invoke-static {v1, p4, p5}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0, p1, v1}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 108
    sget-object v2, Lrx/internal/util/atomic/g;->j:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/g;->b(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 3
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/g;->a(J)V

    .line 95
    invoke-static {p1, p5, p2}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method private static b(I)I
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 247
    return p0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 2
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lrx/internal/util/atomic/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 187
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v0

    .line 188
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private b(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 241
    return-void
.end method

.method private c()J
    .locals 2

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 232
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 212
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/g;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 68
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 71
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/atomic/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 72
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lrx/internal/util/atomic/g;->c()J

    move-result-wide v6

    .line 73
    .local v6, "index":J
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/util/atomic/g;->e:I

    move/from16 v18, v0

    .line 74
    .local v18, "mask":I
    move/from16 v0, v18

    invoke-static {v6, v7, v0}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v8

    .line 75
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/atomic/g;->d:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 76
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    .line 88
    :goto_0
    return v3

    .line 78
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lrx/internal/util/atomic/g;->c:I

    .line 80
    .local v9, "lookAheadStep":I
    int-to-long v10, v9

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v2

    .line 81
    .local v2, "lookAheadElementOffset":I
    invoke-static {v4, v2}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 82
    int-to-long v10, v9

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/util/atomic/g;->d:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 83
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_0

    .line 84
    :cond_2
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move/from16 v0, v18

    invoke-static {v10, v11, v0}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v3

    invoke-static {v4, v3}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 85
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v3

    goto :goto_0

    .line 87
    :cond_3
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move v14, v8

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 88
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 168
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->d()J

    move-result-wide v2

    .line 169
    .local v2, "index":J
    iget v4, p0, Lrx/internal/util/atomic/g;->g:I

    .line 170
    .local v4, "mask":I
    invoke-static {v2, v3, v4}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v5

    .line 171
    .local v5, "offset":I
    invoke-static {v0, v5}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, "e":Ljava/lang/Object;
    sget-object v6, Lrx/internal/util/atomic/g;->j:Ljava/lang/Object;

    if-ne v1, v6, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-direct {p0, v6, v2, v3, v4}, Lrx/internal/util/atomic/g;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .end local v1    # "e":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Lrx/internal/util/atomic/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 129
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->d()J

    move-result-wide v2

    .line 130
    .local v2, "index":J
    iget v5, p0, Lrx/internal/util/atomic/g;->g:I

    .line 131
    .local v5, "mask":I
    invoke-static {v2, v3, v5}, Lrx/internal/util/atomic/g;->a(JI)I

    move-result v6

    .line 132
    .local v6, "offset":I
    invoke-static {v0, v6}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "e":Ljava/lang/Object;
    sget-object v8, Lrx/internal/util/atomic/g;->j:Ljava/lang/Object;

    if-ne v1, v8, :cond_0

    const/4 v4, 0x1

    .line 134
    .local v4, "isNextBuffer":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 135
    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/g;->b(J)V

    .line 136
    invoke-static {v0, v6, v7}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 142
    .end local v1    # "e":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 133
    .end local v4    # "isNextBuffer":Z
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 138
    .restart local v4    # "isNextBuffer":Z
    :cond_1
    if-eqz v4, :cond_2

    .line 139
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v2, v3, v5}, Lrx/internal/util/atomic/g;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v7

    .line 142
    goto :goto_1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 279
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->b()J

    move-result-wide v0

    .line 201
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 202
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->a()J

    move-result-wide v4

    .line 203
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/g;->b()J

    move-result-wide v0

    .line 204
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 205
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/util/atomic/g;, "Lrx/internal/util/atomic/g<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
