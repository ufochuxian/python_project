.class public Lcom/squareup/okhttp/internal/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/squareup/okhttp/v;

.field final c:Lcom/squareup/okhttp/x;

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
.method public constructor <init>(JLcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/squareup/okhttp/v;
    .param p4, "cacheResponse"    # Lcom/squareup/okhttp/x;

    .prologue
    const/4 v8, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->l:I

    .line 127
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/a/c$a;->a:J

    .line 128
    iput-object p3, p0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    .line 129
    iput-object p4, p0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    .line 131
    if-eqz p4, :cond_7

    .line 132
    invoke-virtual {p4}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v1

    .line 133
    .local v1, "headers":Lcom/squareup/okhttp/p;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 134
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    .line 138
    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/c$a;->e:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/a/c$a;->h:Ljava/util/Date;

    goto :goto_1

    .line 141
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/a/c$a;->f:Ljava/util/Date;

    .line 143
    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/c$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/c$a;->k:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-static {v4, v8}, Lcom/squareup/okhttp/internal/a/d;->b(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/squareup/okhttp/internal/a/c$a;->l:I

    goto :goto_1

    .line 148
    :cond_5
    sget-object v5, Lcom/squareup/okhttp/internal/a/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/a/c$a;->i:J

    goto :goto_1

    .line 150
    :cond_6
    sget-object v5, Lcom/squareup/okhttp/internal/a/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/a/c$a;->j:J

    goto :goto_1

    .line 155
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lcom/squareup/okhttp/p;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static a(Lcom/squareup/okhttp/v;)Z
    .locals 1
    .param p0, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 302
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

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

.method private b()Lcom/squareup/okhttp/internal/a/c;
    .locals 24

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 176
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    .line 237
    :goto_0
    return-object v19

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/v;->j()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/x;->f()Lcom/squareup/okhttp/o;

    move-result-object v19

    if-nez v19, :cond_1

    .line 181
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto :goto_0

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/squareup/okhttp/internal/a/c;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/v;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 188
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto :goto_0

    .line 191
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/v;->i()Lcom/squareup/okhttp/d;

    move-result-object v9

    .line 192
    .local v9, "requestCaching":Lcom/squareup/okhttp/d;
    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->a()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/squareup/okhttp/internal/a/c$a;->a(Lcom/squareup/okhttp/v;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 193
    :cond_3
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto :goto_0

    .line 196
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/a/c$a;->d()J

    move-result-wide v4

    .line 197
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/a/c$a;->c()J

    move-result-wide v10

    .line 199
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->c()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 200
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->c()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 203
    :cond_5
    const-wide/16 v14, 0x0

    .line 204
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->i()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 205
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->i()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 208
    :cond_6
    const-wide/16 v12, 0x0

    .line 209
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v18

    .line 210
    .local v18, "responseCaching":Lcom/squareup/okhttp/d;
    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/d;->g()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->h()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 211
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/d;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 214
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/d;->a()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v6

    .line 216
    .local v6, "builder":Lcom/squareup/okhttp/x$a;
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 217
    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/squareup/okhttp/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    .line 219
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 220
    .local v16, "oneDayMillis":J
    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/a/c$a;->e()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 221
    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/squareup/okhttp/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    .line 223
    :cond_9
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto/16 :goto_0

    .line 226
    .end local v6    # "builder":Lcom/squareup/okhttp/x$a;
    .end local v16    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v8

    .line 228
    .local v8, "conditionalRequestBuilder":Lcom/squareup/okhttp/v$a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->k:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 229
    const-string v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->k:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 236
    :cond_b
    :goto_1
    invoke-virtual {v8}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v7

    .line 237
    .local v7, "conditionalRequest":Lcom/squareup/okhttp/v;
    invoke-static {v7}, Lcom/squareup/okhttp/internal/a/c$a;->a(Lcom/squareup/okhttp/v;)Z

    move-result v19

    if-eqz v19, :cond_e

    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto/16 :goto_0

    .line 230
    .end local v7    # "conditionalRequest":Lcom/squareup/okhttp/v;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->f:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 231
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->g:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_1

    .line 232
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 233
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/c$a;->e:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_1

    .line 237
    .restart local v7    # "conditionalRequest":Lcom/squareup/okhttp/v;
    :cond_e
    new-instance v19, Lcom/squareup/okhttp/internal/a/c;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    goto/16 :goto_0
.end method

.method private c()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 247
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    invoke-virtual {v3}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v2

    .line 248
    .local v2, "responseCaching":Lcom/squareup/okhttp/d;
    invoke-virtual {v2}, Lcom/squareup/okhttp/d;->c()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 249
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/squareup/okhttp/d;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 268
    :cond_0
    :goto_0
    return-wide v6

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->h:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 251
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    .line 252
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 254
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 255
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 252
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/c$a;->j:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 255
    goto :goto_2

    .line 256
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->f:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    .line 257
    invoke-virtual {v3}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    .line 263
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 265
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 266
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 263
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/c$a;->i:J

    goto :goto_3
.end method

.method private d()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 276
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->j:J

    iget-object v10, p0, Lcom/squareup/okhttp/internal/a/c$a;->d:Ljava/util/Date;

    .line 277
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 279
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->l:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/squareup/okhttp/internal/a/c$a;->l:I

    int-to-long v10, v9

    .line 280
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 282
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->j:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/a/c$a;->i:J

    sub-long v6, v8, v10

    .line 283
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a/c$a;->a:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/a/c$a;->j:J

    sub-long v4, v8, v10

    .line 284
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 280
    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/c$a;->c:Lcom/squareup/okhttp/x;

    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->o()Lcom/squareup/okhttp/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/internal/a/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/c$a;->b()Lcom/squareup/okhttp/internal/a/c;

    move-result-object v0

    .line 164
    .local v0, "candidate":Lcom/squareup/okhttp/internal/a/c;
    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/c;->a:Lcom/squareup/okhttp/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/c$a;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->i()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lcom/squareup/okhttp/internal/a/c;

    .end local v0    # "candidate":Lcom/squareup/okhttp/internal/a/c;
    invoke-direct {v0, v2, v2, v2}, Lcom/squareup/okhttp/internal/a/c;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/internal/a/c$1;)V

    .line 169
    :cond_0
    return-object v0
.end method
