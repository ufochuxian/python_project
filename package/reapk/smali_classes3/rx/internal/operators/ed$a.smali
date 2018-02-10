.class final Lrx/internal/operators/ed$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ed$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final b:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<-TR;>;"
        }
    .end annotation
.end field

.field c:I

.field private final d:Lrx/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/y",
            "<+TR;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/i/b;

.field private volatile f:[Ljava/lang/Object;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 176
    sget v0, Lrx/internal/util/j;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/ed$a;->b:I

    return-void
.end method

.method public constructor <init>(Lrx/l;Lrx/c/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/y",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/ed$a;, "Lrx/internal/operators/ed$a<TR;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "zipFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ed$a;->e:Lrx/i/b;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/ed$a;->a:Lrx/f;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/ed$a;->d:Lrx/c/y;

    .line 186
    iget-object v0, p0, Lrx/internal/operators/ed$a;->e:Lrx/i/b;

    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 187
    return-void
.end method


# virtual methods
.method a()V
    .locals 20

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/ed$a;, "Lrx/internal/operators/ed$a<TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/ed$a;->f:[Ljava/lang/Object;

    .line 216
    .local v14, "subscribers":[Ljava/lang/Object;
    if-nez v14, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ed$a;->getAndIncrement()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_0

    .line 221
    array-length v10, v14

    .line 222
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/ed$a;->a:Lrx/f;

    .line 223
    .local v5, "child":Lrx/f;, "Lrx/f<-TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/ed$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v13, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    :goto_1
    new-array v15, v10, [Ljava/lang/Object;

    .line 228
    .local v15, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 229
    .local v2, "allHaveValues":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v10, :cond_5

    .line 230
    aget-object v16, v14, v7

    check-cast v16, Lrx/internal/operators/ed$a$a;

    move-object/from16 v0, v16

    iget-object v4, v0, Lrx/internal/operators/ed$a$a;->a:Lrx/internal/util/j;

    .line 231
    .local v4, "buffer":Lrx/internal/util/j;
    invoke-virtual {v4}, Lrx/internal/util/j;->j()Ljava/lang/Object;

    move-result-object v11

    .line 233
    .local v11, "n":Ljava/lang/Object;
    if-nez v11, :cond_3

    .line 234
    const/4 v2, 0x0

    .line 229
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {v4, v11}, Lrx/internal/util/j;->b(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 239
    invoke-interface {v5}, Lrx/f;->onCompleted()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ed$a;->e:Lrx/i/b;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/i/b;->unsubscribe()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {v4, v11}, Lrx/internal/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    goto :goto_3

    .line 249
    .end local v4    # "buffer":Lrx/internal/util/j;
    .end local v11    # "n":Ljava/lang/Object;
    :cond_5
    if-eqz v2, :cond_9

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_9

    .line 252
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ed$a;->d:Lrx/c/y;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lrx/c/y;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/ed$a;->c:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/ed$a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_7

    aget-object v12, v3, v8

    .line 262
    .local v12, "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/ed$a$a;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v4, v12, Lrx/internal/operators/ed$a$a;->a:Lrx/internal/util/j;

    .line 263
    .restart local v4    # "buffer":Lrx/internal/util/j;
    invoke-virtual {v4}, Lrx/internal/util/j;->i()Ljava/lang/Object;

    .line 265
    invoke-virtual {v4}, Lrx/internal/util/j;->j()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lrx/internal/util/j;->b(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 267
    invoke-interface {v5}, Lrx/f;->onCompleted()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ed$a;->e:Lrx/i/b;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/i/b;->unsubscribe()V

    goto/16 :goto_0

    .line 256
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "buffer":Lrx/internal/util/j;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v6

    .line 257
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6, v5, v15}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v4    # "buffer":Lrx/internal/util/j;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 273
    .end local v4    # "buffer":Lrx/internal/util/j;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/ed$a;->c:I

    move/from16 v16, v0

    sget v17, Lrx/internal/operators/ed$a;->b:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 274
    move-object v3, v14

    array-length v9, v3

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_8

    aget-object v12, v3, v8

    .line 275
    .restart local v12    # "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/ed$a$a;

    .end local v12    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/ed$a;->c:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lrx/internal/operators/ed$a$a;->a(J)V

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 277
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/ed$a;->c:I

    goto/16 :goto_1

    .line 283
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ed$a;->decrementAndGet()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_2

    goto/16 :goto_0
.end method

.method public start([Lrx/e;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5
    .param p1, "os"    # [Lrx/e;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/ed$a;, "Lrx/internal/operators/ed$a<TR;>;"
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 192
    .local v2, "subscribers":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 193
    new-instance v1, Lrx/internal/operators/ed$a$a;

    invoke-direct {v1, p0}, Lrx/internal/operators/ed$a$a;-><init>(Lrx/internal/operators/ed$a;)V

    .line 194
    .local v1, "io":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    aput-object v1, v2, v0

    .line 195
    iget-object v3, p0, Lrx/internal/operators/ed$a;->e:Lrx/i/b;

    invoke-virtual {v3, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "io":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/ed$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v2, p0, Lrx/internal/operators/ed$a;->f:[Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 202
    aget-object v4, p1, v0

    aget-object v3, v2, v0

    check-cast v3, Lrx/internal/operators/ed$a$a;

    invoke-virtual {v4, v3}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    return-void
.end method
