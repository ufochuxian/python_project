.class public Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPhone(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Phone;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 192
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/model/Phone;-><init>()V

    .line 193
    .local v0, "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    const-string v1, "beg_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->beg_pos:I

    .line 194
    const-string v1, "end_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->end_pos:I

    .line 195
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->content:Ljava/lang/String;

    .line 196
    const-string v1, "dp_message"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->dp_message:I

    .line 197
    const-string v1, "time_len"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->time_len:I

    .line 198
    return-object v0
.end method

.method private createSentence(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 230
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/model/Sentence;-><init>()V

    .line 231
    .local v0, "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    const-string v1, "beg_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->beg_pos:I

    .line 232
    const-string v1, "end_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->end_pos:I

    .line 233
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->content:Ljava/lang/String;

    .line 234
    const-string v1, "time_len"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->time_len:I

    .line 235
    const-string v1, "index"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->index:I

    .line 236
    const-string v1, "word_count"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->word_count:I

    .line 237
    return-object v0
.end method

.method private createSyll(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Syll;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 203
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/model/Syll;-><init>()V

    .line 204
    .local v0, "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    const-string v1, "beg_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->beg_pos:I

    .line 205
    const-string v1, "end_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->end_pos:I

    .line 206
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->content:Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getSymbol(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->symbol:Ljava/lang/String;

    .line 208
    const-string v1, "dp_message"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->dp_message:I

    .line 209
    const-string v1, "time_len"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->time_len:I

    .line 210
    return-object v0
.end method

.method private createWord(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Word;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 215
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/model/Word;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/model/Word;-><init>()V

    .line 216
    .local v0, "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    const-string v1, "beg_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->beg_pos:I

    .line 217
    const-string v1, "end_pos"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->end_pos:I

    .line 218
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->content:Ljava/lang/String;

    .line 219
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getSymbol(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->symbol:Ljava/lang/String;

    .line 220
    const-string v1, "time_len"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->time_len:I

    .line 221
    const-string v1, "dp_message"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->dp_message:I

    .line 222
    const-string v1, "total_score"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->total_score:F

    .line 223
    const-string v1, "global_index"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->global_index:I

    .line 224
    const-string v1, "index"

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/module/speak/model/Word;->index:I

    .line 225
    return-object v0
.end method

.method private getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 270
    const/4 v0, 0x0

    const-string v1, "content"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExceptInfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 245
    const/4 v0, 0x0

    const-string v1, "except_info"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method private getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 278
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getIsRejected(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 3
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 249
    const/4 v1, 0x0

    const-string v2, "is_rejected"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "isRejected":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 254
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private getLanguage(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 241
    const/4 v0, 0x0

    const-string v1, "lan"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSymbol(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 258
    const/4 v0, 0x0

    const-string v1, "symbol"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseResult(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Result;
    .locals 12
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 87
    const/4 v5, 0x0

    .line 89
    .local v5, "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    const/4 v4, 0x0

    .line 90
    .local v4, "rec_paperPassed":Z
    const/4 v7, 0x0

    .line 91
    .local v7, "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    const/4 v9, 0x0

    .line 92
    .local v9, "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    const/4 v8, 0x0

    .line 93
    .local v8, "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    const/4 v3, 0x0

    .line 97
    .local v3, "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    move-object v6, v5

    .line 98
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .local v6, "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :goto_0
    const/4 v10, 0x1

    if-eq v10, v1, :cond_17

    .line 99
    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object v5, v6

    .line 169
    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move-object v6, v5

    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto :goto_0

    .line 101
    :pswitch_0
    :try_start_1
    const-string v10, "rec_paper"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 102
    const/4 v4, 0x1

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto :goto_1

    .line 103
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_1
    const-string v10, "read_syllable"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 104
    if-nez v4, :cond_2

    .line 105
    new-instance v5, Lcom/jiliguala/niuwa/module/speak/ReadSyllableResult;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/speak/ReadSyllableResult;-><init>()V

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto :goto_1

    .line 107
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_2
    invoke-direct {p0, v6, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->readTotalResult(Lcom/jiliguala/niuwa/module/speak/model/Result;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto :goto_1

    .line 109
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_3
    const-string v10, "read_word"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 110
    if-nez v4, :cond_5

    .line 111
    new-instance v5, Lcom/jiliguala/niuwa/module/speak/ReadWordResult;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/speak/ReadWordResult;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :try_start_2
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getLanguage(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "lan":Ljava/lang/String;
    if-nez v2, :cond_4

    const-string v2, "cn"

    .end local v2    # "lan":Ljava/lang/String;
    :cond_4
    iput-object v2, v5, Lcom/jiliguala/niuwa/module/speak/model/Result;->language:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 171
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object v6, v5

    .line 177
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :goto_4
    return-object v6

    .line 115
    .restart local v1    # "eventType":I
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_5
    :try_start_3
    invoke-direct {p0, v6, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->readTotalResult(Lcom/jiliguala/niuwa/module/speak/model/Result;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto :goto_1

    .line 117
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_6
    const-string v10, "read_sentence"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "read_chapter"

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 119
    :cond_7
    if-nez v4, :cond_9

    .line 120
    new-instance v5, Lcom/jiliguala/niuwa/module/speak/ReadSentenceResult;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/speak/ReadSentenceResult;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :try_start_4
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getLanguage(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "lan":Ljava/lang/String;
    if-nez v2, :cond_8

    const-string v2, "cn"

    .end local v2    # "lan":Ljava/lang/String;
    :cond_8
    iput-object v2, v5, Lcom/jiliguala/niuwa/module/speak/model/Result;->language:Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 173
    .end local v1    # "eventType":I
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v1    # "eventType":I
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_9
    :try_start_5
    invoke-direct {p0, v6, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->readTotalResult(Lcom/jiliguala/niuwa/module/speak/model/Result;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 126
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_a
    const-string v10, "sentence"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 127
    iget-object v10, v6, Lcom/jiliguala/niuwa/module/speak/model/Result;->sentences:Ljava/util/ArrayList;

    if-nez v10, :cond_b

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/jiliguala/niuwa/module/speak/model/Result;->sentences:Ljava/util/ArrayList;

    .line 130
    :cond_b
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->createSentence(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Sentence;

    move-result-object v7

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 131
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_c
    const-string v10, "word"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 132
    if-eqz v7, :cond_d

    iget-object v10, v7, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    if-nez v10, :cond_d

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    .line 135
    :cond_d
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->createWord(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Word;

    move-result-object v9

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 136
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_e
    const-string v10, "syll"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 137
    if-eqz v9, :cond_f

    iget-object v10, v9, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    if-nez v10, :cond_f

    .line 138
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    .line 140
    :cond_f
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->createSyll(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Syll;

    move-result-object v8

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 141
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_10
    const-string v10, "phone"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 142
    if-eqz v8, :cond_11

    iget-object v10, v8, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    if-nez v10, :cond_11

    .line 143
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    .line 145
    :cond_11
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->createPhone(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Phone;

    move-result-object v3

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 150
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :pswitch_1
    const-string v10, "phone"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 151
    iget-object v10, v8, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 152
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_12
    const-string v10, "syll"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 153
    iget-object v10, v9, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 154
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_13
    const-string v10, "word"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 155
    iget-object v10, v7, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 156
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_14
    const-string v10, "sentence"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 157
    iget-object v10, v6, Lcom/jiliguala/niuwa/module/speak/model/Result;->sentences:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_1

    .line 158
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_15
    const-string v10, "read_syllable"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "read_word"

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "read_sentence"

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v10

    if-eqz v10, :cond_0

    :cond_16
    move-object v5, v6

    .line 161
    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_4

    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_17
    move-object v5, v6

    .line 175
    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_3

    .line 173
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_5

    .line 171
    .end local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    .restart local v5    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    goto/16 :goto_2

    .line 99
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readTotalResult(Lcom/jiliguala/niuwa/module/speak/model/Result;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/speak/model/Result;
    .param p2, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 181
    const-string v0, "beg_pos"

    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->beg_pos:I

    .line 182
    const-string v0, "end_pos"

    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->end_pos:I

    .line 183
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->content:Ljava/lang/String;

    .line 184
    const-string v0, "total_score"

    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->total_score:F

    .line 185
    const-string v0, "time_len"

    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->time_len:I

    .line 186
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getExceptInfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->except_info:Ljava/lang/String;

    .line 187
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getIsRejected(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/jiliguala/niuwa/module/speak/model/Result;->is_rejected:Z

    .line 188
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/speak/model/Result;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 83
    :goto_0
    return-object v2

    .line 42
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 45
    .local v4, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    .local v3, "ins":Ljava/io/InputStream;
    const-string v6, "utf-8"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 50
    .local v1, "eventType":I
    :goto_1
    const/4 v6, 0x1

    if-eq v6, v1, :cond_3

    .line 51
    packed-switch v1, :pswitch_data_0

    .line 75
    :cond_1
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 53
    :pswitch_0
    const-string v6, "FinalResult"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    new-instance v2, Lcom/jiliguala/niuwa/module/speak/model/FinalResult;

    .end local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/speak/model/FinalResult;-><init>()V

    .restart local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    goto :goto_2

    .line 56
    :cond_2
    const-string v6, "ret"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 57
    const-string v6, "value"

    invoke-direct {p0, v4, v6}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/jiliguala/niuwa/module/speak/model/FinalResult;->ret:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 77
    .end local v1    # "eventType":I
    .end local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    .end local v3    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_3
    move-object v2, v5

    .line 83
    goto :goto_0

    .line 58
    .restart local v1    # "eventType":I
    .restart local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_4
    :try_start_1
    const-string v6, "total_score"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    const-string v6, "value"

    invoke-direct {p0, v4, v6}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->getFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F

    move-result v6

    iput v6, v2, Lcom/jiliguala/niuwa/module/speak/model/FinalResult;->total_score:F
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 79
    .end local v1    # "eventType":I
    .end local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    .end local v3    # "ins":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "finalResult":Lcom/jiliguala/niuwa/module/speak/model/FinalResult;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_5
    :try_start_2
    const-string v6, "xml_result"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->parseResult(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jiliguala/niuwa/module/speak/model/Result;

    move-result-object v2

    goto :goto_0

    .line 67
    :pswitch_1
    const-string v6, "FinalResult"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
