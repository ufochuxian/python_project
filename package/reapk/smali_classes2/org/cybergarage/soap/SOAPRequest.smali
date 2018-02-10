.class public Lorg/cybergarage/soap/SOAPRequest;
.super Lorg/cybergarage/http/HTTPRequest;
.source "SourceFile"


# static fields
.field private static final SOAPACTION:Ljava/lang/String; = "SOAPACTION"


# instance fields
.field private rootNode:Lorg/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 43
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPRequest;->setContentType(Ljava/lang/String;)V

    .line 44
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPRequest;->setMethod(Ljava/lang/String;)V

    .line 45
    const-string v0, "User-Agent"

    const-string v1, "IQIYIDLNA/iqiyidlna/1.0"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/soap/SOAPRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lorg/cybergarage/soap/SOAPRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 51
    return-void
.end method

.method private declared-synchronized getRootNode()Lorg/cybergarage/xml/Node;
    .locals 5

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v4

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getContent()[B

    move-result-object v0

    .line 138
    .local v0, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .local v1, "contentIn":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v3

    .line 140
    .local v3, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v4

    iput-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v0    # "content":[B
    .end local v1    # "contentIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "parser":Lorg/cybergarage/xml/Parser;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Lorg/cybergarage/xml/ParserException;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 132
    .end local v2    # "e":Lorg/cybergarage/xml/ParserException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/cybergarage/soap/SOAPRequest;->rootNode:Lorg/cybergarage/xml/Node;

    .line 128
    return-void
.end method


# virtual methods
.method public getBodyNode()Lorg/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 166
    .local v0, "envNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v1

    .line 168
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnvelopeNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getSOAPAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPRequest;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSOAPAction(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v3, "SOAPACTION"

    invoke-virtual {p0, v3}, Lorg/cybergarage/soap/SOAPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "headerValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getSOAPAction()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "soapAction":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;IZZ)Lorg/cybergarage/soap/SOAPResponse;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isNeedReply"    # Z
    .param p4, "isKeepAlive"    # Z

    .prologue
    .line 88
    if-nez p3, :cond_2

    .line 90
    invoke-virtual {p0, p1, p2, p4}, Lorg/cybergarage/soap/SOAPRequest;->justPost(Ljava/lang/String;IZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    const/4 v5, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v5

    .line 94
    :cond_1
    new-instance v5, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v5}, Lorg/cybergarage/soap/SOAPResponse;-><init>()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lorg/cybergarage/soap/SOAPRequest;->post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v3

    .line 99
    .local v3, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    new-instance v5, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v5, v3}, Lorg/cybergarage/soap/SOAPResponse;-><init>(Lorg/cybergarage/http/HTTPResponse;)V

    .line 101
    .local v5, "soapRes":Lorg/cybergarage/soap/SOAPResponse;
    invoke-virtual {v5}, Lorg/cybergarage/soap/SOAPResponse;->getContent()[B

    move-result-object v1

    .line 102
    .local v1, "content":[B
    array-length v7, v1

    if-lez v7, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 108
    .local v0, "byteIn":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v6

    .line 109
    .local v6, "xmlParser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v6, v0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 110
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v5, v4}, Lorg/cybergarage/soap/SOAPResponse;->setEnvelopeNode(Lorg/cybergarage/xml/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "byteIn":Ljava/io/ByteArrayInputStream;
    .end local v4    # "rootNode":Lorg/cybergarage/xml/Node;
    .end local v6    # "xmlParser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 193
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "------------------------------DUMP SOAPRequest [Start]------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPRequest [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 202
    .local v0, "rootElem":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 204
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPRequest [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPRequest [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Lorg/cybergarage/xml/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 180
    const-string v0, ""

    .line 181
    .local v0, "conStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/soap/SOAPRequest;->setContent(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setEnvelopeNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/cybergarage/soap/SOAPRequest;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 156
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/soap/SOAPRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
