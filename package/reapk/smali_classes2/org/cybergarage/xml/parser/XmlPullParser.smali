.class public Lorg/cybergarage/xml/parser/XmlPullParser;
.super Lorg/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cybergarage/xml/Parser;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 111
    .local v2, "rootNode":Lorg/cybergarage/xml/Node;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 112
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 113
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 114
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0, v3, p1}, Lorg/cybergarage/xml/parser/XmlPullParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    return-object v2

    .line 115
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v4, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v13, 0x0

    .line 41
    .local v13, "rootNode":Lorg/cybergarage/xml/Node;
    const/4 v5, 0x0

    .line 47
    .local v5, "currNode":Lorg/cybergarage/xml/Node;
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 49
    .local v7, "eventType":I
    :goto_0
    const/4 v15, 0x1

    if-ne v7, v15, :cond_0

    .line 102
    return-object v13

    .line 51
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 95
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 55
    :pswitch_0
    new-instance v11, Lorg/cybergarage/xml/Node;

    invoke-direct {v11}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 56
    .local v11, "node":Lorg/cybergarage/xml/Node;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "namePrefix":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "name":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v12, "nodeName":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 61
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 65
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 67
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 68
    .local v4, "attrsLen":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_2
    if-lt v8, v4, :cond_5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v5, v11}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 77
    :cond_4
    move-object v5, v11

    .line 78
    if-nez v13, :cond_1

    .line 79
    move-object v13, v11

    .line 81
    goto :goto_1

    .line 70
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "attrValue":Ljava/lang/String;
    invoke-virtual {v11, v2, v3}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 84
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v4    # "attrsLen":I
    .end local v8    # "n":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "namePrefix":Ljava/lang/String;
    .end local v11    # "node":Lorg/cybergarage/xml/Node;
    .end local v12    # "nodeName":Ljava/lang/StringBuffer;
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "value":Ljava/lang/String;
    if-eqz v14, :cond_1

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {v5, v14}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    .end local v7    # "eventType":I
    .end local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 99
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v15, v6}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 91
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "eventType":I
    :pswitch_2
    :try_start_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
