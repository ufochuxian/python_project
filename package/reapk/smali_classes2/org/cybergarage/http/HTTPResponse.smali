.class public Lorg/cybergarage/http/HTTPResponse;
.super Lorg/cybergarage/http/HTTPPacket;
.source "SourceFile"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPPacket;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    .line 34
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPResponse;->setVersion(Ljava/lang/String;)V

    .line 35
    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lorg/cybergarage/http/HTTPServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPResponse;->setServer(Ljava/lang/String;)V

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPResponse;->setContent(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPResponse;)V
    .locals 1
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPPacket;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    .line 42
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPResponse;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 68
    iget v1, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    if-eqz v1, :cond_0

    .line 69
    iget v1, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    .line 71
    :goto_0
    return v1

    .line 70
    :cond_0
    new-instance v0, Lorg/cybergarage/http/HTTPStatus;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v1

    goto :goto_0
.end method

.method public getStatusLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    invoke-static {v1}, Lorg/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lorg/cybergarage/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------------------DUMP HTTPResponse [Start]------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------------------DUMP HTTPResponse [End]-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/cybergarage/http/HTTPResponse;->statusCode:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
