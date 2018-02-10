.class public Lorg/cybergarage/xml/parser/JaxpParser;
.super Lorg/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/cybergarage/xml/Parser;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 8
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 122
    .local v6, "root":Lorg/cybergarage/xml/Node;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 123
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 124
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 125
    .local v5, "inSrc":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 127
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 129
    .local v2, "docElem":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0, v6, v2}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 143
    :cond_0
    return-object v6

    .line 138
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docElem":Lorg/w3c/dom/Element;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "inSrc":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v7, v3}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "parentNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;
    .locals 14
    .param p1, "parentNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "domNode"    # Lorg/w3c/dom/Node;
    .param p3, "rank"    # I

    .prologue
    .line 50
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    .line 54
    .local v9, "domNodeType":I
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "domNodeName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "domNodeValue":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 57
    .local v6, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    .line 61
    .local v0, "arrrsLen":I
    :goto_0
    const/4 v13, 0x3

    if-ne v9, v13, :cond_2

    .line 65
    invoke-virtual {p1, v10}, Lorg/cybergarage/xml/Node;->addValue(Ljava/lang/String;)V

    .line 105
    .end local p1    # "parentNode":Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_1
    return-object p1

    .line 57
    .end local v0    # "arrrsLen":I
    .restart local p1    # "parentNode":Lorg/cybergarage/xml/Node;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    .restart local v0    # "arrrsLen":I
    :cond_2
    const/4 v13, 0x1

    if-ne v9, v13, :cond_0

    .line 72
    new-instance v12, Lorg/cybergarage/xml/Node;

    invoke-direct {v12}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 73
    .local v12, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v12, v8}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v12, v10}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1, v12}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 79
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 80
    .local v3, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v3, :cond_4

    .line 82
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 84
    .local v2, "attrLen":I
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_2
    if-lt v11, v2, :cond_5

    .line 93
    .end local v2    # "attrLen":I
    .end local v11    # "n":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 94
    .local v7, "child":Lorg/w3c/dom/Node;
    if-nez v7, :cond_6

    .line 96
    const-string v13, ""

    invoke-virtual {v12, v13}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    move-object p1, v12

    .line 97
    goto :goto_1

    .line 86
    .end local v7    # "child":Lorg/w3c/dom/Node;
    .restart local v2    # "attrLen":I
    .restart local v11    # "n":I
    :cond_5
    invoke-interface {v3, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 87
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "attrName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "attrValue":Ljava/lang/String;
    invoke-virtual {v12, v4, v5}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 101
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v2    # "attrLen":I
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrValue":Ljava/lang/String;
    .end local v11    # "n":I
    .restart local v7    # "child":Lorg/w3c/dom/Node;
    :cond_6
    add-int/lit8 v13, p3, 0x1

    invoke-virtual {p0, v12, v7, v13}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/Node;

    .line 102
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 103
    if-nez v7, :cond_6

    move-object p1, v12

    .line 105
    goto :goto_1
.end method
