.class public Lokhttp3/internal/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lokhttp3/aa;

.field final c:Lokhttp3/ac;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLokhttp3/aa;Lokhttp3/ac;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lokhttp3/aa;
    .param p4, "cacheResponse"    # Lokhttp3/ac;

    .prologue
    const/4 v8, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v8, p0, Lokhttp3/internal/a/c$a;->l:I

    .line 140
    iput-wide p1, p0, Lokhttp3/internal/a/c$a;->a:J

    .line 141
    iput-object p3, p0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    .line 142
    iput-object p4, p0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    .line 144
    if-eqz p4, :cond_5

    .line 145
    invoke-virtual {p4}, Lokhttp3/ac;->p()J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/a/c$a;->i:J

    .line 146
    invoke-virtual {p4}, Lokhttp3/ac;->q()J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/a/c$a;->j:J

    .line 147
    invoke-virtual {p4}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v1

    .line 148
    .local v1, "headers":Lokhttp3/t;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lokhttp3/t;->a()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 149
    invoke-virtual {v1, v2}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {v4}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    .line 153
    iput-object v4, p0, Lokhttp3/internal/a/c$a;->e:Ljava/lang/String;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-static {v4}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/a/c$a;->h:Ljava/util/Date;

    goto :goto_1

    .line 156
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    invoke-static {v4}, Lokhttp3/internal/b/e;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/a/c$a;->f:Ljava/util/Date;

    .line 158
    iput-object v4, p0, Lokhttp3/internal/a/c$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    iput-object v4, p0, Lokhttp3/internal/a/c$a;->k:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-static {v4, v8}, Lokhttp3/internal/b/f;->b(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lokhttp3/internal/a/c$a;->l:I

    goto :goto_1

    .line 166
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lokhttp3/t;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static a(Lokhttp3/aa;)Z
    .locals 1
    .param p0, "request"    # Lokhttp3/aa;

    .prologue
    .line 321
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lokhttp3/internal/a/c;
    .locals 26

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 186
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    .line 259
    :goto_0
    return-object v21

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->h()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/ac;->f()Lokhttp3/s;

    move-result-object v21

    if-nez v21, :cond_1

    .line 191
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto :goto_0

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lokhttp3/internal/a/c;->a(Lokhttp3/ac;Lokhttp3/aa;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 198
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto :goto_0

    .line 201
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->g()Lokhttp3/d;

    move-result-object v11

    .line 202
    .local v11, "requestCaching":Lokhttp3/d;
    invoke-virtual {v11}, Lokhttp3/d;->a()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lokhttp3/internal/a/c$a;->a(Lokhttp3/aa;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 203
    :cond_3
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto :goto_0

    .line 206
    :cond_4
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/a/c$a;->d()J

    move-result-wide v4

    .line 207
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/a/c$a;->c()J

    move-result-wide v12

    .line 209
    .local v12, "freshMillis":J
    invoke-virtual {v11}, Lokhttp3/d;->c()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 210
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/d;->c()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 213
    :cond_5
    const-wide/16 v16, 0x0

    .line 214
    .local v16, "minFreshMillis":J
    invoke-virtual {v11}, Lokhttp3/d;->i()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 215
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/d;->i()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    .line 218
    :cond_6
    const-wide/16 v14, 0x0

    .line 219
    .local v14, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v20

    .line 220
    .local v20, "responseCaching":Lokhttp3/d;
    invoke-virtual/range {v20 .. v20}, Lokhttp3/d;->g()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual {v11}, Lokhttp3/d;->h()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 221
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/d;->h()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 224
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lokhttp3/d;->a()Z

    move-result v21

    if-nez v21, :cond_a

    add-long v22, v4, v16

    add-long v24, v12, v14

    cmp-long v21, v22, v24

    if-gez v21, :cond_a

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/ac;->i()Lokhttp3/ac$a;

    move-result-object v6

    .line 226
    .local v6, "builder":Lokhttp3/ac$a;
    add-long v22, v4, v16

    cmp-long v21, v22, v12

    if-ltz v21, :cond_8

    .line 227
    const-string v21, "Warning"

    const-string v22, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lokhttp3/ac$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac$a;

    .line 229
    :cond_8
    const-wide/32 v18, 0x5265c00

    .line 230
    .local v18, "oneDayMillis":J
    cmp-long v21, v4, v18

    if-lez v21, :cond_9

    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/a/c$a;->e()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 231
    const-string v21, "Warning"

    const-string v22, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lokhttp3/ac$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac$a;

    .line 233
    :cond_9
    new-instance v21, Lokhttp3/internal/a/c;

    const/16 v22, 0x0

    invoke-virtual {v6}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto/16 :goto_0

    .line 240
    .end local v6    # "builder":Lokhttp3/ac$a;
    .end local v18    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->k:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 241
    const-string v7, "If-None-Match"

    .line 242
    .local v7, "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/a/c$a;->k:Ljava/lang/String;

    .line 253
    .local v8, "conditionValue":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lokhttp3/t;->c()Lokhttp3/t$a;

    move-result-object v10

    .line 254
    .local v10, "conditionalRequestHeaders":Lokhttp3/t$a;
    sget-object v21, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v7, v8}, Lokhttp3/internal/a;->a(Lokhttp3/t$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->f()Lokhttp3/aa$a;

    move-result-object v21

    .line 257
    invoke-virtual {v10}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lokhttp3/aa$a;->a(Lokhttp3/t;)Lokhttp3/aa$a;

    move-result-object v21

    .line 258
    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v9

    .line 259
    .local v9, "conditionalRequest":Lokhttp3/aa;
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto/16 :goto_0

    .line 243
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    .end local v9    # "conditionalRequest":Lokhttp3/aa;
    .end local v10    # "conditionalRequestHeaders":Lokhttp3/t$a;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->f:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 244
    const-string v7, "If-Modified-Since"

    .line 245
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/a/c$a;->g:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_1

    .line 246
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 247
    const-string v7, "If-Modified-Since"

    .line 248
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/a/c$a;->e:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_1

    .line 250
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_d
    new-instance v21, Lokhttp3/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    goto/16 :goto_0
.end method

.method private c()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 267
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    invoke-virtual {v3}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v2

    .line 268
    .local v2, "responseCaching":Lokhttp3/d;
    invoke-virtual {v2}, Lokhttp3/d;->c()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 269
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/d;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 288
    :cond_0
    :goto_0
    return-wide v6

    .line 270
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->h:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 271
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    .line 272
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 274
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 275
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 272
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lokhttp3/internal/a/c$a;->j:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 275
    goto :goto_2

    .line 276
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->f:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    .line 277
    invoke-virtual {v3}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/u;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    .line 283
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 285
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lokhttp3/internal/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 286
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 283
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lokhttp3/internal/a/c$a;->i:J

    goto :goto_3
.end method

.method private d()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 296
    iget-object v8, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lokhttp3/internal/a/c$a;->j:J

    iget-object v10, p0, Lokhttp3/internal/a/c$a;->d:Ljava/util/Date;

    .line 297
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 299
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lokhttp3/internal/a/c$a;->l:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lokhttp3/internal/a/c$a;->l:I

    int-to-long v10, v9

    .line 300
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 302
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lokhttp3/internal/a/c$a;->j:J

    iget-wide v10, p0, Lokhttp3/internal/a/c$a;->i:J

    sub-long v6, v8, v10

    .line 303
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lokhttp3/internal/a/c$a;->a:J

    iget-wide v10, p0, Lokhttp3/internal/a/c$a;->j:J

    sub-long v4, v8, v10

    .line 304
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 300
    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lokhttp3/internal/a/c$a;->c:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->o()Lokhttp3/d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lokhttp3/internal/a/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lokhttp3/internal/a/c$a;->b()Lokhttp3/internal/a/c;

    move-result-object v0

    .line 174
    .local v0, "candidate":Lokhttp3/internal/a/c;
    iget-object v1, v0, Lokhttp3/internal/a/c;->a:Lokhttp3/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/a/c$a;->b:Lokhttp3/aa;

    invoke-virtual {v1}, Lokhttp3/aa;->g()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Lokhttp3/internal/a/c;

    .end local v0    # "candidate":Lokhttp3/internal/a/c;
    invoke-direct {v0, v2, v2, v2}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/aa;Lokhttp3/ac;Lokhttp3/internal/a/c$1;)V

    .line 179
    :cond_0
    return-object v0
.end method
