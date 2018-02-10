.class public Lrx/internal/util/a/ah;
.super Lrx/internal/util/a/aj;
.source "SourceFile"

# interfaces
.implements Lrx/internal/util/a/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/aj",
        "<TE;>;",
        "Lrx/internal/util/a/q;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field static final a:I

.field private static final u:J

.field private static final v:J

.field private static final w:J

.field private static final x:I

.field private static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    const-string v4, "jctools.spsc.max.lookahead.step"

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lrx/internal/util/a/ah;->a:I

    .line 59
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lrx/internal/util/a/ah;->y:Ljava/lang/Object;

    .line 61
    sget-object v4, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    const-class v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 62
    .local v3, "scale":I
    const/4 v4, 0x4

    if-ne v4, v3, :cond_0

    .line 63
    const/4 v4, 0x2

    sput v4, Lrx/internal/util/a/ah;->x:I

    .line 70
    :goto_0
    sget-object v4, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    const-class v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lrx/internal/util/a/ah;->w:J

    .line 72
    :try_start_0
    const-class v4, Lrx/internal/util/a/am;

    const-string v5, "producerIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, "iField":Ljava/lang/reflect/Field;
    sget-object v4, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lrx/internal/util/a/ah;->u:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    const-class v4, Lrx/internal/util/a/aj;

    const-string v5, "consumerIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 81
    sget-object v4, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lrx/internal/util/a/ah;->v:J
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    return-void

    .line 64
    .end local v2    # "iField":Ljava/lang/reflect/Field;
    :cond_0
    const/16 v4, 0x8

    if-ne v4, v3, :cond_1

    .line 65
    const/4 v4, 0x3

    sput v4, Lrx/internal/util/a/ah;->x:I

    goto :goto_0

    .line 67
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unknown pointer size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 76
    .local v1, "ex":Ljava/lang/InternalError;
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .end local v1    # "ex":Ljava/lang/InternalError;
    .restart local v2    # "iField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 84
    .restart local v1    # "ex":Ljava/lang/InternalError;
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v1
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/aj;-><init>()V

    .line 91
    invoke-static {p1}, Lrx/internal/util/a/p;->a(I)I

    move-result v1

    .line 92
    .local v1, "p2capacity":I
    add-int/lit8 v4, v1, -0x1

    int-to-long v2, v4

    .line 93
    .local v2, "mask":J
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 94
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lrx/internal/util/a/ah;->t:[Ljava/lang/Object;

    .line 95
    iput-wide v2, p0, Lrx/internal/util/a/ah;->s:J

    .line 96
    invoke-direct {p0, v1}, Lrx/internal/util/a/ah;->a(I)V

    .line 97
    iput-object v0, p0, Lrx/internal/util/a/ah;->c:[Ljava/lang/Object;

    .line 98
    iput-wide v2, p0, Lrx/internal/util/a/ah;->b:J

    .line 99
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/internal/util/a/ah;->r:J

    .line 100
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lrx/internal/util/a/ah;->a(J)V

    .line 101
    return-void
.end method

.method private static a(JJ)J
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .prologue
    .line 275
    and-long v0, p0, p2

    invoke-static {v0, v1}, Lrx/internal/util/a/ah;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 6
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .line 196
    iput-object p1, p0, Lrx/internal/util/a/ah;->c:[Ljava/lang/Object;

    .line 197
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v2

    .line 198
    .local v2, "offsetInNew":J
    invoke-static {p1, v2, v3}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "n":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v1

    .line 204
    .end local v0    # "n":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 202
    .restart local v0    # "n":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-static {p1, v2, v3, v1}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 203
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/a/ah;->b(J)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 255
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/a/ah;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/a/ah;->q:I

    .line 256
    return-void
.end method

.method private a(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/ah;->u:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 268
    return-void
.end method

.method private a([Ljava/lang/Object;JJLjava/lang/Object;J)V
    .locals 6
    .param p2, "currIndex"    # J
    .param p4, "offset"    # J
    .param p7, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJTE;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "oldBuffer":[Ljava/lang/Object;, "[TE;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v4, 0x1

    .line 150
    array-length v0, p1

    .line 151
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 152
    .local v1, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v1, p0, Lrx/internal/util/a/ah;->t:[Ljava/lang/Object;

    .line 153
    add-long v2, p2, p7

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/a/ah;->r:J

    .line 154
    invoke-static {v1, p4, p5, p6}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1, v1}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 156
    sget-object v2, Lrx/internal/util/a/ah;->y:Ljava/lang/Object;

    invoke-static {p1, p4, p5, v2}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/a/ah;->a(J)V

    .line 159
    return-void
.end method

.method private static a([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "buffer"    # [Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "e"    # Ljava/lang/Object;

    .prologue
    .line 281
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 282
    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    .local p2, "next":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/a/ah;->c(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 163
    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z
    .locals 3
    .param p3, "index"    # J
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p5, p6, p2}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/a/ah;->a(J)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/a/ah;->c(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private b([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lrx/internal/util/a/ah;->c:[Ljava/lang/Object;

    .line 231
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v0

    .line 232
    .local v0, "offsetInNew":J
    invoke-static {p1, v0, v1}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private b(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 271
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/ah;->v:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 272
    return-void
.end method

.method private c()J
    .locals 4

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/ah;->u:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(J)J
    .locals 4
    .param p0, "index"    # J

    .prologue
    .line 278
    sget-wide v0, Lrx/internal/util/a/ah;->w:J

    sget v2, Lrx/internal/util/a/ah;->x:I

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private d()J
    .locals 4

    .prologue
    .line 263
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/ah;->v:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/ah;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/ah;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 116
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Null is not a valid element"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/a/ah;->t:[Ljava/lang/Object;

    .line 120
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lrx/internal/util/a/ah;->producerIndex:J

    .line 121
    .local v6, "index":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/util/a/ah;->s:J

    move-wide/from16 v17, v0

    .line 122
    .local v17, "mask":J
    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v8

    .line 123
    .local v8, "offset":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/a/ah;->r:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 124
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    .line 136
    :goto_0
    return v3

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/util/a/ah;->q:I

    .line 128
    .local v2, "lookAheadStep":I
    int-to-long v10, v2

    add-long/2addr v10, v6

    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v20

    .line 129
    .local v20, "lookAheadElementOffset":J
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 130
    int-to-long v10, v2

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/util/a/ah;->r:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 131
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_0

    .line 132
    :cond_2
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 133
    invoke-direct/range {v3 .. v9}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move-wide v14, v8

    move-object/from16 v16, p1

    .line 135
    invoke-direct/range {v10 .. v18}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JJLjava/lang/Object;J)V

    .line 136
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    iget-object v6, p0, Lrx/internal/util/a/ah;->c:[Ljava/lang/Object;

    .line 217
    .local v6, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/a/ah;->consumerIndex:J

    .line 218
    .local v2, "index":J
    iget-wide v4, p0, Lrx/internal/util/a/ah;->b:J

    .line 219
    .local v4, "mask":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v8

    .line 220
    .local v8, "offset":J
    invoke-static {v6, v8, v9}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 221
    .local v7, "e":Ljava/lang/Object;
    sget-object v0, Lrx/internal/util/a/ah;->y:Ljava/lang/Object;

    if-ne v7, v0, :cond_0

    .line 222
    invoke-direct {p0, v6}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/a/ah;->b([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v7

    .line 225
    .end local v7    # "e":Ljava/lang/Object;
    :cond_0
    return-object v7
.end method

.method public final poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    const/4 v0, 0x0

    .line 177
    iget-object v6, p0, Lrx/internal/util/a/ah;->c:[Ljava/lang/Object;

    .line 178
    .local v6, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/a/ah;->consumerIndex:J

    .line 179
    .local v2, "index":J
    iget-wide v4, p0, Lrx/internal/util/a/ah;->b:J

    .line 180
    .local v4, "mask":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/util/a/ah;->a(JJ)J

    move-result-wide v10

    .line 181
    .local v10, "offset":J
    invoke-static {v6, v10, v11}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 182
    .local v7, "e":Ljava/lang/Object;
    sget-object v1, Lrx/internal/util/a/ah;->y:Ljava/lang/Object;

    if-ne v7, v1, :cond_0

    const/4 v8, 0x1

    .line 183
    .local v8, "isNextBuffer":Z
    :goto_0
    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    .line 184
    invoke-static {v6, v10, v11, v0}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 185
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lrx/internal/util/a/ah;->b(J)V

    .line 191
    .end local v7    # "e":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 182
    .end local v8    # "isNextBuffer":Z
    .restart local v7    # "e":Ljava/lang/Object;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 187
    .restart local v8    # "isNextBuffer":Z
    :cond_1
    if-eqz v8, :cond_2

    .line 188
    invoke-direct {p0, v6}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/a/ah;->a([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v0

    .line 191
    goto :goto_1
.end method

.method public final size()I
    .locals 8

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/util/a/ah;, "Lrx/internal/util/a/ah<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/ah;->d()J

    move-result-wide v0

    .line 245
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 246
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/a/ah;->c()J

    move-result-wide v4

    .line 247
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/a/ah;->d()J

    move-result-wide v0

    .line 248
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 249
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
