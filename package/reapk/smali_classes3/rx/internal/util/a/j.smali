.class public Lrx/internal/util/a/j;
.super Lrx/internal/util/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/k",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# instance fields
.field A:J

.field B:J

.field C:J

.field D:J

.field E:J

.field F:J

.field G:J

.field H:J

.field I:J

.field J:J

.field v:J

.field w:J

.field x:J

.field y:J

.field z:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/internal/util/a/k;-><init>(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/a/j;->b()J

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

.method public offer(Ljava/lang/Object;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 113
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v8, "Null is not a valid element"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lrx/internal/util/a/j;->c:J

    const-wide/16 v22, 0x1

    add-long v12, v8, v22

    .line 118
    .local v12, "capacity":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/util/a/j;->u:[J

    .line 121
    .local v5, "lSequenceBuffer":[J
    const-wide v10, 0x7fffffffffffffffL

    .line 123
    .local v10, "cIndex":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/j;->b()J

    move-result-wide v14

    .line 124
    .local v14, "currentProducerIndex":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/a/j;->d(J)J

    move-result-wide v6

    .line 125
    .local v6, "seqOffset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lrx/internal/util/a/j;->a([JJ)J

    move-result-wide v20

    .line 126
    .local v20, "seq":J
    sub-long v16, v20, v14

    .line 128
    .local v16, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-nez v4, :cond_2

    .line 130
    const-wide/16 v8, 0x1

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v8, v9}, Lrx/internal/util/a/j;->c(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/a/j;->a(J)J

    move-result-wide v18

    .line 147
    .local v18, "elementOffset":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/util/a/j;->a(JLjava/lang/Object;)V

    .line 151
    const-wide/16 v8, 0x1

    add-long/2addr v8, v14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lrx/internal/util/a/j;->a([JJJ)V

    .line 153
    const/4 v4, 0x1

    .end local v18    # "elementOffset":J
    :goto_0
    return v4

    .line 135
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-gez v4, :cond_1

    sub-long v8, v14, v12

    cmp-long v4, v8, v10

    if-gtz v4, :cond_1

    sub-long v8, v14, v12

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gtz v4, :cond_1

    .line 139
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v0

    .line 210
    .local v0, "currConsumerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/a/j;->a(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/a/j;->b(J)Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/a/j;->b()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 213
    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/util/a/j;->u:[J

    .line 168
    .local v3, "lSequenceBuffer":[J
    const-wide/16 v16, -0x1

    .line 170
    .local v16, "pIndex":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v8

    .line 171
    .local v8, "currentConsumerIndex":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/a/j;->d(J)J

    move-result-wide v4

    .line 172
    .local v4, "seqOffset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lrx/internal/util/a/j;->a([JJ)J

    move-result-wide v18

    .line 173
    .local v18, "seq":J
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    sub-long v10, v18, v6

    .line 175
    .local v10, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-nez v2, :cond_1

    .line 176
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v6, v7}, Lrx/internal/util/a/j;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/a/j;->a(J)J

    move-result-wide v14

    .line 193
    .local v14, "offset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/a/j;->b(J)Ljava/lang/Object;

    move-result-object v12

    .line 194
    .local v12, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v2}, Lrx/internal/util/a/j;->a(JLjava/lang/Object;)V

    .line 198
    move-object/from16 v0, p0

    iget-wide v6, v0, Lrx/internal/util/a/j;->c:J

    add-long/2addr v6, v8

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/util/a/j;->a([JJJ)V

    .line 200
    .end local v12    # "e":Ljava/lang/Object;, "TE;"
    .end local v14    # "offset":J
    :goto_0
    return-object v12

    .line 181
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-gez v2, :cond_0

    cmp-long v2, v8, v16

    if-ltz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/j;->b()J

    move-result-wide v16

    cmp-long v2, v8, v16

    if-nez v2, :cond_0

    .line 185
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/util/a/j;, "Lrx/internal/util/a/j<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v0

    .line 226
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 227
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/a/j;->b()J

    move-result-wide v4

    .line 228
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/a/j;->a()J

    move-result-wide v0

    .line 229
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 230
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
