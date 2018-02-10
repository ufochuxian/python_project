.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;,
        Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field private status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "status"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "totalBytes"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 1299
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    .line 1300
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1301
    if-nez p3, :cond_1

    .line 1303
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1304
    iput-wide v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->contentLength:J

    .line 1310
    :goto_0
    iget-wide v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->contentLength:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1311
    return-void

    .line 1307
    :cond_1
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1308
    iput-wide p4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->contentLength:J

    goto :goto_0
.end method

.method private headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1348
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1349
    .local v0, "alreadySent":Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1353
    return v0

    .line 1349
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1351
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method private sendAsChunked(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1416
    const-string v4, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    const-string v4, "\r\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1419
    const/16 v0, 0x4000

    .line 1420
    .local v0, "BUFFER_SIZE":I
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1421
    .local v1, "CRLF":[B
    new-array v2, v0, [B

    .line 1423
    .local v2, "buff":[B
    :goto_0
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-gtz v3, :cond_0

    .line 1429
    const-string v4, "0\r\n\r\n"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1430
    return-void

    .line 1425
    :cond_0
    const-string v4, "%x\r\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1426
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1427
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private sendAsFixedLength(Ljava/io/OutputStream;J)V
    .locals 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1434
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->requestMethod:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    sget-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->HEAD:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 1436
    const-wide/16 v0, 0x4000

    .line 1437
    .local v0, "BUFFER_SIZE":J
    long-to-int v4, v0

    new-array v2, v4, [B

    .line 1438
    .local v2, "buff":[B
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    .line 1449
    .end local v0    # "BUFFER_SIZE":J
    .end local v2    # "buff":[B
    :cond_0
    return-void

    .line 1440
    .restart local v0    # "BUFFER_SIZE":J
    .restart local v2    # "buff":[B
    :cond_1
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    cmp-long v4, p2, v0

    if-lez v4, :cond_2

    move-wide v4, v0

    :goto_1
    long-to-int v4, v4

    invoke-virtual {v6, v2, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1441
    .local v3, "read":I
    if-lez v3, :cond_0

    .line 1445
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1446
    int-to-long v4, v3

    sub-long/2addr p2, v4

    goto :goto_0

    .end local v3    # "read":I
    :cond_2
    move-wide v4, p2

    .line 1440
    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->requestMethod:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method protected send(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1361
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1362
    .local v3, "mime":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1363
    .local v0, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v8, "GMT"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1367
    :try_start_0
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    if-nez v8, :cond_0

    .line 1369
    new-instance v8, Ljava/lang/Error;

    const-string v9, "sendResponse(): Status can\'t be null."

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :catch_0
    move-exception v1

    .line 1410
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$1()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "Could not send response to the client"

    invoke-virtual {v8, v9, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1412
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1371
    :cond_0
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, p1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1372
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HTTP/1.1 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    invoke-interface {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    if-eqz v3, :cond_1

    .line 1376
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Content-Type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    :cond_1
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v9, "Date"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1381
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Date: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    :cond_3
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v8, :cond_4

    .line 1386
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1393
    :cond_4
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-virtual {p0, v6, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->sendConnectionHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;)V

    .line 1395
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->requestMethod:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    sget-object v9, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->HEAD:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    if-eq v8, v9, :cond_6

    iget-boolean v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v8, :cond_6

    .line 1397
    invoke-direct {p0, p1, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->sendAsChunked(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V

    .line 1406
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1407
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1386
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1388
    .local v2, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1389
    .local v7, "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1400
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v8, :cond_7

    iget-wide v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->contentLength:J

    .line 1401
    .local v4, "pending":J
    :goto_3
    iget-object v8, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-virtual {p0, v6, v8, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J

    move-result-wide v4

    .line 1402
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1404
    invoke-direct {p0, p1, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->sendAsFixedLength(Ljava/io/OutputStream;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1400
    .end local v4    # "pending":J
    :cond_7
    const-wide/16 v4, 0x0

    goto :goto_3
.end method

.method protected sendConnectionHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1453
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "connection"

    invoke-direct {p0, p2, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    const-string v0, "Connection: keep-alive\r\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    :cond_0
    return-void
.end method

.method protected sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 1461
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1475
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    .end local p3    # "size":J
    :goto_0
    return-wide p3

    .line 1461
    .restart local p3    # "size":J
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1463
    .local v1, "headerName":Ljava/lang/String;
    const-string v3, "content-length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1467
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 1468
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public setChunkedTransfer(Z)V
    .locals 0
    .param p1, "chunkedTransfer"    # Z

    .prologue
    .line 1481
    iput-boolean p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1482
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1487
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1492
    return-void
.end method

.method public setRequestMethod(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->requestMethod:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    .line 1497
    return-void
.end method

.method public setStatus(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->status:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;

    .line 1502
    return-void
.end method
