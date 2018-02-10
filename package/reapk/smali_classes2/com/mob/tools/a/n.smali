.class public Lcom/mob/tools/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/n$a;,
        Lcom/mob/tools/a/n$b;
    }
.end annotation


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;
    .locals 17
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v9, "ourl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1312
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "methodTokens"

    .line 1313
    .local v3, "filedName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1314
    .local v12, "staticType":Z
    const/4 v7, 0x0

    .line 1316
    .local v7, "methods":Ljava/lang/Object;
    if-eqz v12, :cond_5

    :try_start_0
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1319
    .end local v7    # "methods":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_a

    .line 1320
    const-string v3, "PERMITTED_USER_METHODS"

    .line 1321
    const/4 v12, 0x1

    .line 1323
    if-eqz v12, :cond_6

    :try_start_1
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7    # "methods":Ljava/lang/Object;
    :goto_1
    move-object v14, v7

    .line 1328
    .end local v7    # "methods":Ljava/lang/Object;
    :goto_2
    if-eqz v14, :cond_0

    .line 1329
    check-cast v14, [Ljava/lang/String;

    move-object v6, v14

    check-cast v6, [Ljava/lang/String;

    .line 1330
    .local v6, "methodTokens":[Ljava/lang/String;
    array-length v14, v6

    add-int/lit8 v14, v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    .line 1331
    .local v8, "myMethodTokens":[Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1332
    array-length v14, v6

    const-string v15, "PATCH"

    aput-object v15, v8, v14

    .line 1333
    if-eqz v12, :cond_7

    .line 1334
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1340
    .end local v6    # "methodTokens":[Ljava/lang/String;
    .end local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_0
    :goto_3
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-ge v14, v15, :cond_1

    .line 1341
    const-string v14, "http.keepAlive"

    const-string v15, "false"

    invoke-static {v14, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    :cond_1
    instance-of v14, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v14, :cond_2

    .line 1345
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .local v4, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    move-object v5, v1

    .line 1346
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 1347
    .local v5, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    const-string v14, "TLS"

    invoke-static {v14}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v11

    .line 1348
    .local v11, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v14, 0x1

    new-array v13, v14, [Ljavax/net/ssl/TrustManager;

    const/4 v14, 0x0

    new-instance v15, Lcom/mob/tools/a/n$b;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/mob/tools/a/n$b;-><init>(Ljava/security/KeyStore;)V

    aput-object v15, v13, v14

    .line 1349
    .local v13, "trustManager":[Ljavax/net/ssl/TrustManager;
    const/4 v14, 0x0

    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v11, v14, v13, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1350
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1351
    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1354
    .end local v4    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v5    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v13    # "trustManager":[Ljavax/net/ssl/TrustManager;
    :cond_2
    if-nez p2, :cond_8

    sget v2, Lcom/mob/tools/a/n;->connectionTimeout:I

    .line 1355
    .local v2, "connectionTimeout":I
    :goto_4
    if-lez v2, :cond_3

    .line 1356
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1359
    :cond_3
    if-nez p2, :cond_9

    sget v10, Lcom/mob/tools/a/n;->readTimout:I

    .line 1360
    .local v10, "readTimout":I
    :goto_5
    if-lez v10, :cond_4

    .line 1361
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1364
    :cond_4
    return-object v1

    .line 1317
    .end local v2    # "connectionTimeout":I
    .end local v10    # "readTimout":I
    .restart local v7    # "methods":Ljava/lang/Object;
    :cond_5
    :try_start_2
    invoke-static {v1, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto/16 :goto_0

    .line 1324
    .end local v7    # "methods":Ljava/lang/Object;
    :cond_6
    :try_start_3
    invoke-static {v1, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v14

    move-object v14, v7

    goto :goto_2

    .line 1336
    .restart local v6    # "methodTokens":[Ljava/lang/String;
    .restart local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_7
    invoke-static {v1, v3, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1354
    .end local v6    # "methodTokens":[Ljava/lang/String;
    .end local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/mob/tools/a/n$a;->b:I

    goto :goto_4

    .line 1359
    .restart local v2    # "connectionTimeout":I
    :cond_9
    move-object/from16 v0, p2

    iget v10, v0, Lcom/mob/tools/a/n$a;->a:I

    goto :goto_5

    .line 1318
    .end local v2    # "connectionTimeout":I
    .restart local v7    # "methods":Ljava/lang/Object;
    :catch_1
    move-exception v14

    goto/16 :goto_0

    .end local v7    # "methods":Ljava/lang/Object;
    :cond_a
    move-object v14, v7

    goto/16 :goto_2
.end method

.method private getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/a/f;
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 756
    new-instance v0, Lcom/mob/tools/a/b;

    invoke-direct {v0}, Lcom/mob/tools/a/b;-><init>()V

    .line 757
    .local v0, "bytePart":Lcom/mob/tools/a/b;
    invoke-virtual {v0, p3}, Lcom/mob/tools/a/b;->a([B)Lcom/mob/tools/a/b;

    .line 758
    return-object v0
.end method

.method private getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;
    .locals 12
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 763
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/form-data; boundary="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v6, Lcom/mob/tools/a/l;

    invoke-direct {v6}, Lcom/mob/tools/a/l;-><init>()V

    .line 767
    .local v6, "mp":Lcom/mob/tools/a/l;
    new-instance v7, Lcom/mob/tools/a/s;

    invoke-direct {v7}, Lcom/mob/tools/a/s;-><init>()V

    .line 768
    .local v7, "sp":Lcom/mob/tools/a/s;
    if-eqz p3, :cond_0

    .line 769
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/a/k;

    .line 770
    .local v8, "value":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 771
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    iget-object v11, v8, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\"\r\n\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 772
    iget-object v9, v8, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    goto :goto_0

    .line 775
    .end local v8    # "value":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6, v7}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;

    .line 777
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/a/k;

    .line 778
    .local v1, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    new-instance v7, Lcom/mob/tools/a/s;

    .end local v7    # "sp":Lcom/mob/tools/a/s;
    invoke-direct {v7}, Lcom/mob/tools/a/s;-><init>()V

    .line 779
    .restart local v7    # "sp":Lcom/mob/tools/a/s;
    new-instance v4, Ljava/io/File;

    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v4, "imageFile":Ljava/io/File;
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 781
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    iget-object v11, v1, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\"; filename=\""

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    .line 782
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\"\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 783
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v11

    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, "mime":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 785
    :cond_1
    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "jpg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 786
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "jpeg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 787
    :cond_2
    const-string v5, "image/jpeg"

    .line 801
    :cond_3
    :goto_2
    const-string v9, "Content-Type: "

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v11, "\r\n\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 802
    invoke-virtual {v6, v7}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;

    .line 804
    new-instance v3, Lcom/mob/tools/a/e;

    invoke-direct {v3}, Lcom/mob/tools/a/e;-><init>()V

    .line 805
    .local v3, "fp":Lcom/mob/tools/a/e;
    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v6, v3}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;

    .line 808
    new-instance v7, Lcom/mob/tools/a/s;

    .end local v7    # "sp":Lcom/mob/tools/a/s;
    invoke-direct {v7}, Lcom/mob/tools/a/s;-><init>()V

    .line 809
    .restart local v7    # "sp":Lcom/mob/tools/a/s;
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 810
    invoke-virtual {v6, v7}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;

    goto/16 :goto_1

    .line 788
    .end local v3    # "fp":Lcom/mob/tools/a/e;
    :cond_4
    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "png"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 789
    const-string v5, "image/png"

    goto :goto_2

    .line 790
    :cond_5
    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "gif"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 791
    const-string v5, "image/gif"

    goto :goto_2

    .line 793
    :cond_6
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 794
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 795
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 796
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 797
    :cond_7
    const-string v5, "application/octet-stream"

    goto :goto_2

    .line 814
    .end local v1    # "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "imageFile":Ljava/io/File;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_8
    new-instance v7, Lcom/mob/tools/a/s;

    .end local v7    # "sp":Lcom/mob/tools/a/s;
    invoke-direct {v7}, Lcom/mob/tools/a/s;-><init>()V

    .line 815
    .restart local v7    # "sp":Lcom/mob/tools/a/s;
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    move-result-object v9

    const-string v10, "--\r\n"

    invoke-virtual {v9, v10}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 816
    invoke-virtual {v6, v7}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/f;)Lcom/mob/tools/a/l;

    .line 818
    return-object v6
.end method

.method private getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v0, Lcom/mob/tools/a/n$5;

    invoke-direct {v0, p0}, Lcom/mob/tools/a/n$5;-><init>(Lcom/mob/tools/a/n;)V

    .line 1235
    .local v0, "patch":Lcom/mob/tools/a/n$5;
    const-string v1, "setURI"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    return-object v0
.end method

.method private getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 823
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    new-instance v0, Lcom/mob/tools/a/s;

    invoke-direct {v0}, Lcom/mob/tools/a/s;-><init>()V

    .line 825
    .local v0, "sp":Lcom/mob/tools/a/s;
    if-eqz p3, :cond_0

    .line 826
    invoke-direct {p0, p3}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 828
    :cond_0
    return-object v0
.end method

.method private httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;JLjava/util/ArrayList;Lcom/mob/tools/a/o;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 36
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/a/o;
    .param p8, "callback"    # Lcom/mob/tools/a/j;
    .param p9, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/o;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1140
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1141
    .local v28, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "httpPatch: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1143
    const-string v30, "org.apache.http.entity.InputStreamEntity"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    const-string v30, "org.apache.http.params.BasicHttpParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1145
    const-string v30, "org.apache.http.params.HttpConnectionParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    const-string v30, "org.apache.http.HttpVersion"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    const-string v30, "org.apache.http.params.HttpProtocolParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    const-string v30, "org.apache.http.conn.scheme.SchemeRegistry"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    const-string v30, "org.apache.http.conn.scheme.PlainSocketFactory"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    const-string v30, "org.apache.http.conn.scheme.Scheme"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    const-string v30, "org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1152
    const-string v30, "org.apache.http.impl.client.DefaultHttpClient"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    if-eqz p2, :cond_0

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .line 1156
    .local v20, "param":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_0

    .line 1157
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "?"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1161
    .end local v20    # "param":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/mob/tools/a/n;->getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 1162
    .local v22, "patch":Ljava/lang/Object;
    if-eqz p6, :cond_1

    .line 1163
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/a/k;

    .line 1164
    .local v9, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    const-string v31, "setHeader"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    iget-object v0, v9, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    const/16 v33, 0x1

    iget-object v0, v9, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1168
    .end local v9    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    new-instance v8, Lcom/mob/tools/a/e;

    invoke-direct {v8}, Lcom/mob/tools/a/e;-><init>()V

    .line 1169
    .local v8, "fp":Lcom/mob/tools/a/e;
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/o;)V

    .line 1170
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;)V

    .line 1171
    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Lcom/mob/tools/a/e;->a(J)V

    .line 1172
    invoke-virtual {v8}, Lcom/mob/tools/a/e;->c()Ljava/io/InputStream;

    move-result-object v16

    .line 1173
    .local v16, "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Lcom/mob/tools/a/e;->b()J

    move-result-wide v30

    sub-long v18, v30, p4

    .line 1174
    .local v18, "length":J
    const-string v30, "InputStreamEntity"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v16, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1175
    .local v7, "entity":Ljava/lang/Object;
    const-string v30, "setContentEncoding"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "application/offset+octet-stream"

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v7, v0, v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v30, "setEntity"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v7, v31, v32

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string v30, "BasicHttpParams"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1179
    .local v12, "httpParams":Ljava/lang/Object;
    if-nez p9, :cond_4

    sget v4, Lcom/mob/tools/a/n;->connectionTimeout:I

    .line 1180
    .local v4, "cTimeout":I
    :goto_1
    if-lez v4, :cond_2

    .line 1181
    const-string v30, "HttpConnectionParams"

    const-string v31, "setConnectionTimeout"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :cond_2
    if-nez p9, :cond_5

    sget v23, Lcom/mob/tools/a/n;->readTimout:I

    .line 1184
    .local v23, "rTimout":I
    :goto_2
    if-lez v23, :cond_3

    .line 1185
    const-string v30, "HttpConnectionParams"

    const-string v31, "setSoTimeout"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_3
    const-string v30, "setParams"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v12, v31, v32

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v30, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1191
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v27

    .line 1192
    .local v27, "trustStore":Ljava/security/KeyStore;
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1193
    new-instance v25, Lcom/mob/tools/a/r;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mob/tools/a/r;-><init>(Ljava/security/KeyStore;)V

    .line 1194
    .local v25, "sf":Lcom/mob/tools/a/r;
    sget-object v30, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mob/tools/a/r;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1196
    const-string v30, "BasicHttpParams"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1197
    .local v21, "params":Ljava/lang/Object;
    const-string v30, "HttpVersion"

    const-string v31, "HTTP_1_1"

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1198
    .local v11, "http11":Ljava/lang/Object;
    const-string v30, "HttpProtocolParams"

    const-string v31, "setVersion"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v21, v32, v33

    const/16 v33, 0x1

    aput-object v11, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v30, "HttpProtocolParams"

    const-string v31, "setContentCharset"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v21, v32, v33

    const/16 v33, 0x1

    const-string v34, "UTF-8"

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v30, "SchemeRegistry"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 1201
    .local v24, "registry":Ljava/lang/Object;
    const-string v30, "PlainSocketFactory"

    const-string v31, "getSocketFactory"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1202
    .local v14, "httpSf":Ljava/lang/Object;
    const-string v30, "Scheme"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "http"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v14, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x50

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1203
    .local v10, "http":Ljava/lang/Object;
    const-string v30, "Scheme"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "https"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v25, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x1bb

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1204
    .local v15, "https":Ljava/lang/Object;
    const-string v30, "register"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v10, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string v30, "register"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v15, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string v30, "ThreadSafeClientConnManager"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v21, v31, v32

    const/16 v32, 0x1

    aput-object v24, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1207
    .local v5, "ccm":Ljava/lang/Object;
    const-string v30, "DefaultHttpClient"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v5, v31, v32

    const/16 v32, 0x1

    aput-object v21, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1212
    .end local v5    # "ccm":Ljava/lang/Object;
    .end local v10    # "http":Ljava/lang/Object;
    .end local v11    # "http11":Ljava/lang/Object;
    .end local v14    # "httpSf":Ljava/lang/Object;
    .end local v15    # "https":Ljava/lang/Object;
    .end local v21    # "params":Ljava/lang/Object;
    .end local v24    # "registry":Ljava/lang/Object;
    .end local v25    # "sf":Lcom/mob/tools/a/r;
    .end local v27    # "trustStore":Ljava/security/KeyStore;
    .local v6, "client":Ljava/lang/Object;
    :goto_3
    const-string v30, "execute"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v22, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v6, v0, v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1213
    .local v13, "httpResponse":Ljava/lang/Object;
    const-string v30, "getConnectionManager"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v6, v0, v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1214
    .local v17, "manager":Ljava/lang/Object;
    if-eqz p8, :cond_7

    .line 1216
    :try_start_0
    new-instance v30, Lcom/mob/tools/a/h;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Lcom/mob/tools/a/h;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p8

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    const-string v30, "shutdown"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    :goto_4
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "use time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v28

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1226
    return-void

    .line 1179
    .end local v4    # "cTimeout":I
    .end local v6    # "client":Ljava/lang/Object;
    .end local v13    # "httpResponse":Ljava/lang/Object;
    .end local v17    # "manager":Ljava/lang/Object;
    .end local v23    # "rTimout":I
    :cond_4
    move-object/from16 v0, p9

    iget v4, v0, Lcom/mob/tools/a/n$a;->b:I

    goto/16 :goto_1

    .line 1183
    .restart local v4    # "cTimeout":I
    :cond_5
    move-object/from16 v0, p9

    iget v0, v0, Lcom/mob/tools/a/n$a;->a:I

    move/from16 v23, v0

    goto/16 :goto_2

    .line 1209
    .restart local v23    # "rTimout":I
    :cond_6
    const-string v30, "DefaultHttpClient"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "client":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1217
    .restart local v13    # "httpResponse":Ljava/lang/Object;
    .restart local v17    # "manager":Ljava/lang/Object;
    :catch_0
    move-exception v26

    .line 1218
    .local v26, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    .end local v26    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v30

    const-string v31, "shutdown"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v30

    .line 1223
    :cond_7
    const-string v30, "shutdown"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1297
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/a/k;

    .line 1298
    .local v3, "value":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "encodedName":Ljava/lang/String;
    iget-object v4, v3, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "utf-8"

    .line 1300
    invoke-static {v4, v6}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1301
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1302
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1304
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1300
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 1306
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v3    # "value":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheFolder"    # Ljava/lang/String;
    .param p4, "skipIfCached"    # Z
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/a/n$a;Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/a/n$a;Lcom/mob/tools/a/d;)Ljava/lang/String;
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheFolder"    # Ljava/lang/String;
    .param p4, "skipIfCached"    # Z
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .param p6, "downloadListener"    # Lcom/mob/tools/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 117
    .local v34, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 118
    if-eqz p4, :cond_1

    .line 119
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 120
    .local v29, "path":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 121
    .local v26, "name":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v12, "cache":Ljava/io/File;
    if-eqz p4, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 124
    if-eqz p6, :cond_0

    .line 125
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/a/d;->a(IJJ)V

    .line 127
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 249
    :goto_0
    return-object v4

    .line 131
    .end local v12    # "cache":Ljava/io/File;
    .end local v26    # "name":Ljava/lang/String;
    .end local v29    # "path":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 132
    .local v13, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    .line 134
    .local v31, "status":I
    const/16 v4, 0xc8

    move/from16 v0, v31

    if-ne v0, v4, :cond_16

    .line 135
    const/16 v26, 0x0

    .line 138
    .restart local v26    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    .line 139
    .local v25, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v25, :cond_3

    .line 140
    const-string v4, "Content-Disposition"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 141
    .local v19, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 142
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 143
    .local v37, "value":Ljava/lang/String;
    const-string v4, ";"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 144
    .local v28, "parts":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v27, v28, v4

    .line 145
    .local v27, "part":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    const-string v6, "="

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v26, v6, v7

    .line 147
    const-string v6, "\""

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\""

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 148
    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 144
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "part":Ljava/lang/String;
    .end local v28    # "parts":[Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    :cond_3
    if-nez v26, :cond_5

    .line 157
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 158
    if-eqz v25, :cond_5

    .line 159
    const-string v4, "Content-Type"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 160
    .restart local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 161
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 162
    .restart local v37    # "value":Ljava/lang/String;
    if-nez v37, :cond_7

    const-string v37, ""

    .line 163
    :goto_2
    const-string v4, "image/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 164
    const-string v4, "image/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 165
    .local v36, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jpeg"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v36, "jpg"

    .end local v36    # "type":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 184
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 185
    .restart local v29    # "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .restart local v12    # "cache":Ljava/io/File;
    if-eqz p4, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 187
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 188
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 189
    if-eqz p6, :cond_6

    .line 190
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/a/d;->a(IJJ)V

    .line 192
    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 162
    .end local v12    # "cache":Ljava/io/File;
    .end local v29    # "path":Ljava/lang/String;
    .restart local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_2

    .line 168
    :cond_8
    const/16 v4, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 169
    .local v20, "index":I
    const/16 v23, 0x0

    .line 170
    .local v23, "lastPart":Ljava/lang/String;
    if-lez v20, :cond_9

    .line 171
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 173
    :cond_9
    if-eqz v23, :cond_5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 174
    const/16 v4, 0x2e

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 175
    .local v15, "dot":I
    if-lez v15, :cond_5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3

    .line 194
    .end local v15    # "dot":I
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "index":I
    .end local v23    # "lastPart":Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    .restart local v12    # "cache":Ljava/io/File;
    .restart local v29    # "path":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b

    .line 195
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_b
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 198
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 202
    :cond_c
    if-eqz p6, :cond_e

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/a/d;->b()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 203
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 204
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 206
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 208
    :cond_e
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 209
    .local v21, "is":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    .line 210
    .local v14, "contentLength":I
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v18, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v11, v4, [B

    .line 212
    .local v11, "buf":[B
    const/16 v16, 0x0

    .line 213
    .local v16, "downloadLength":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 214
    .local v24, "len":I
    :goto_4
    if-lez v24, :cond_f

    .line 215
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v11, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 216
    add-int v16, v16, v24

    .line 217
    if-eqz p6, :cond_12

    .line 218
    if-gtz v14, :cond_11

    const/16 v5, 0x64

    :goto_5
    move/from16 v0, v16

    int-to-long v6, v0

    int-to-long v8, v14

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/a/d;->a(IJJ)V

    .line 220
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/a/d;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 226
    :cond_f
    if-eqz p6, :cond_14

    .line 227
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/a/d;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 228
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 229
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 231
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 232
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 234
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 218
    :cond_11
    mul-int/lit8 v4, v16, 0x64

    div-int v5, v4, v14

    goto :goto_5

    .line 224
    :cond_12
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v24

    goto :goto_4

    .line 236
    :cond_13
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/a/d;->a(IJJ)V

    .line 238
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 239
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 240
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 248
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 249
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 241
    .end local v11    # "buf":[B
    .end local v14    # "contentLength":I
    .end local v16    # "downloadLength":I
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v24    # "len":I
    :catch_0
    move-exception v32

    .line 242
    .local v32, "t":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 243
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 245
    :cond_15
    throw v32

    .line 252
    .end local v12    # "cache":Ljava/io/File;
    .end local v25    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "name":Ljava/lang/String;
    .end local v29    # "path":Ljava/lang/String;
    .end local v32    # "t":Ljava/lang/Throwable;
    :cond_16
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v30, "sb":Ljava/lang/StringBuilder;
    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 254
    .local v22, "isr":Ljava/io/InputStreamReader;
    new-instance v10, Ljava/io/BufferedReader;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    .local v10, "br":Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    .line 256
    .local v33, "txt":Ljava/lang/String;
    :goto_6
    if-eqz v33, :cond_18

    .line 257
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 258
    const/16 v4, 0xa

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_17
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    goto :goto_6

    .line 263
    :cond_18
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 264
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 266
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v17, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "error"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v4, "status"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/mob/tools/c/g;

    invoke-direct {v5}, Lcom/mob/tools/c/g;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getHttpPostResponse(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/a/j;
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 951
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 952
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPost: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 955
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 956
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 958
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    if-eqz v13, :cond_0

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 959
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/mob/tools/a/n;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;

    move-result-object v11

    .line 966
    .end local v6    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local v11, "part":Lcom/mob/tools/a/f;
    :goto_0
    if-eqz p4, :cond_1

    .line 967
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/a/k;

    .line 968
    .local v7, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v13, v7, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 963
    .end local v7    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .end local v11    # "part":Lcom/mob/tools/a/f;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/a/n;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;

    move-result-object v11

    .restart local v11    # "part":Lcom/mob/tools/a/f;
    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 973
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 974
    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual {v11}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v8

    .line 975
    .local v8, "is":Ljava/io/InputStream;
    const/high16 v13, 0x10000

    new-array v4, v13, [B

    .line 976
    .local v4, "buf":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 977
    .local v9, "len":I
    :goto_2
    if-lez v9, :cond_2

    .line 978
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 979
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_2

    .line 981
    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 982
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 983
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 985
    if-eqz p5, :cond_3

    .line 987
    :try_start_0
    new-instance v13, Lcom/mob/tools/a/i;

    invoke-direct {v13, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 996
    :goto_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 997
    return-void

    .line 988
    :catch_0
    move-exception v12

    .line 989
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v13

    .line 994
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 51
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpGet: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    if-eqz p2, :cond_0

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "param":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    .line 55
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    .end local v9    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 60
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_1

    .line 61
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/a/k;

    .line 62
    .local v7, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v7    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 67
    const/4 v10, 0x0

    .line 68
    .local v10, "resp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 69
    .local v12, "status":I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v12, v0, :cond_4

    .line 70
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v11, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "txt":Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_3

    .line 75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 76
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 82
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 83
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "use time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 106
    return-object v10

    .line 85
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "txt":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 87
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .restart local v4    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 89
    .restart local v13    # "txt":Ljava/lang/String;
    :goto_2
    if-eqz v13, :cond_6

    .line 90
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_5

    .line 91
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 97
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 99
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "error"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v16, "status"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v16, Ljava/lang/Throwable;

    new-instance v17, Lcom/mob/tools/c/g;

    invoke-direct/range {v17 .. v17}, Lcom/mob/tools/c/g;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public httpHead(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1087
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1088
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpHead: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1089
    if-eqz p2, :cond_0

    .line 1090
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 1091
    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 1092
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1096
    .end local v11    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 1097
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-string v15, "HEAD"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1098
    if-eqz p4, :cond_1

    .line 1099
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/a/k;

    .line 1100
    .local v7, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v15, v7, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    .end local v7    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1105
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 1106
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<[Ljava/lang/String;>;>;"
    if-eqz v10, :cond_4

    .line 1108
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1109
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1110
    .local v14, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v14, :cond_2

    .line 1111
    new-instance v17, Lcom/mob/tools/a/k;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1113
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v6, v15, [Ljava/lang/String;

    .line 1114
    .local v6, "hds":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v15, v6

    if-ge v8, v15, :cond_3

    .line 1115
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v6, v8

    .line 1114
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1117
    :cond_3
    new-instance v17, Lcom/mob/tools/a/k;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1121
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "hds":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v14    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1123
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1124
    return-object v9
.end method

.method public httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;JLjava/util/ArrayList;Lcom/mob/tools/a/o;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/a/o;
    .param p8, "callback"    # Lcom/mob/tools/a/j;
    .param p9, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/o;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1130
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1131
    invoke-virtual/range {p0 .. p9}, Lcom/mob/tools/a/n;->httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;JLjava/util/ArrayList;Lcom/mob/tools/a/o;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/mob/tools/a/n;->httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;JLjava/util/ArrayList;Lcom/mob/tools/a/o;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    goto :goto_0
.end method

.method public httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;JLjava/util/ArrayList;Lcom/mob/tools/a/o;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/a/o;
    .param p8, "callback"    # Lcom/mob/tools/a/j;
    .param p9, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/o;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1242
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1243
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPatch: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1244
    if-eqz p2, :cond_0

    .line 1245
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 1246
    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 1247
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "?"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1251
    .end local v11    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 1252
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1253
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1254
    const-string v13, "PATCH"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1255
    const-string v13, "Content-Type"

    const-string v16, "application/offset+octet-stream"

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    if-eqz p6, :cond_1

    .line 1257
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/a/k;

    .line 1258
    .local v7, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v13, v7, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    .end local v7    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 1263
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 1264
    .local v10, "os":Ljava/io/OutputStream;
    new-instance v6, Lcom/mob/tools/a/e;

    invoke-direct {v6}, Lcom/mob/tools/a/e;-><init>()V

    .line 1265
    .local v6, "fp":Lcom/mob/tools/a/e;
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/o;)V

    .line 1266
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v13}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;)V

    .line 1267
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lcom/mob/tools/a/e;->a(J)V

    .line 1268
    invoke-virtual {v6}, Lcom/mob/tools/a/e;->c()Ljava/io/InputStream;

    move-result-object v8

    .line 1269
    .local v8, "is":Ljava/io/InputStream;
    const/high16 v13, 0x10000

    new-array v4, v13, [B

    .line 1270
    .local v4, "buf":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 1271
    .local v9, "len":I
    :goto_1
    if-lez v9, :cond_2

    .line 1272
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 1273
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_1

    .line 1275
    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1276
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1277
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1279
    if-eqz p8, :cond_3

    .line 1281
    :try_start_0
    new-instance v13, Lcom/mob/tools/a/i;

    invoke-direct {v13, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1290
    :goto_2
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1291
    return-void

    .line 1282
    :catch_0
    move-exception v12

    .line 1283
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v13

    .line 1288
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "chunkLength"    # I
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v6, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/mob/tools/a/n$4;

    invoke-direct {v4, p0, v6}, Lcom/mob/tools/a/n$4;-><init>(Lcom/mob/tools/a/n;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 598
    const-string v0, "resp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 457
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 461
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 452
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "chunkLength"    # I
    .param p4, "callback"    # Lcom/mob/tools/a/j;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 717
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 720
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 721
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    if-eqz p2, :cond_0

    .line 723
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 724
    .local v6, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    .end local v6    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    new-instance v10, Lcom/mob/tools/a/s;

    invoke-direct {v10}, Lcom/mob/tools/a/s;-><init>()V

    .line 728
    .local v10, "part":Lcom/mob/tools/a/s;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 729
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 730
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 731
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/a/s;->c()Ljava/io/InputStream;

    move-result-object v7

    .line 732
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 733
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 734
    .local v8, "len":I
    :goto_1
    if-lez v8, :cond_1

    .line 735
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 736
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    .line 738
    :cond_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 739
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 740
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 741
    if-eqz p4, :cond_2

    .line 743
    :try_start_0
    new-instance v14, Lcom/mob/tools/a/i;

    invoke-direct {v14, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 752
    :goto_2
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 753
    return-void

    .line 744
    :catch_0
    move-exception v11

    .line 745
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 750
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "callback"    # Lcom/mob/tools/a/j;
    .param p7, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 610
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 611
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 614
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 615
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/mob/tools/a/n;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;

    move-result-object v10

    .line 619
    .local v10, "part":Lcom/mob/tools/a/f;
    if-ltz p5, :cond_0

    .line 620
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 627
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 628
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 629
    .local v6, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 623
    .end local v6    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .end local v10    # "part":Lcom/mob/tools/a/f;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/a/n;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;

    move-result-object v10

    .line 624
    .restart local v10    # "part":Lcom/mob/tools/a/f;
    invoke-virtual {v10}, Lcom/mob/tools/a/f;->b()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 634
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 635
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v7

    .line 636
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 637
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 638
    .local v8, "len":I
    :goto_2
    if-lez v8, :cond_3

    .line 639
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 640
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_2

    .line 642
    :cond_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 643
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 644
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 646
    if-eqz p6, :cond_4

    .line 648
    :try_start_0
    new-instance v14, Lcom/mob/tools/a/i;

    invoke-direct {v14, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 657
    :goto_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 658
    return-void

    .line 649
    :catch_0
    move-exception v11

    .line 650
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 655
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/a/j;
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 605
    return-void
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p5, "chunkLength"    # I
    .param p6, "callback"    # Lcom/mob/tools/a/j;
    .param p7, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 663
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 664
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 667
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 668
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_1

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/a/n;->getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/a/f;

    move-result-object v10

    .line 672
    .local v10, "part":Lcom/mob/tools/a/f;
    if-ltz p5, :cond_0

    .line 673
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 680
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 681
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 682
    .local v6, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    .end local v6    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .end local v10    # "part":Lcom/mob/tools/a/f;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/a/n;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/a/f;

    move-result-object v10

    .line 677
    .restart local v10    # "part":Lcom/mob/tools/a/f;
    invoke-virtual {v10}, Lcom/mob/tools/a/f;->b()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 687
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 688
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v7

    .line 689
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 690
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 691
    .local v8, "len":I
    :goto_2
    if-lez v8, :cond_3

    .line 692
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 693
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_2

    .line 695
    :cond_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 696
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 697
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 699
    if-eqz p6, :cond_4

    .line 701
    :try_start_0
    new-instance v14, Lcom/mob/tools/a/i;

    invoke-direct {v14, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 710
    :goto_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 711
    return-void

    .line 702
    :catch_0
    move-exception v11

    .line 703
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 708
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v8, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/mob/tools/a/n$2;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/a/n$2;-><init>(Lcom/mob/tools/a/n;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 510
    const-string v0, "resp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 515
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v8, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/mob/tools/a/n$3;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/a/n$3;-><init>(Lcom/mob/tools/a/n;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 554
    const-string v0, "resp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1001
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/o;)Ljava/lang/String;
    .locals 26
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .param p6, "listener"    # Lcom/mob/tools/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            "Lcom/mob/tools/a/o;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1006
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1007
    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "httpPut: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1008
    if-eqz p2, :cond_0

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/a/n;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    .line 1010
    .local v14, "param":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_0

    .line 1011
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1015
    .end local v14    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 1016
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1017
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1018
    const-string v21, "PUT"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1019
    const-string v21, "Content-Type"

    const-string v22, "application/octet-stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    if-eqz p4, :cond_1

    .line 1021
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/a/k;

    .line 1022
    .local v9, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v9, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v9, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    .end local v9    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 1027
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 1028
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v8, Lcom/mob/tools/a/e;

    invoke-direct {v8}, Lcom/mob/tools/a/e;-><init>()V

    .line 1029
    .local v8, "fp":Lcom/mob/tools/a/e;
    if-eqz p6, :cond_2

    .line 1030
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/o;)V

    .line 1032
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v8}, Lcom/mob/tools/a/e;->c()Ljava/io/InputStream;

    move-result-object v10

    .line 1034
    .local v10, "is":Ljava/io/InputStream;
    const/high16 v21, 0x10000

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 1035
    .local v5, "buf":[B
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 1036
    .local v12, "len":I
    :goto_1
    if-lez v12, :cond_3

    .line 1037
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v5, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 1038
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_1

    .line 1040
    :cond_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 1041
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1042
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 1044
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 1045
    .local v17, "status":I
    const/4 v15, 0x0

    .line 1046
    .local v15, "resp":Ljava/lang/String;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0xc9

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 1047
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v16, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1049
    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1050
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1051
    .local v20, "txt":Ljava/lang/String;
    :goto_2
    if-eqz v20, :cond_6

    .line 1052
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 1053
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 1058
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1059
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1060
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1080
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "use time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1081
    return-object v15

    .line 1062
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "txt":Ljava/lang/String;
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1064
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1065
    .restart local v4    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1066
    .restart local v20    # "txt":Ljava/lang/String;
    :goto_3
    if-eqz v20, :cond_9

    .line 1067
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_8

    .line 1068
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    .line 1073
    :cond_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1075
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1076
    .local v7, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "error"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v21, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v21, Ljava/lang/Throwable;

    new-instance v22, Lcom/mob/tools/c/g;

    invoke-direct/range {v22 .. v22}, Lcom/mob/tools/c/g;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 349
    .local v7, "resp":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/mob/tools/a/n$1;

    invoke-direct {v5, p0, v6}, Lcom/mob/tools/a/n$1;-><init>(Lcom/mob/tools/a/n;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/j;)V

    .line 389
    const-string v0, "res"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "res"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "resp":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 392
    .restart local v7    # "resp":Ljava/lang/String;
    :cond_0
    return-object v7
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/j;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .param p5, "callback"    # Lcom/mob/tools/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            "Lcom/mob/tools/a/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v2, "valuesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 399
    .local v6, "p":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v1, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    iget-object v3, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v6    # "p":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 401
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/j;)V

    .line 402
    return-void
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Lcom/mob/tools/a/j;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .param p5, "callback"    # Lcom/mob/tools/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/n$a;",
            "Lcom/mob/tools/a/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 407
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "jsonPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 410
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 411
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 412
    const-string v14, "content-type"

    const-string v15, "application/json"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz p3, :cond_0

    .line 414
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 415
    .local v6, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v6    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    new-instance v10, Lcom/mob/tools/a/s;

    invoke-direct {v10}, Lcom/mob/tools/a/s;-><init>()V

    .line 420
    .local v10, "sp":Lcom/mob/tools/a/s;
    if-eqz p2, :cond_1

    .line 421
    new-instance v14, Lcom/mob/tools/c/g;

    invoke-direct {v14}, Lcom/mob/tools/c/g;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/mob/tools/a/s;->a(Ljava/lang/String;)Lcom/mob/tools/a/s;

    .line 424
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 425
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 426
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/a/s;->c()Ljava/io/InputStream;

    move-result-object v7

    .line 427
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 428
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 429
    .local v8, "len":I
    :goto_1
    if-lez v8, :cond_2

    .line 430
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 431
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    .line 433
    :cond_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 434
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 435
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 436
    if-eqz p5, :cond_3

    .line 438
    :try_start_0
    new-instance v14, Lcom/mob/tools/a/i;

    invoke-direct {v14, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 447
    :goto_2
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 448
    return-void

    .line 439
    :catch_0
    move-exception v11

    .line 440
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 445
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mob/tools/a/j;
    .param p3, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/a/n;->rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 319
    return-void
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/a/q;Lcom/mob/tools/a/n$a;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mob/tools/a/q;
    .param p3, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/a/n;->rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/q;Lcom/mob/tools/a/n$a;)V

    .line 275
    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/mob/tools/a/j;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 323
    .local v4, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawGet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 325
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 326
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 327
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/a/k;

    .line 328
    .local v1, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v1    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 332
    if-eqz p3, :cond_1

    .line 334
    :try_start_0
    new-instance v3, Lcom/mob/tools/a/i;

    invoke-direct {v3, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p3, v3}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 343
    :goto_1
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 344
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/q;Lcom/mob/tools/a/n$a;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/mob/tools/a/q;
    .param p4, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/q;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 279
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rawGet: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 282
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 283
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/a/k;

    .line 284
    .local v7, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v7, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v7    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 288
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 289
    .local v10, "status":I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_2

    .line 290
    if-eqz p3, :cond_1

    .line 291
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/mob/tools/a/q;->a(Ljava/io/InputStream;)V

    .line 293
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 315
    return-void

    .line 296
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "utf-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 298
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "txt":Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_4

    .line 301
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 302
    const/16 v14, 0xa

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 307
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 308
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 310
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "error"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v14, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v14, Ljava/lang/Throwable;

    new-instance v15, Lcom/mob/tools/c/g;

    invoke-direct {v15}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v15, v6}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/f;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/a/f;
    .param p4, "chunkLength"    # I
    .param p5, "callback"    # Lcom/mob/tools/a/j;
    .param p6, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/f;",
            "I",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 907
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 908
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rawpost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 910
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 911
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 912
    if-ltz p4, :cond_0

    .line 913
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 915
    :cond_0
    if-eqz p2, :cond_1

    .line 916
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/a/k;

    .line 917
    .local v6, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v15, v6, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    iget-object v11, v6, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v15, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    .end local v6    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 922
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 923
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v7

    .line 924
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v11, 0x10000

    new-array v4, v11, [B

    .line 925
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 926
    .local v8, "len":I
    :goto_1
    if-lez v8, :cond_2

    .line 927
    const/4 v11, 0x0

    invoke-virtual {v9, v4, v11, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 928
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    .line 930
    :cond_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 931
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 932
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 934
    if-eqz p5, :cond_3

    .line 936
    :try_start_0
    new-instance v11, Lcom/mob/tools/a/i;

    invoke-direct {v11, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Lcom/mob/tools/a/j;->a(Lcom/mob/tools/a/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 945
    :goto_2
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "use time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 946
    return-void

    .line 937
    :catch_0
    move-exception v10

    .line 938
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v11

    .line 943
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/f;Lcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/a/f;
    .param p4, "callback"    # Lcom/mob/tools/a/j;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/f;",
            "Lcom/mob/tools/a/j;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 902
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/a/n;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/f;ILcom/mob/tools/a/j;Lcom/mob/tools/a/n$a;)V

    .line 903
    return-void
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/f;Lcom/mob/tools/a/q;Lcom/mob/tools/a/n$a;)V
    .locals 24
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/a/f;
    .param p4, "callback"    # Lcom/mob/tools/a/q;
    .param p5, "timeout"    # Lcom/mob/tools/a/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/k",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/a/f;",
            "Lcom/mob/tools/a/q;",
            "Lcom/mob/tools/a/n$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 833
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/a/k<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 834
    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rawpost: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 836
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/a/n;->getConnection(Ljava/lang/String;Lcom/mob/tools/a/n$a;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 837
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 838
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 839
    if-eqz p2, :cond_0

    .line 840
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/a/k;

    .line 841
    .local v8, "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/mob/tools/a/k;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/mob/tools/a/k;->b:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v8    # "header":Lcom/mob/tools/a/k;, "Lcom/mob/tools/a/k<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 846
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 847
    .local v13, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v10

    .line 848
    .local v10, "is":Ljava/io/InputStream;
    const/high16 v20, 0x10000

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 849
    .local v5, "buf":[B
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 850
    .local v12, "len":I
    :goto_1
    if-lez v12, :cond_1

    .line 851
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v5, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 852
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 855
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 856
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 858
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 859
    .local v15, "status":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v15, v0, :cond_5

    .line 860
    if-eqz p4, :cond_4

    .line 861
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 863
    .local v9, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lcom/mob/tools/a/q;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    if-eqz v9, :cond_2

    .line 869
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 877
    .end local v9    # "in":Ljava/io/InputStream;
    :goto_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "use time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 898
    return-void

    .line 864
    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 865
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_2
    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v20

    if-eqz v9, :cond_3

    .line 869
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 872
    :cond_3
    :goto_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v20

    .line 875
    .end local v9    # "in":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 879
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v14, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "utf-8"

    invoke-static/range {v21 .. v21}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 881
    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 882
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 883
    .local v17, "txt":Ljava/lang/String;
    :goto_5
    if-eqz v17, :cond_7

    .line 884
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 885
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 890
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 891
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 893
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v7, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "error"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string v20, "status"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    new-instance v20, Ljava/lang/Throwable;

    new-instance v21, Lcom/mob/tools/c/g;

    invoke-direct/range {v21 .. v21}, Lcom/mob/tools/c/g;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v20

    .line 870
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "txt":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v20

    goto/16 :goto_2

    :catch_2
    move-exception v21

    goto :goto_4
.end method
