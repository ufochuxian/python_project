.class public Lcom/jiliguala/niuwa/module/speak/util/ResultFormatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDetails_CN(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Sentence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "sentences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/module/speak/model/Sentence;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    :goto_0
    return-object v5

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;

    .line 90
    .local v2, "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/speak/model/Word;

    .line 95
    .local v4, "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\u8bcd\u8bed["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->content:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->symbol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u65f6\u957f\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->time_len:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v7, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 100
    iget-object v7, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;

    .line 101
    .local v3, "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    const-string v8, "\u566a\u97f3"

    iget-object v9, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->content:Ljava/lang/String;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "\u9759\u97f3"

    iget-object v9, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->content:Ljava/lang/String;

    .line 102
    invoke-static {v9}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\u2514\u97f3\u8282["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->content:Ljava/lang/String;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->symbol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u65f6\u957f\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->time_len:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v8, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 111
    iget-object v8, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;

    .line 112
    .local v1, "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\u2514\u97f3\u7d20["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;->content:Ljava/lang/String;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] \u65f6\u957f\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;->time_len:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u6717\u8bfb\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;->dp_message:I

    .line 113
    invoke-static {v11}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getDpMessageInfo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 117
    .end local v1    # "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    .end local v3    # "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    :cond_4
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 121
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    .end local v4    # "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static formatDetails_EN(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Sentence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "sentences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/module/speak/model/Sentence;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    :goto_0
    return-object v5

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;

    .line 36
    .local v2, "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    const-string v6, "\u566a\u97f3"

    iget-object v7, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->content:Ljava/lang/String;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "\u9759\u97f3"

    iget-object v7, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->content:Ljava/lang/String;

    .line 37
    invoke-static {v7}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 44
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/speak/model/Sentence;->words:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/speak/model/Word;

    .line 45
    .local v4, "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    const-string v7, "\u566a\u97f3"

    iget-object v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->content:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "\u9759\u97f3"

    iget-object v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->content:Ljava/lang/String;

    .line 46
    invoke-static {v8}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\u5355\u8bcd["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->content:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6717\u8bfb\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->dp_message:I

    .line 51
    invoke-static {v9}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getDpMessageInfo(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u5f97\u5206\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->total_score:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v7, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    .line 54
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 58
    :cond_3
    iget-object v7, v4, Lcom/jiliguala/niuwa/module/speak/model/Word;->sylls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;

    .line 59
    .local v3, "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\u2514\u97f3\u8282["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/model/Syll;->getStdSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v8, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 64
    iget-object v8, v3, Lcom/jiliguala/niuwa/module/speak/model/Syll;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;

    .line 65
    .local v1, "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\u2514\u97f3\u7d20["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/model/Phone;->getStdSymbol()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u6717\u8bfb\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;->dp_message:I

    .line 66
    invoke-static {v11}, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->getDpMessageInfo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 70
    .end local v1    # "phone":Lcom/jiliguala/niuwa/module/speak/model/Phone;
    .end local v3    # "syll":Lcom/jiliguala/niuwa/module/speak/model/Syll;
    :cond_5
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 74
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/module/speak/model/Sentence;
    .end local v4    # "word":Lcom/jiliguala/niuwa/module/speak/model/Word;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method
