.class public Lorg/cybergarage/soap/SOAPResponse;
.super Lorg/cybergarage/http/HTTPResponse;
.source "SourceFile"


# instance fields
.field private rootNode:Lorg/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 37
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 38
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPResponse;)V
    .locals 1
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPResponse;-><init>(Lorg/cybergarage/http/HTTPResponse;)V

    .line 44
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 45
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/soap/SOAPResponse;)V
    .locals 1
    .param p1, "soapRes"    # Lorg/cybergarage/soap/SOAPResponse;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPResponse;-><init>(Lorg/cybergarage/http/HTTPResponse;)V

    .line 51
    invoke-virtual {p1}, Lorg/cybergarage/soap/SOAPResponse;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setEnvelopeNode(Lorg/cybergarage/xml/Node;)V

    .line 52
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/cybergarage/soap/SOAPResponse;->rootNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method private setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/cybergarage/soap/SOAPResponse;->rootNode:Lorg/cybergarage/xml/Node;

    .line 64
    return-void
.end method


# virtual methods
.method public getBodyNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 88
    .local v0, "envNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Body"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnvelopeNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPResponse;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getFaultActor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultActorNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 161
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 162
    const-string v1, ""

    .line 163
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultActorNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 129
    .local v0, "faultNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "faultactor"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultCodeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 145
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 146
    const-string v1, ""

    .line 147
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultCodeNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 113
    .local v0, "faultNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "faultcode"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultDetailNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 137
    .local v0, "faultNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 105
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultStringNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 153
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 154
    const-string v1, ""

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFaultStringNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getFaultNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 121
    .local v0, "faultNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "faultstring"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getMethodResponseNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 96
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 97
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "methodResName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 186
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "------------------------------DUMP SOAPResponse [Start]------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPResponse;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPResponse [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPResponse;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 194
    .local v0, "rootElem":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 196
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPResponse [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 200
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------------------DUMP SOAPResponse [End]-------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Lorg/cybergarage/xml/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 173
    const-string v0, ""

    .line 174
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

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
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

    .line 177
    invoke-virtual {p0, v0}, Lorg/cybergarage/soap/SOAPResponse;->setContent(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setEnvelopeNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/cybergarage/soap/SOAPResponse;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 78
    return-void
.end method
