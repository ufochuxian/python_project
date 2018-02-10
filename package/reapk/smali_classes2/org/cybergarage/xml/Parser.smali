.class public abstract Lorg/cybergarage/xml/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    .locals 4
    .param p1, "descriptionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v1, "fileIn":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 111
    .local v2, "root":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object v2

    .line 114
    .end local v1    # "fileIn":Ljava/io/InputStream;
    .end local v2    # "root":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v3, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public abstract parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation
.end method

.method public parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 4
    .param p1, "descr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 129
    .local v0, "decrIn":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .local v2, "root":Lorg/cybergarage/xml/Node;
    return-object v2

    .line 131
    .end local v0    # "decrIn":Ljava/io/InputStream;
    .end local v2    # "root":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v3, v1}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 14
    .param p1, "locationURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 58
    .local v5, "port":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 59
    const/16 v5, 0x50

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "uri":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 65
    .local v9, "urlCon":Ljava/net/HttpURLConnection;
    const/16 v11, 0x1388

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    const/16 v11, 0x2710

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const-string v11, "GET"

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    const-string v11, "Content-Length"

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v2, :cond_1

    .line 70
    const-string v11, "HOST"

    invoke-virtual {v9, v11, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 74
    .local v10, "urlIn":Ljava/io/InputStream;
    invoke-virtual {p0, v10}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 76
    .local v6, "rootElem":Lorg/cybergarage/xml/Node;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v6    # "rootElem":Lorg/cybergarage/xml/Node;
    .end local v9    # "urlCon":Ljava/net/HttpURLConnection;
    .end local v10    # "urlIn":Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 81
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    new-instance v3, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v3}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 88
    .local v3, "httpReq":Lorg/cybergarage/http/HTTPRequest;
    const-string v11, "GET"

    invoke-virtual {v3, v11}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3, v2, v5}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v4

    .line 93
    .local v4, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 94
    new-instance v11, Lorg/cybergarage/xml/ParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "HTTP comunication failed: no answer from peer.Unable to retrive resoure -> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    invoke-direct {v11, v12}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->getContent()[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    .line 97
    .local v0, "content":Ljava/lang/String;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v7, "strBuf":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v7}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    goto :goto_0
.end method
