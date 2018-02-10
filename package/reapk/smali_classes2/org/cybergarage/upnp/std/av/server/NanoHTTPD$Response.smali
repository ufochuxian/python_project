.class public Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private data:Ljava/io/InputStream;

.field private header:Ljava/util/Map;
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

.field private requestMethod:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field private status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 528
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->OK:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "status"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 536
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 537
    iput-object p2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 538
    iput-object p3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 539
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "txt"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 546
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 547
    iput-object p2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 550
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_1
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "error"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    const-string v1, "text/plain"

    invoke-direct {v0, p1, v1, p2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 560
    return-void
.end method

.method private send(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 581
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 582
    .local v4, "mime":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 583
    .local v2, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 587
    :try_start_0
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    if-nez v9, :cond_1

    .line 589
    new-instance v9, Ljava/lang/Error;

    const-string v10, "sendResponse(): Status can\'t be null."

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9

    .line 637
    :catch_0
    move-exception v9

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 592
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "HTTP/1.0 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    if-eqz v4, :cond_2

    .line 596
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content-Type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    :cond_2
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "Date"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 601
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Date: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    :cond_4
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_5

    .line 606
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 613
    :cond_5
    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 616
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->requestMethod:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    sget-object v10, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->HEAD:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    if-eq v9, v10, :cond_6

    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v9, :cond_6

    .line 618
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 619
    .local v5, "pending":I
    const/16 v0, 0x4000

    .line 620
    .local v0, "BUFFER_SIZE":I
    new-array v1, v0, [B

    .line 621
    .local v1, "buff":[B
    :goto_2
    if-gtz v5, :cond_8

    .line 633
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "buff":[B
    .end local v5    # "pending":I
    :cond_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 634
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 635
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v9, :cond_0

    .line 636
    iget-object v9, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 606
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 608
    .local v3, "key":Ljava/lang/String;
    iget-object v10, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 609
    .local v8, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 623
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "buff":[B
    .restart local v5    # "pending":I
    :cond_8
    iget-object v10, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    const/4 v11, 0x0

    if-le v5, v0, :cond_9

    move v9, v0

    :goto_3
    invoke-virtual {v10, v1, v11, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 624
    .local v7, "read":I
    if-lez v7, :cond_6

    .line 628
    const/4 v9, 0x0

    invoke-virtual {p1, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    sub-int/2addr v5, v7

    goto :goto_2

    .end local v7    # "read":I
    :cond_9
    move v9, v5

    .line 623
    goto :goto_3
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->requestMethod:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 670
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 671
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public setRequestMethod(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    .prologue
    .line 680
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->requestMethod:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    .line 681
    return-void
.end method

.method public setStatus(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .prologue
    .line 650
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 651
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->status:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
