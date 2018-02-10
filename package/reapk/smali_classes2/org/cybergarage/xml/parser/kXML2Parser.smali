.class public Lorg/cybergarage/xml/parser/kXML2Parser;
.super Lorg/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cybergarage/xml/Parser;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 14
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v10, 0x0

    .line 45
    .local v10, "rootNode":Lorg/cybergarage/xml/Node;
    const/4 v3, 0x0

    .line 49
    .local v3, "currNode":Lorg/cybergarage/xml/Node;
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v6, "inReader":Ljava/io/InputStreamReader;
    new-instance v12, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v12}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 51
    .local v12, "xpp":Lorg/kxml2/io/KXmlParser;
    invoke-virtual {v12, v6}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 52
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->getEventType()I

    move-result v5

    .line 53
    .local v5, "eventType":I
    :goto_0
    const/4 v13, 0x1

    if-ne v5, v13, :cond_0

    .line 97
    return-object v10

    .line 55
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 90
    :cond_1
    :goto_1
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->next()I

    move-result v5

    goto :goto_0

    .line 59
    :pswitch_0
    new-instance v8, Lorg/cybergarage/xml/Node;

    invoke-direct {v8}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 60
    .local v8, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "nodeName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->getAttributeCount()I

    move-result v2

    .line 63
    .local v2, "attrsLen":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_2
    if-lt v7, v2, :cond_3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v3, v8}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 72
    :cond_2
    move-object v3, v8

    .line 73
    if-nez v10, :cond_1

    .line 74
    move-object v10, v8

    .line 76
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v12, v7}, Lorg/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {v12, v7}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "attrValue":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "attrsLen":I
    .end local v7    # "n":I
    .end local v8    # "node":Lorg/cybergarage/xml/Node;
    .end local v9    # "nodeName":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v3, v11}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    .end local v5    # "eventType":I
    .end local v6    # "inReader":Ljava/io/InputStreamReader;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "xpp":Lorg/kxml2/io/KXmlParser;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v13, v4}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "eventType":I
    .restart local v6    # "inReader":Ljava/io/InputStreamReader;
    .restart local v12    # "xpp":Lorg/kxml2/io/KXmlParser;
    :pswitch_2
    :try_start_1
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
