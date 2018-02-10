.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private cookies:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
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

.field private final inputStream:Ljava/io/PushbackInputStream;

.field private method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
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

.field private queryParameterString:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p2, "tempFileManager"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    .line 543
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    .line 544
    iput-object p4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 545
    return-void
.end method

.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 2
    .param p2, "tempFileManager"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    .line 551
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    .line 552
    iput-object p4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 553
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "127.0.0.1"

    :goto_0
    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 556
    return-void

    .line 554
    :cond_1
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 574
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 576
    new-instance v7, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 577
    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    .line 576
    invoke-direct {v7, v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 629
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v7, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 629
    invoke-direct {v7, v8, v9, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 580
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 584
    new-instance v7, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 585
    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    .line 584
    invoke-direct {v7, v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    .line 588
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 592
    .local v4, "qmi":I
    if-ltz v4, :cond_3

    .line 594
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 595
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 607
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 609
    new-instance v7, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v9, "Only HTTP/1.1 is supported."

    invoke-direct {v7, v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    .line 598
    :cond_3
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-virtual {v7, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 613
    :cond_4
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$1()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "no protocol version specified, strange.."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 615
    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 626
    :cond_6
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 618
    :cond_7
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 619
    .local v3, "p":I
    if-ltz v3, :cond_8

    .line 621
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method

.method private decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 23
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .param p3, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 642
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 643
    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .line 644
    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 645
    .local v11, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 740
    return-void

    .line 647
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 649
    new-instance v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 650
    const-string v21, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    .line 649
    invoke-direct/range {v19 .. v21}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v11    # "mpline":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 737
    .local v9, "ioe":Ljava/io/IOException;
    new-instance v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 737
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v19

    .line 652
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v11    # "mpline":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 653
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v10, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 655
    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_4

    .line 664
    :cond_3
    if-eqz v11, :cond_0

    .line 666
    const-string v19, "content-disposition"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 667
    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 669
    new-instance v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 670
    const-string v21, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    .line 669
    invoke-direct/range {v19 .. v21}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v19

    .line 657
    .end local v5    # "contentDisposition":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x3a

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 658
    .local v13, "p":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    .line 660
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 672
    .end local v13    # "p":I
    .restart local v5    # "contentDisposition":Ljava/lang/String;
    :cond_6
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v19, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v16, "st":Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v8, "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-nez v19, :cond_a

    .line 684
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 685
    .local v15, "pname":Ljava/lang/String;
    const/16 v19, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 687
    const-string v18, ""

    .line 688
    .local v18, "value":Ljava/lang/String;
    const-string v19, "content-type"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_d

    .line 690
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 732
    :cond_9
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 676
    .end local v15    # "pname":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 677
    .local v17, "token":Ljava/lang/String;
    const/16 v19, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 678
    .restart local v13    # "p":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_7

    .line 680
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 681
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 680
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 692
    .end local v13    # "p":I
    .end local v17    # "token":Ljava/lang/String;
    .restart local v15    # "pname":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 693
    if-eqz v11, :cond_8

    .line 695
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 696
    .local v7, "d":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_c

    .line 698
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 699
    goto :goto_3

    .line 701
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    add-int/lit8 v21, v7, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 707
    .end local v7    # "d":I
    :cond_d
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v3, v0, :cond_e

    .line 709
    new-instance v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v21, "Error processing request"

    invoke-direct/range {v19 .. v21}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v19

    .line 711
    :cond_e
    add-int/lit8 v19, v3, -0x2

    aget v19, v4, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 712
    .local v12, "offset":I
    add-int/lit8 v19, v3, -0x1

    aget v19, v4, v19

    sub-int v19, v19, v12

    add-int/lit8 v19, v19, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v14

    .line 713
    .local v14, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 715
    move-object/from16 v0, p5

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :goto_5
    const-string v19, "filename"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "value":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 726
    .restart local v18    # "value":Ljava/lang/String;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 729
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 730
    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    goto/16 :goto_4

    .line 718
    :cond_10
    const/4 v6, 0x2

    .line 719
    .local v6, "count":I
    :goto_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 723
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 721
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 750
    const-string v3, ""

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 768
    :cond_0
    return-void

    .line 754
    :cond_1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 755
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 760
    .local v1, "sep":I
    if-ltz v1, :cond_2

    .line 762
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 765
    :cond_2
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-virtual {v3, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-lt v1, p2, :cond_0

    .line 903
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 896
    :cond_0
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    .line 897
    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    .line 899
    add-int/lit8 v1, v0, 0x4

    goto :goto_1

    .line 901
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    .line 911
    const/4 v3, 0x0

    .line 912
    .local v3, "matchcount":I
    const/4 v1, -0x1

    .line 913
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v2, "matchbytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 936
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 937
    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_4

    .line 941
    return-object v4

    .line 916
    .end local v4    # "ret":[I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_3

    .line 918
    if-nez v3, :cond_1

    .line 920
    move v1, v0

    .line 922
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 923
    array-length v5, p2

    if-ne v3, v5, :cond_2

    .line 925
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    const/4 v3, 0x0

    .line 927
    const/4 v1, -0x1

    .line 914
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_3
    sub-int/2addr v0, v3

    .line 932
    const/4 v3, 0x0

    .line 933
    const/4 v1, -0x1

    goto :goto_2

    .line 939
    .restart local v4    # "ret":[I
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 984
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->createTempFile()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;

    move-result-object v1

    .line 985
    .local v1, "tempFile":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 986
    .end local v1    # "tempFile":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 9
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 1118
    const-string v4, ""

    .line 1119
    .local v4, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 1121
    const/4 v2, 0x0

    .line 1124
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->createTempFile()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;

    move-result-object v6

    .line 1125
    .local v6, "tempFile":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1126
    .local v5, "src":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1128
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1129
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1130
    invoke-interface {v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1136
    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1139
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "src":Ljava/nio/ByteBuffer;
    .end local v6    # "tempFile":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;
    :cond_0
    return-object v4

    .line 1131
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1133
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1135
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1136
    :goto_1
    invoke-static {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1137
    throw v7

    .line 1135
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "src":Ljava/nio/ByteBuffer;
    .restart local v6    # "tempFile":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1131
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1148
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1155
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1150
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    const/16 v9, 0x2000

    :try_start_0
    new-array v0, v9, [B

    .line 781
    .local v0, "buf":[B
    const/4 v9, 0x0

    iput v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 782
    const/4 v9, 0x0

    iput v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    const/4 v7, -0x1

    .line 787
    .local v7, "read":I
    :try_start_1
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v9, v0, v10, v11}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 794
    const/4 v9, -0x1

    if-ne v7, v9, :cond_4

    .line 797
    :try_start_2
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 798
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 799
    new-instance v9, Ljava/net/SocketException;

    const-string v10, "NanoHttpd Shutdown"

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 861
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 883
    .end local v1    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v9

    .line 884
    iget-object v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v10}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->clear()V

    .line 885
    throw v9

    .line 788
    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :catch_1
    move-exception v1

    .line 790
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 791
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 792
    new-instance v9, Ljava/net/SocketException;

    const-string v10, "NanoHttpd Shutdown"

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 865
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "read":I
    :catch_2
    move-exception v8

    .line 870
    .local v8, "ste":Ljava/net/SocketTimeoutException;
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 803
    .end local v8    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :cond_0
    :try_start_6
    iget v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    .line 804
    iget v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {p0, v0, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v9

    iput v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 805
    iget v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v9, :cond_3

    .line 812
    :goto_0
    iget v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v9, v10, :cond_1

    .line 814
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    iget v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v11, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    iget v12, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v0, v10, v11}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 817
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 818
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v9, :cond_5

    .line 820
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 826
    :goto_1
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 828
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v10, "remote-addr"

    iget-object v11, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v10, "http-client-ip"

    iget-object v11, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    iget v12, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v10, v0, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 836
    .local v2, "hin":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 837
    .local v4, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {p0, v2, v4, v9, v10}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 839
    const-string v9, "method"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    move-result-object v9

    iput-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    .line 840
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    if-nez v9, :cond_6

    .line 842
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v10, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v11, "BAD REQUEST: Syntax error."

    invoke-direct {v9, v10, v11}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v9
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 871
    .end local v0    # "buf":[B
    .end local v2    # "hin":Ljava/io/BufferedReader;
    .end local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "read":I
    :catch_3
    move-exception v3

    .line 873
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    sget-object v10, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v11, "text/plain"

    .line 874
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 873
    invoke-virtual {v9, v10, v11, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v5

    .line 875
    .local v5, "r":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 876
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 884
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->clear()V

    .line 886
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2
    return-void

    .line 809
    .end local v5    # "r":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :cond_3
    :try_start_8
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    iget v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    iget v11, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v11, v11, 0x2000

    invoke-virtual {v9, v0, v10, v11}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v7

    .line 801
    :cond_4
    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 823
    :cond_5
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 877
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_4
    move-exception v6

    .line 879
    .local v6, "re":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;
    :try_start_9
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;->getStatus()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v5

    .line 880
    .restart local v5    # "r":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 881
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 884
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_2

    .line 845
    .end local v5    # "r":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .end local v6    # "re":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;
    .restart local v0    # "buf":[B
    .restart local v2    # "hin":Ljava/io/BufferedReader;
    .restart local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "read":I
    :cond_6
    :try_start_a
    const-string v9, "uri"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 847
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;

    iget-object v10, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v11, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v9, v10, v11}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Ljava/util/Map;)V

    iput-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;

    .line 850
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-virtual {v9, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->serve(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v5

    .line 851
    .restart local v5    # "r":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    if-nez v5, :cond_7

    .line 853
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v10, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 854
    const-string v11, "SERVER INTERNAL ERROR: Serve() returned a null response."

    .line 853
    invoke-direct {v9, v10, v11}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v9

    .line 857
    :cond_7
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;

    invoke-virtual {v9, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;->unloadQueue(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;)V

    .line 858
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    invoke-virtual {v5, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->setRequestMethod(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;)V

    .line 859
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 884
    iget-object v9, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_2
.end method

.method public getCookies()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
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
    .line 953
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public final getMethod()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 1
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
    .line 971
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 1001
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 1002
    .local v20, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 1006
    .local v16, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v20

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v8, "content-length"

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v8, "content-length"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 1021
    .local v22, "size":J
    :goto_0
    const/16 v4, 0x200

    new-array v13, v4, [B

    .line 1022
    .local v13, "buf":[B
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ltz v4, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v4, v22, v8

    if-gtz v4, :cond_5

    .line 1033
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 1034
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 1035
    .local v6, "fbuf":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1038
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1039
    .local v10, "bin":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1043
    .end local v16    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :try_start_1
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->POST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    invoke-virtual {v4, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1045
    const-string v14, ""

    .line 1046
    .local v14, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v8, "content-type"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1048
    .local v15, "contentTypeHeader":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1049
    .local v24, "st":Ljava/util/StringTokenizer;
    if-eqz v15, :cond_2

    .line 1051
    new-instance v24, Ljava/util/StringTokenizer;

    .end local v24    # "st":Ljava/util/StringTokenizer;
    const-string v4, ",; "

    move-object/from16 v0, v24

    invoke-direct {v0, v15, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .restart local v24    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1054
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 1058
    :cond_2
    const-string v4, "multipart/form-data"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1061
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1063
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    .line 1064
    const-string v9, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    .line 1063
    invoke-direct {v4, v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ResponseException;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "contentTypeHeader":Ljava/lang/String;
    .end local v24    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v4

    .line 1108
    .end local v6    # "fbuf":Ljava/nio/ByteBuffer;
    .end local v10    # "bin":Ljava/io/InputStream;
    .end local v13    # "buf":[B
    .end local v22    # "size":J
    :goto_2
    invoke-static/range {v20 .. v20}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1109
    invoke-static {v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1110
    throw v4

    .line 1012
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v4, v8, :cond_4

    .line 1014
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v4, v8

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 1015
    .restart local v22    # "size":J
    goto/16 :goto_0

    .line 1017
    .end local v22    # "size":J
    :cond_4
    const-wide/16 v22, 0x0

    .restart local v22    # "size":J
    goto/16 :goto_0

    .line 1024
    .restart local v13    # "buf":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    const/4 v8, 0x0

    const-wide/16 v26, 0x200

    move-wide/from16 v0, v22

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v9, v0

    invoke-virtual {v4, v13, v8, v9}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    .line 1025
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v8, v4

    sub-long v22, v22, v8

    .line 1026
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-lez v4, :cond_0

    .line 1028
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v4, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 1107
    .end local v13    # "buf":[B
    .end local v22    # "size":J
    :catchall_1
    move-exception v4

    move-object/from16 v7, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1067
    .restart local v6    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local v10    # "bin":Ljava/io/InputStream;
    .restart local v13    # "buf":[B
    .restart local v14    # "contentType":Ljava/lang/String;
    .restart local v15    # "contentTypeHeader":Ljava/lang/String;
    .restart local v22    # "size":J
    .restart local v24    # "st":Ljava/util/StringTokenizer;
    :cond_6
    :try_start_3
    const-string v12, "boundary="

    .line 1068
    .local v12, "boundaryStartString":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1069
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 1068
    add-int v11, v4, v8

    .line 1070
    .local v11, "boundaryContentStart":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v15, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1071
    .local v5, "boundary":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1073
    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1076
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1108
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v11    # "boundaryContentStart":I
    .end local v12    # "boundaryStartString":Ljava/lang/String;
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "contentTypeHeader":Ljava/lang/String;
    .end local v24    # "st":Ljava/util/StringTokenizer;
    :cond_8
    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1109
    invoke-static {v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 1111
    return-void

    .line 1079
    .restart local v14    # "contentType":Ljava/lang/String;
    .restart local v15    # "contentTypeHeader":Ljava/lang/String;
    .restart local v24    # "st":Ljava/util/StringTokenizer;
    :cond_9
    :try_start_4
    const-string v18, ""

    .line 1080
    .local v18, "postLine":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v19, "postLineBuffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x200

    new-array v0, v4, [C

    move-object/from16 v17, v0

    .line 1082
    .local v17, "pbuf":[C
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v21

    .line 1083
    .local v21, "read":I
    :goto_4
    if-gez v21, :cond_a

    .line 1089
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1091
    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1085
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v4, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v18

    .line 1086
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v21

    goto :goto_4

    .line 1094
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1099
    const-string v4, "postData"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1102
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "contentTypeHeader":Ljava/lang/String;
    .end local v17    # "pbuf":[C
    .end local v18    # "postLine":Ljava/lang/String;
    .end local v19    # "postLineBuffer":Ljava/lang/StringBuilder;
    .end local v21    # "read":I
    .end local v24    # "st":Ljava/util/StringTokenizer;
    :cond_c
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->PUT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->method:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    invoke-virtual {v4, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1104
    const-string v4, "content"

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
