.class public Lorg/cybergarage/xml/parser/XercesParser;
.super Lorg/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cybergarage/xml/Parser;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 118
    .local v5, "root":Lorg/cybergarage/xml/Node;
    :try_start_0
    new-instance v4, Lorg/apache/xerces/parsers/DOMParser;

    invoke-direct {v4}, Lorg/apache/xerces/parsers/DOMParser;-><init>()V

    .line 119
    .local v4, "parser":Lorg/apache/xerces/parsers/DOMParser;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 120
    .local v3, "inSrc":Lorg/xml/sax/InputSource;
    invoke-virtual {v4, v3}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 122
    invoke-virtual {v4}, Lorg/apache/xerces/parsers/DOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 123
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 125
    .local v1, "docElem":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v5, v1}, Lorg/cybergarage/xml/parser/XercesParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 139
    :cond_0
    return-object v5

    .line 134
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "docElem":Lorg/w3c/dom/Element;
    .end local v3    # "inSrc":Lorg/xml/sax/InputSource;
    .end local v4    # "parser":Lorg/apache/xerces/parsers/DOMParser;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v6, v2}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "parentNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/xml/parser/XercesParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;
    .locals 14
    .param p1, "parentNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "domNode"    # Lorg/w3c/dom/Node;
    .param p3, "rank"    # I

    .prologue
    .line 49
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    .line 53
    .local v9, "domNodeType":I
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "domNodeName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "domNodeValue":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 56
    .local v6, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    .line 60
    .local v0, "arrrsLen":I
    :goto_0
    const/4 v13, 0x3

    if-ne v9, v13, :cond_2

    .line 62
    invoke-virtual {p1, v10}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 100
    .end local p1    # "parentNode":Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_1
    return-object p1

    .line 56
    .end local v0    # "arrrsLen":I
    .restart local p1    # "parentNode":Lorg/cybergarage/xml/Node;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    .restart local v0    # "arrrsLen":I
    :cond_2
    const/4 v13, 0x1

    if-ne v9, v13, :cond_0

    .line 69
    new-instance v12, Lorg/cybergarage/xml/Node;

    invoke-direct {v12}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 70
    .local v12, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v12, v8}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v12, v10}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p1, v12}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 76
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 77
    .local v3, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 79
    .local v2, "attrLen":I
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_2
    if-lt v11, v2, :cond_4

    .line 88
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 89
    .local v7, "child":Lorg/w3c/dom/Node;
    if-nez v7, :cond_5

    .line 91
    const-string v13, ""

    invoke-virtual {v12, v13}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    move-object p1, v12

    .line 92
    goto :goto_1

    .line 81
    .end local v7    # "child":Lorg/w3c/dom/Node;
    :cond_4
    invoke-interface {v3, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 82
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "attrName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "attrValue":Ljava/lang/String;
    invoke-virtual {v12, v4, v5}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrValue":Ljava/lang/String;
    .restart local v7    # "child":Lorg/w3c/dom/Node;
    :cond_5
    add-int/lit8 v13, p3, 0x1

    invoke-virtual {p0, v12, v7, v13}, Lorg/cybergarage/xml/parser/XercesParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;

    .line 97
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 98
    if-nez v7, :cond_5

    move-object p1, v12

    .line 100
    goto :goto_1
.end method
