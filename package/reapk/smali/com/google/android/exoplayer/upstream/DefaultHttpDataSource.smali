.class public Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "contentTypePredicate":Lcom/google/android/exoplayer/util/Predicate;, "Lcom/google/android/exoplayer/util/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "contentTypePredicate":Lcom/google/android/exoplayer/util/Predicate;, "Lcom/google/android/exoplayer/util/Predicate<Ljava/lang/String;>;"
    const/16 v4, 0x1f40

    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;II)V
    .locals 7
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "contentTypePredicate":Lcom/google/android/exoplayer/util/Predicate;, "Lcom/google/android/exoplayer/util/Predicate<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .param p6, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "contentTypePredicate":Lcom/google/android/exoplayer/util/Predicate;, "Lcom/google/android/exoplayer/util/Predicate<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    .line 154
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    .line 156
    iput p4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 157
    iput p5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 158
    iput-boolean p6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 159
    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 583
    :cond_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 12
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    .line 200
    .local v0, "contentLength":J
    const-string v8, "Content-Length"

    invoke-virtual {p0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 203
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 208
    :cond_0
    :goto_0
    const-string v8, "Content-Range"

    invoke-virtual {p0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 210
    sget-object v8, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 211
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 214
    .local v2, "contentLengthFromRange":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 217
    move-wide v0, v2

    .line 231
    .end local v2    # "contentLengthFromRange":J
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-wide v0

    .line 204
    .end local v5    # "contentRangeHeader":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 205
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected Content-Length ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "contentLengthFromRange":J
    .restart local v5    # "contentRangeHeader":Ljava/lang/String;
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    .line 223
    :try_start_2
    const-string v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistent headers ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 226
    .end local v2    # "contentLengthFromRange":J
    :catch_1
    move-exception v6

    .line 227
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected Content-Range ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p0, "originalUrl"    # Ljava/net/URL;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Null location redirect"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 178
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "protocol":Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported protocol redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    return-object v1
.end method

.method private makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 17
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "url":Ljava/net/URL;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->postBody:[B

    .line 407
    .local v5, "postBody":[B
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    .line 408
    .local v6, "position":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    .line 409
    .local v8, "length":J
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v10, 0x1

    .line 411
    .local v10, "allowGzip":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_2

    .line 414
    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 434
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :cond_0
    return-object v2

    .line 409
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "allowGzip":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 419
    .restart local v10    # "allowGzip":Z
    :cond_2
    const/4 v13, 0x0

    .local v13, "redirectCount":I
    move v14, v13

    .line 420
    .end local v13    # "redirectCount":I
    .local v14, "redirectCount":I
    :goto_1
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "redirectCount":I
    .restart local v13    # "redirectCount":I
    const/16 v3, 0x14

    if-gt v14, v3, :cond_4

    .line 421
    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 422
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 423
    .local v15, "responseCode":I
    const/16 v3, 0x12c

    if-eq v15, v3, :cond_3

    const/16 v3, 0x12d

    if-eq v15, v3, :cond_3

    const/16 v3, 0x12e

    if-eq v15, v3, :cond_3

    const/16 v3, 0x12f

    if-eq v15, v3, :cond_3

    if-nez v5, :cond_0

    const/16 v3, 0x133

    if-eq v15, v3, :cond_3

    const/16 v3, 0x134

    if-ne v15, v3, :cond_0

    .line 429
    :cond_3
    const/4 v5, 0x0

    .line 430
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, "location":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    invoke-static {v4, v12}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move v14, v13

    .line 436
    .end local v13    # "redirectCount":I
    .restart local v14    # "redirectCount":I
    goto :goto_1

    .line 439
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v12    # "location":Ljava/lang/String;
    .end local v14    # "redirectCount":I
    .end local v15    # "responseCode":I
    .restart local v13    # "redirectCount":I
    :cond_4
    new-instance v3, Ljava/net/NoRouteToHostException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many redirects: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 13
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "postBody"    # [B
    .param p3, "position"    # J
    .param p5, "length"    # J
    .param p7, "allowGzip"    # Z
    .param p8, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 460
    .local v2, "connection":Ljava/net/HttpURLConnection;
    iget v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 461
    iget v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 462
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v8

    .line 463
    :try_start_0
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 464
    .local v4, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v4    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_3

    .line 468
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "rangeRequest":Ljava/lang/String;
    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_2

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v8, p3, p5

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    :cond_2
    const-string v6, "Range"

    invoke-virtual {v2, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v5    # "rangeRequest":Ljava/lang/String;
    :cond_3
    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-nez p7, :cond_4

    .line 476
    const-string v6, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_4
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 479
    if-eqz p2, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 480
    if-eqz p2, :cond_6

    .line 481
    array-length v6, p2

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 482
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 483
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 484
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 485
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 489
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_2
    return-object v2

    .line 479
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 487
    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2
.end method

.method private readInternal([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, -0x1

    .line 549
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    .line 550
    :goto_0
    if-nez p3, :cond_2

    move v0, v1

    .line 568
    :cond_0
    :goto_1
    return v0

    .line 549
    :cond_1
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 556
    .local v0, "read":I
    if-ne v0, v1, :cond_4

    .line 557
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 559
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_3
    move v0, v1

    .line 561
    goto :goto_1

    .line 564
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 565
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_1
.end method

.method private skipInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 529
    :goto_0
    return-void

    .line 507
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 508
    .local v2, "skipBuffer":[B
    if-nez v2, :cond_1

    .line 509
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 512
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 513
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    sub-long/2addr v4, v6

    array-length v3, v2

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 514
    .local v1, "readLength":I
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 515
    .local v0, "read":I
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 518
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 519
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 521
    :cond_3
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 522
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_1

    .line 528
    .end local v0    # "read":I
    .end local v1    # "readLength":I
    :cond_4
    sget-object v3, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected final bytesSkipped()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer/util/Util;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :cond_0
    iput-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 358
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 359
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 365
    :cond_1
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 358
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v2, :cond_2

    .line 359
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    .line 360
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 364
    :cond_2
    throw v1
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc8

    const-wide/16 v8, -0x1

    const-wide/16 v6, 0x0

    .line 270
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 271
    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 272
    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    iget-object v10, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 288
    .local v5, "responseCode":I
    if-lt v5, v11, :cond_0

    const/16 v10, 0x12b

    if-le v5, v10, :cond_1

    .line 289
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 290
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 291
    new-instance v6, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v6, v5, v4, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v6

    .line 275
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v6

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 283
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 284
    new-instance v6, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v6

    .line 295
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "responseCode":I
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "contentType":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    invoke-interface {v10, v2}, Lcom/google/android/exoplayer/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 298
    new-instance v6, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v6, v2, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v6

    .line 304
    :cond_2
    if-ne v5, v11, :cond_3

    iget-wide v10, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_3

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    :cond_3
    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 307
    iget v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_7

    .line 308
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 309
    .local v0, "contentLength":J
    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    :goto_0
    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 320
    .end local v0    # "contentLength":J
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    .line 327
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v6, :cond_4

    .line 328
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v6}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 331
    :cond_4
    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v6

    .line 309
    .restart local v0    # "contentLength":J
    :cond_5
    cmp-long v6, v0, v8

    if-eqz v6, :cond_6

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long v6, v0, v6

    goto :goto_0

    :cond_6
    move-wide v6, v8

    goto :goto_0

    .line 316
    .end local v0    # "contentLength":J
    :cond_7
    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 321
    :catch_2
    move-exception v3

    .line 322
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 323
    new-instance v6, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v6, v3, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v6
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readInternal([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
