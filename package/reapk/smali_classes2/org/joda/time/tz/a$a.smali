.class final Lorg/joda/time/tz/a$a;
.super Lorg/joda/time/DateTimeZone;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x605522c6413e57d1L


# instance fields
.field final a:I

.field final b:Lorg/joda/time/tz/a$d;

.field final c:Lorg/joda/time/tz/a$d;


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/joda/time/tz/a$d;Lorg/joda/time/tz/a$d;)V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 1180
    iput p2, p0, Lorg/joda/time/tz/a$a;->a:I

    .line 1181
    iput-object p3, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    .line 1182
    iput-object p4, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    .line 1183
    return-void
.end method

.method static a(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v0, Lorg/joda/time/tz/a$a;

    invoke-static {p0}, Lorg/joda/time/tz/a;->a(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0}, Lorg/joda/time/tz/a$d;->a(Ljava/io/DataInput;)Lorg/joda/time/tz/a$d;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/a$d;->a(Ljava/io/DataInput;)Lorg/joda/time/tz/a$d;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/tz/a$a;-><init>(Ljava/lang/String;ILorg/joda/time/tz/a$d;Lorg/joda/time/tz/a$d;)V

    return-object v0
.end method

.method private a(J)Lorg/joda/time/tz/a$d;
    .locals 7

    .prologue
    .line 1307
    iget v4, p0, Lorg/joda/time/tz/a$a;->a:I

    .line 1308
    iget-object v0, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    .line 1309
    iget-object v1, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    .line 1314
    :try_start_0
    invoke-virtual {v1}, Lorg/joda/time/tz/a$d;->c()I

    move-result v2

    invoke-virtual {v0, p1, p2, v4, v2}, Lorg/joda/time/tz/a$d;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1325
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/joda/time/tz/a$d;->c()I

    move-result v5

    invoke-virtual {v1, p1, p2, v4, v5}, Lorg/joda/time/tz/a$d;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide p1

    .line 1335
    :goto_1
    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    :goto_2
    return-object v0

    .line 1316
    :catch_0
    move-exception v2

    move-wide v2, p1

    .line 1322
    goto :goto_0

    .line 1319
    :catch_1
    move-exception v2

    move-wide v2, p1

    .line 1321
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1335
    goto :goto_2

    .line 1330
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1327
    :catch_3
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1286
    if-ne p0, p1, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return v0

    .line 1289
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/a$a;

    if-eqz v2, :cond_3

    .line 1290
    check-cast p1, Lorg/joda/time/tz/a$a;

    .line 1291
    invoke-virtual {p0}, Lorg/joda/time/tz/a$a;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/tz/a$a;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/joda/time/tz/a$a;->a:I

    iget v3, p1, Lorg/joda/time/tz/a$a;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    iget-object v3, p1, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/a$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    iget-object v3, p1, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/a$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1297
    goto :goto_0
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/a$a;->a(J)Lorg/joda/time/tz/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/tz/a$d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(J)I
    .locals 3

    .prologue
    .line 1190
    iget v0, p0, Lorg/joda/time/tz/a$a;->a:I

    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/a$a;->a(J)Lorg/joda/time/tz/a$d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/tz/a$d;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset(J)I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lorg/joda/time/tz/a$a;->a:I

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public nextTransition(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1202
    iget v4, p0, Lorg/joda/time/tz/a$a;->a:I

    .line 1203
    iget-object v5, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    .line 1204
    iget-object v6, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    .line 1209
    :try_start_0
    invoke-virtual {v6}, Lorg/joda/time/tz/a$d;->c()I

    move-result v0

    invoke-virtual {v5, p1, p2, v4, v0}, Lorg/joda/time/tz/a$d;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1211
    cmp-long v2, p1, v8

    if-lez v2, :cond_0

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    move-wide v0, p1

    :cond_0
    move-wide v2, v0

    .line 1224
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/joda/time/tz/a$d;->c()I

    move-result v0

    invoke-virtual {v6, p1, p2, v4, v0}, Lorg/joda/time/tz/a$d;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1226
    cmp-long v4, p1, v8

    if-lez v4, :cond_2

    cmp-long v4, v0, v8

    if-gez v4, :cond_2

    :goto_1
    move-wide v0, p1

    .line 1238
    :goto_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_3
    return-wide v0

    .line 1215
    :catch_0
    move-exception v0

    move-wide v2, p1

    .line 1221
    goto :goto_0

    .line 1218
    :catch_1
    move-exception v0

    move-wide v2, p1

    .line 1220
    goto :goto_0

    .line 1230
    :catch_2
    move-exception v0

    move-wide v0, p1

    .line 1236
    goto :goto_2

    .line 1233
    :catch_3
    move-exception v0

    move-wide v0, p1

    .line 1235
    goto :goto_2

    :cond_1
    move-wide v0, v2

    .line 1238
    goto :goto_3

    :cond_2
    move-wide p1, v0

    goto :goto_1
.end method

.method public previousTransition(J)J
    .locals 9

    .prologue
    .line 1244
    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 1246
    iget v6, p0, Lorg/joda/time/tz/a$a;->a:I

    .line 1247
    iget-object v7, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    .line 1248
    iget-object v8, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    .line 1253
    :try_start_0
    invoke-virtual {v8}, Lorg/joda/time/tz/a$d;->c()I

    move-result v0

    invoke-virtual {v7, v2, v3, v6, v0}, Lorg/joda/time/tz/a$d;->b(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1255
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    move-wide v4, v0

    .line 1268
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/joda/time/tz/a$d;->c()I

    move-result v0

    invoke-virtual {v8, v2, v3, v6, v0}, Lorg/joda/time/tz/a$d;->b(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1270
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    :goto_1
    move-wide v0, v2

    .line 1282
    :goto_2
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    move-wide v0, v4

    :cond_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 1259
    :catch_0
    move-exception v0

    move-wide v4, v2

    .line 1265
    goto :goto_0

    .line 1262
    :catch_1
    move-exception v0

    move-wide v4, v2

    .line 1264
    goto :goto_0

    .line 1274
    :catch_2
    move-exception v0

    move-wide v0, v2

    .line 1280
    goto :goto_2

    .line 1277
    :catch_3
    move-exception v0

    move-wide v0, v2

    .line 1279
    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    iget v0, p0, Lorg/joda/time/tz/a$a;->a:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/a;->a(Ljava/io/DataOutput;J)V

    .line 1302
    iget-object v0, p0, Lorg/joda/time/tz/a$a;->b:Lorg/joda/time/tz/a$d;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/a$d;->a(Ljava/io/DataOutput;)V

    .line 1303
    iget-object v0, p0, Lorg/joda/time/tz/a$a;->c:Lorg/joda/time/tz/a$d;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/a$d;->a(Ljava/io/DataOutput;)V

    .line 1304
    return-void
.end method
