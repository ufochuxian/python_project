.class final Lcom/squareup/okhttp/s$a;
.super Lcom/squareup/okhttp/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/ByteString;

.field private final b:Lcom/squareup/okhttp/r;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/w;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/r;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/squareup/okhttp/r;
    .param p2, "boundary"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/r;",
            "Lokio/ByteString;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/p;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/w;>;"
    invoke-direct {p0}, Lcom/squareup/okhttp/w;-><init>()V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/s$a;->e:J

    .line 205
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p2, p0, Lcom/squareup/okhttp/s$a;->a:Lokio/ByteString;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/s$a;->b:Lcom/squareup/okhttp/r;

    .line 209
    invoke-static {p3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/s$a;->c:Ljava/util/List;

    .line 210
    invoke-static {p4}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/s$a;->d:Ljava/util/List;

    .line 211
    return-void
.end method

.method private a(Lokio/d;Z)J
    .locals 14
    .param p1, "sink"    # Lokio/d;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "byteCount":J
    const/4 v1, 0x0

    .line 233
    .local v1, "byteCountBuffer":Lokio/c;
    if-eqz p2, :cond_0

    .line 234
    new-instance v1, Lokio/c;

    .end local v1    # "byteCountBuffer":Lokio/c;
    invoke-direct {v1}, Lokio/c;-><init>()V

    .restart local v1    # "byteCountBuffer":Lokio/c;
    move-object p1, v1

    .line 237
    :cond_0
    const/4 v10, 0x0

    .local v10, "p":I
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "partCount":I
    :goto_0
    if-ge v10, v11, :cond_6

    .line 238
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->c:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/okhttp/p;

    .line 239
    .local v9, "headers":Lcom/squareup/okhttp/p;
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->d:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/w;

    .line 241
    .local v0, "body":Lcom/squareup/okhttp/w;
    invoke-static {}, Lcom/squareup/okhttp/s;->b()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 242
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->a:Lokio/ByteString;

    invoke-interface {p1, v12}, Lokio/d;->d(Lokio/ByteString;)Lokio/d;

    .line 243
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 245
    if-eqz v9, :cond_1

    .line 246
    const/4 v7, 0x0

    .local v7, "h":I
    invoke-virtual {v9}, Lcom/squareup/okhttp/p;->a()I

    move-result v8

    .local v8, "headerCount":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 247
    invoke-virtual {v9, v7}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v12

    .line 248
    invoke-static {}, Lcom/squareup/okhttp/s;->d()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->d([B)Lokio/d;

    move-result-object v12

    .line 249
    invoke-virtual {v9, v7}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v12

    .line 250
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->d([B)Lokio/d;

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 254
    .end local v7    # "h":I
    .end local v8    # "headerCount":I
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->a()Lcom/squareup/okhttp/r;

    move-result-object v6

    .line 255
    .local v6, "contentType":Lcom/squareup/okhttp/r;
    if-eqz v6, :cond_2

    .line 256
    const-string v12, "Content-Type: "

    invoke-interface {p1, v12}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v12

    .line 257
    invoke-virtual {v6}, Lcom/squareup/okhttp/r;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v12

    .line 258
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->d([B)Lokio/d;

    .line 261
    :cond_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->b()J

    move-result-wide v4

    .line 262
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_4

    .line 263
    const-string v12, "Content-Length: "

    invoke-interface {p1, v12}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v12

    .line 264
    invoke-interface {v12, v4, v5}, Lokio/d;->n(J)Lokio/d;

    move-result-object v12

    .line 265
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/d;->d([B)Lokio/d;

    .line 272
    :cond_3
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 274
    if-eqz p2, :cond_5

    .line 275
    add-long/2addr v2, v4

    .line 280
    :goto_2
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 237
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 266
    :cond_4
    if-eqz p2, :cond_3

    .line 268
    invoke-virtual {v1}, Lokio/c;->x()V

    .line 269
    const-wide/16 v12, -0x1

    .line 293
    .end local v0    # "body":Lcom/squareup/okhttp/w;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lcom/squareup/okhttp/r;
    .end local v9    # "headers":Lcom/squareup/okhttp/p;
    :goto_3
    return-wide v12

    .line 277
    .restart local v0    # "body":Lcom/squareup/okhttp/w;
    .restart local v4    # "contentLength":J
    .restart local v6    # "contentType":Lcom/squareup/okhttp/r;
    .restart local v9    # "headers":Lcom/squareup/okhttp/p;
    :cond_5
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->d:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/okhttp/w;

    invoke-virtual {v12, p1}, Lcom/squareup/okhttp/w;->a(Lokio/d;)V

    goto :goto_2

    .line 283
    .end local v0    # "body":Lcom/squareup/okhttp/w;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lcom/squareup/okhttp/r;
    .end local v9    # "headers":Lcom/squareup/okhttp/p;
    :cond_6
    invoke-static {}, Lcom/squareup/okhttp/s;->b()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 284
    iget-object v12, p0, Lcom/squareup/okhttp/s$a;->a:Lokio/ByteString;

    invoke-interface {p1, v12}, Lokio/d;->d(Lokio/ByteString;)Lokio/d;

    .line 285
    invoke-static {}, Lcom/squareup/okhttp/s;->b()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 286
    invoke-static {}, Lcom/squareup/okhttp/s;->c()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lokio/d;->d([B)Lokio/d;

    .line 288
    if-eqz p2, :cond_7

    .line 289
    invoke-virtual {v1}, Lokio/c;->a()J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 290
    invoke-virtual {v1}, Lokio/c;->x()V

    :cond_7
    move-wide v12, v2

    .line 293
    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/r;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/squareup/okhttp/s$a;->b:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public a(Lokio/d;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/s$a;->a(Lokio/d;Z)J

    .line 298
    return-void
.end method

.method public b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/squareup/okhttp/s$a;->e:J

    .line 219
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 220
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/s$a;->a(Lokio/d;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lcom/squareup/okhttp/s$a;->e:J

    goto :goto_0
.end method
