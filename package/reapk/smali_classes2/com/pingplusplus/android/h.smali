.class public Lcom/pingplusplus/android/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/h$a;,
        Lcom/pingplusplus/android/h$b;,
        Lcom/pingplusplus/android/h$c;
    }
.end annotation


# static fields
.field private static e:Landroid/content/Context;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/h;->b(Landroid/content/Context;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static a(Lcom/pingplusplus/android/h$a;)Lcom/pingplusplus/android/g;
    .locals 9

    .prologue
    const/16 v8, 0x1388

    const/4 v4, 0x0

    .line 293
    iget-object v2, p0, Lcom/pingplusplus/android/h$a;->a:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/pingplusplus/android/h$a;->b:Ljava/lang/Object;

    .line 295
    iget-object v6, p0, Lcom/pingplusplus/android/h$a;->c:Ljava/lang/String;

    .line 296
    iget-object v7, p0, Lcom/pingplusplus/android/h$a;->d:Ljava/util/Map;

    .line 300
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    if-nez v1, :cond_0

    move-object v1, v4

    .line 378
    :goto_1
    return-object v1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/Exception;)V

    move-object v1, v4

    goto :goto_0

    .line 309
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    :goto_2
    move-object v5, v1

    .line 317
    :goto_3
    if-nez v5, :cond_2

    move-object v1, v4

    .line 318
    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 314
    :catch_1
    move-exception v1

    .line 315
    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/Exception;)V

    move-object v5, v4

    goto :goto_3

    .line 320
    :cond_2
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 321
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 324
    invoke-static {}, Lcom/pingplusplus/android/h;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 327
    :cond_3
    if-eqz v7, :cond_4

    .line 328
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 334
    :cond_4
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 335
    const-string v1, "POST"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 338
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v5, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    instance-of v1, v3, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 341
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    :goto_6
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 355
    :try_start_4
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 357
    if-eqz v2, :cond_5

    .line 358
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 362
    :cond_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 365
    const/16 v1, 0xc8

    if-lt v3, v1, :cond_a

    const/16 v1, 0x12c

    if-ge v3, v1, :cond_a

    .line 366
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 370
    :goto_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 372
    new-instance v1, Lcom/pingplusplus/android/g;

    iget-object v7, p0, Lcom/pingplusplus/android/h$a;->e:Lcom/pingplusplus/android/d;

    invoke-direct {v1, v3, v2, v6, v7}, Lcom/pingplusplus/android/g;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 342
    :cond_6
    :try_start_6
    instance-of v1, v3, Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 343
    new-instance v1, Lorg/json/JSONObject;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 344
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 345
    :cond_7
    instance-of v1, v3, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 346
    new-instance v1, Lorg/json/JSONArray;

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 347
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 349
    :cond_8
    const-string v1, "{}"

    goto :goto_6

    .line 357
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_9

    .line 358
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_9
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 373
    :catch_2
    move-exception v1

    .line 374
    :try_start_7
    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 376
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v4

    .line 378
    goto/16 :goto_1

    .line 368
    :cond_a
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/h;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v1

    move-object v2, v1

    goto :goto_7

    .line 376
    :catchall_1
    move-exception v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    .line 357
    :catchall_2
    move-exception v1

    goto :goto_8
.end method

.method public static a()Lcom/pingplusplus/android/h;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/pingplusplus/android/h$c;->a()Lcom/pingplusplus/android/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/pingplusplus/android/h;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/pingplusplus/android/h$c;->a()Lcom/pingplusplus/android/h;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/pingplusplus/android/h;->e:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/pingplusplus/android/h;->e:Landroid/content/Context;

    .line 62
    sget-object v1, Lcom/pingplusplus/android/h;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/h;->b(Landroid/content/Context;)V

    .line 64
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 394
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 434
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 435
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    array-length v4, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v5, v2, v1

    .line 439
    and-int/lit16 v5, v5, 0xff

    .line 440
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 441
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 451
    :goto_1
    return-object v0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 449
    :catch_1
    move-exception v1

    .line 450
    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/pingplusplus/android/h;->e:Landroid/content/Context;

    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 401
    const-string v2, "bindings_version"

    const-string v3, "2.1.8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v2, "lang"

    const-string v3, "Java"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 406
    const-string v1, "X-Pingpp-User-Agent"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pingplusplus/android/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/pingplusplus/android/d;)V

    .line 244
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v7, Lcom/pingplusplus/android/h$b;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/pingplusplus/android/h$b;-><init>(Lcom/pingplusplus/android/h;Lcom/pingplusplus/android/i;)V

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/pingplusplus/android/h$a;

    const/4 v9, 0x0

    new-instance v0, Lcom/pingplusplus/android/h$a;

    const-string v4, "POST"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/pingplusplus/android/h$a;-><init>(Lcom/pingplusplus/android/h;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Lcom/pingplusplus/android/h$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 109
    const-string v0, "6_"

    .line 110
    const-string v1, "7_"

    .line 111
    const-string v2, "8_"

    .line 112
    const-string v3, "9_"

    .line 113
    const-string v4, "10_"

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    iget-object v6, p0, Lcom/pingplusplus/android/h;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/pingplusplus/android/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/pingplusplus/android/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/pingplusplus/android/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-static {v7}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v7}, Lcom/pingplusplus/android/crypto/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pingplusplus/android/Pingpp;->encryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PE_v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 195
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 198
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    iput-object v1, p0, Lcom/pingplusplus/android/h;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    iput-object v0, p0, Lcom/pingplusplus/android/h;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    iput-object v0, p0, Lcom/pingplusplus/android/h;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    :cond_2
    :goto_2
    :try_start_3
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_3

    .line 231
    iput-object v0, p0, Lcom/pingplusplus/android/h;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    :cond_3
    :goto_3
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :catch_2
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :catch_3
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    goto :goto_3
.end method
