.class public Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "tempFileManager"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 741
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    .line 743
    iput-object p3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    .line 744
    iput-object p4, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 745
    return-void
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
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 964
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 970
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 971
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 973
    iget-object v7, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 974
    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    .line 973
    invoke-static {v7, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 975
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v7, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 1020
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1019
    invoke-static {v7, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 1021
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 978
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 982
    iget-object v7, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 983
    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    .line 982
    invoke-static {v7, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 984
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 987
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 991
    .local v4, "qmi":I
    if-ltz v4, :cond_4

    .line 993
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 994
    iget-object v7, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1006
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 1016
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 997
    :cond_4
    iget-object v7, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-virtual {v7, v6}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1009
    .restart local v2    # "line":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1010
    .local v3, "p":I
    if-ltz v3, :cond_6

    .line 1011
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method

.method private decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
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
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1033
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 1034
    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .line 1035
    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1036
    .local v10, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 1123
    return-void

    .line 1038
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 1041
    const-string v20, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    .line 1040
    invoke-static/range {v18 .. v20}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 1042
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v10    # "mpline":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1119
    .local v8, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 1120
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1119
    invoke-static/range {v18 .. v20}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 1121
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 1044
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v10    # "mpline":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1045
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .local v9, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1047
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_4

    .line 1056
    :cond_3
    if-eqz v10, :cond_0

    .line 1058
    const-string v18, "content-disposition"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1059
    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 1062
    const-string v20, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    .line 1061
    invoke-static/range {v18 .. v20}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 1063
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 1049
    .end local v5    # "contentDisposition":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 1050
    .local v12, "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 1052
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1065
    .end local v12    # "p":I
    .restart local v5    # "contentDisposition":Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "; "

    move-object/from16 v0, v18

    invoke-direct {v15, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    .local v15, "st":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1067
    .local v7, "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_a

    .line 1076
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1077
    .local v14, "pname":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1079
    const-string v17, ""

    .line 1080
    .local v17, "value":Ljava/lang/String;
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_d

    .line 1082
    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1114
    :cond_9
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1069
    .end local v14    # "pname":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 1070
    .local v16, "token":Ljava/lang/String;
    const/16 v18, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 1071
    .restart local v12    # "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_7

    .line 1073
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1084
    .end local v12    # "p":I
    .end local v16    # "token":Ljava/lang/String;
    .restart local v14    # "pname":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1085
    if-eqz v10, :cond_8

    .line 1087
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1088
    .local v6, "d":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_c

    .line 1090
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1091
    goto :goto_3

    .line 1093
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    add-int/lit8 v20, v6, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    .line 1099
    .end local v6    # "d":I
    :cond_d
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v3, v0, :cond_e

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v20, "Error processing request"

    invoke-static/range {v18 .. v20}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 1102
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 1104
    :cond_e
    add-int/lit8 v18, v3, -0x2

    aget v18, v4, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 1105
    .local v11, "offset":I
    add-int/lit8 v18, v3, -0x1

    aget v18, v4, v18

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v13

    .line 1106
    .local v13, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1108
    .restart local v17    # "value":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1111
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1112
    if-eqz v10, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-eqz v18, :cond_f

    goto/16 :goto_4
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
    .line 1238
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1240
    const-string v3, "NanoHttpd.QUERY_STRING"

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    :cond_0
    return-void

    .line 1244
    :cond_1
    const-string v3, "NanoHttpd.QUERY_STRING"

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1248
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1250
    .local v1, "sep":I
    if-ltz v1, :cond_2

    .line 1252
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1255
    :cond_2
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private extractContentLength(Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 940
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 941
    .local v2, "size":J
    const-string v4, "content-length"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 942
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 946
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 952
    :cond_0
    :goto_0
    return-wide v2

    .line 947
    :catch_0
    move-exception v1

    .line 949
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-lt v1, p2, :cond_0

    .line 1140
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1133
    :cond_0
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    .line 1134
    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    .line 1136
    add-int/lit8 v1, v0, 0x4

    goto :goto_1

    .line 1138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 1207
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->createTempFile()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;

    move-result-object v1

    .line 1208
    .local v1, "tempFile":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v1    # "tempFile":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    :goto_0
    return-object v2

    .line 1209
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1213
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 8
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 1184
    const-string v2, ""

    .line 1185
    .local v2, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 1189
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->createTempFile()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;

    move-result-object v4

    .line 1190
    .local v4, "tempFile":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1191
    .local v3, "src":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1192
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    add-int v6, p2, p3

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1193
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1194
    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1200
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    .end local v4    # "tempFile":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    :cond_0
    :goto_0
    return-object v2

    .line 1195
    :catch_0
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1222
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1229
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1224
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

    .line 1222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    .line 1148
    const/4 v3, 0x0

    .line 1149
    .local v3, "matchcount":I
    const/4 v1, -0x1

    .line 1150
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v2, "matchbytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 1171
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 1172
    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_4

    .line 1176
    return-object v4

    .line 1153
    .end local v4    # "ret":[I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_3

    .line 1155
    if-nez v3, :cond_1

    .line 1156
    move v1, v0

    .line 1157
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1158
    array-length v5, p2

    if-ne v3, v5, :cond_2

    .line 1160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    const/4 v3, 0x0

    .line 1162
    const/4 v1, -0x1

    .line 1151
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    sub-int/2addr v0, v3

    .line 1167
    const/4 v3, 0x0

    .line 1168
    const/4 v1, -0x1

    goto :goto_2

    .line 1174
    .restart local v4    # "ret":[I
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public run()V
    .locals 37

    .prologue
    .line 752
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->clear()V

    .line 936
    :goto_0
    return-void

    .line 761
    :cond_0
    const/16 v4, 0x2000

    :try_start_1
    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 762
    .local v17, "buf":[B
    const/16 v31, 0x0

    .line 763
    .local v31, "splitbyte":I
    const/16 v30, 0x0

    .line 765
    .local v30, "rlen":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v8, 0x0

    const/16 v9, 0x2000

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v28

    .line 766
    .local v28, "read":I
    :goto_1
    if-gtz v28, :cond_2

    .line 777
    :cond_1
    new-instance v22, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-direct {v8, v0, v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 778
    .local v22, "hin":Ljava/io/BufferedReader;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v26, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 780
    .local v12, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 781
    .local v11, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 784
    .local v13, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v12, v11}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 785
    const-string v4, "method"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    move-result-object v10

    .line 786
    .local v10, "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    if-nez v10, :cond_3

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error."

    invoke-static {v4, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 789
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    .end local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .end local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "buf":[B
    .end local v22    # "hin":Ljava/io/BufferedReader;
    .end local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "read":I
    .end local v30    # "rlen":I
    .end local v31    # "splitbyte":I
    :catch_0
    move-exception v23

    .line 923
    .local v23, "ioe":Ljava/io/IOException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 924
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v36, "SERVER INTERNAL ERROR: IOException: "

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 923
    invoke-static {v4, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 925
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 926
    :catch_1
    move-exception v4

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0

    .line 768
    .end local v23    # "ioe":Ljava/io/IOException;
    .restart local v17    # "buf":[B
    .restart local v28    # "read":I
    .restart local v30    # "rlen":I
    .restart local v31    # "splitbyte":I
    :cond_2
    add-int v30, v30, v28

    .line 769
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v31

    .line 770
    if-gtz v31, :cond_1

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    move/from16 v0, v30

    rsub-int v8, v0, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v28

    goto/16 :goto_1

    .line 791
    .restart local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .restart local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "hin":Ljava/io/BufferedReader;
    .restart local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v4, "uri"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 792
    .local v35, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->extractContentLength(Ljava/util/Map;)J

    move-result-wide v32

    .line 795
    .local v32, "size":J
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v21

    .line 796
    .local v21, "f":Ljava/io/RandomAccessFile;
    move/from16 v0, v31

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 798
    sub-int v4, v30, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 807
    :cond_4
    move/from16 v0, v31

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 809
    sub-int v4, v30, v31

    add-int/lit8 v4, v4, 0x1

    int-to-long v8, v4

    sub-long v32, v32, v8

    .line 816
    :cond_5
    :goto_2
    const/16 v4, 0x200

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 817
    :cond_6
    :goto_3
    if-ltz v30, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v4, v32, v8

    if-gtz v4, :cond_b

    .line 828
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 829
    .local v6, "fbuf":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 832
    new-instance v14, Ljava/io/FileInputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 833
    .local v14, "bin":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 837
    .local v7, "in":Ljava/io/BufferedReader;
    sget-object v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->POST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    invoke-virtual {v4, v10}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 839
    const-string v19, ""

    .line 840
    .local v19, "contentType":Ljava/lang/String;
    const-string v4, "content-type"

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 842
    .local v20, "contentTypeHeader":Ljava/lang/String;
    const/16 v34, 0x0

    .line 843
    .local v34, "st":Ljava/util/StringTokenizer;
    if-eqz v20, :cond_8

    .line 845
    new-instance v34, Ljava/util/StringTokenizer;

    .end local v34    # "st":Ljava/util/StringTokenizer;
    const-string v4, ",; "

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .restart local v34    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 848
    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 852
    :cond_8
    const-string v4, "multipart/form-data"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 855
    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_c

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 858
    const-string v9, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    .line 857
    invoke-static {v4, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 859
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 929
    .end local v6    # "fbuf":Ljava/nio/ByteBuffer;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .end local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "bin":Ljava/io/InputStream;
    .end local v17    # "buf":[B
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v20    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "f":Ljava/io/RandomAccessFile;
    .end local v22    # "hin":Ljava/io/BufferedReader;
    .end local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "read":I
    .end local v30    # "rlen":I
    .end local v31    # "splitbyte":I
    .end local v32    # "size":J
    .end local v34    # "st":Ljava/util/StringTokenizer;
    .end local v35    # "uri":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0

    .line 810
    .restart local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .restart local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "buf":[B
    .restart local v21    # "f":Ljava/io/RandomAccessFile;
    .restart local v22    # "hin":Ljava/io/BufferedReader;
    .restart local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "read":I
    .restart local v30    # "rlen":I
    .restart local v31    # "splitbyte":I
    .restart local v32    # "size":J
    .restart local v35    # "uri":Ljava/lang/String;
    :cond_9
    if-eqz v31, :cond_a

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v32, v8

    if-nez v4, :cond_5

    .line 812
    :cond_a
    const-wide/16 v32, 0x0

    goto/16 :goto_2

    .line 819
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v8, 0x0

    const/16 v9, 0x200

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v30

    .line 820
    move/from16 v0, v30

    int-to-long v8, v0

    sub-long v32, v32, v8

    .line 821
    if-lez v30, :cond_6

    .line 823
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 933
    .end local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .end local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "buf":[B
    .end local v21    # "f":Ljava/io/RandomAccessFile;
    .end local v22    # "hin":Ljava/io/BufferedReader;
    .end local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "read":I
    .end local v30    # "rlen":I
    .end local v31    # "splitbyte":I
    .end local v32    # "size":J
    .end local v35    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 934
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v8}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->clear()V

    .line 935
    throw v4

    .line 862
    .restart local v6    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "method":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .restart local v11    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "bin":Ljava/io/InputStream;
    .restart local v17    # "buf":[B
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v20    # "contentTypeHeader":Ljava/lang/String;
    .restart local v21    # "f":Ljava/io/RandomAccessFile;
    .restart local v22    # "hin":Ljava/io/BufferedReader;
    .restart local v26    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "read":I
    .restart local v30    # "rlen":I
    .restart local v31    # "splitbyte":I
    .restart local v32    # "size":J
    .restart local v34    # "st":Ljava/util/StringTokenizer;
    .restart local v35    # "uri":Ljava/lang/String;
    :cond_c
    :try_start_5
    const-string v16, "boundary="

    .line 863
    .local v16, "boundaryStartString":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 864
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    .line 863
    add-int v15, v4, v8

    .line 865
    .local v15, "boundaryContentStart":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, "boundary":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 868
    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_d
    move-object/from16 v4, p0

    move-object v8, v12

    move-object v9, v13

    .line 871
    invoke-direct/range {v4 .. v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V

    .line 892
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v15    # "boundaryContentStart":I
    .end local v16    # "boundaryStartString":Ljava/lang/String;
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v20    # "contentTypeHeader":Ljava/lang/String;
    .end local v34    # "st":Ljava/util/StringTokenizer;
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    move-object/from16 v9, v35

    invoke-virtual/range {v8 .. v13}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->serve(Ljava/lang/String;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    move-result-object v27

    .line 894
    .local v27, "r":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    if-nez v27, :cond_13

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 897
    const-string v9, "SERVER INTERNAL ERROR: Serve() returned a null response."

    .line 896
    invoke-static {v4, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 898
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 875
    .end local v27    # "r":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v20    # "contentTypeHeader":Ljava/lang/String;
    .restart local v34    # "st":Ljava/util/StringTokenizer;
    :cond_f
    const-string v25, ""

    .line 876
    .local v25, "postLine":Ljava/lang/String;
    const/16 v4, 0x200

    new-array v0, v4, [C

    move-object/from16 v24, v0

    .line 877
    .local v24, "pbuf":[C
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v28

    .line 878
    :goto_5
    if-ltz v28, :cond_10

    const-string v4, "\r\n"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 883
    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 880
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-static {v0, v8, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 881
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v28

    goto :goto_5

    .line 886
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v20    # "contentTypeHeader":Ljava/lang/String;
    .end local v24    # "pbuf":[C
    .end local v25    # "postLine":Ljava/lang/String;
    .end local v34    # "st":Ljava/util/StringTokenizer;
    :cond_12
    sget-object v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->PUT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    invoke-virtual {v4, v10}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 888
    const-string v4, "content"

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 901
    .restart local v27    # "r":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_13
    const/16 v18, -0x1

    .line 902
    .local v18, "conId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    iget-object v4, v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    if-eqz v4, :cond_14

    .line 904
    const-string v4, "id"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 905
    .local v29, "resId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    iget-object v4, v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentServiceRequestReceived(Ljava/lang/String;)I

    move-result v18

    .line 908
    .end local v29    # "resId":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->setRequestMethod(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->access$0(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;Ljava/io/OutputStream;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    iget-object v4, v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    if-eqz v4, :cond_15

    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_15

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->this$0:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    iget-object v4, v4, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentServiceRequestFinished(I)V

    .line 917
    :cond_15
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->tempFileManager:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    invoke-interface {v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0
.end method
