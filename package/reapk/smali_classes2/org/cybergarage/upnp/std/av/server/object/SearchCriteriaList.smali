.class public Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;)Z
    .locals 16
    .param p1, "cnode"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .param p2, "searchCapList"    # Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    .prologue
    .line 53
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->size()I

    move-result v14

    .line 56
    .local v14, "searchCriCnt":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v14, :cond_0

    .line 76
    new-instance v10, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    invoke-direct {v10}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;-><init>()V

    .line 77
    .local v10, "orSearchCriList":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v14, :cond_3

    .line 97
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->size()I

    move-result v9

    .line 98
    .local v9, "orSearchCriCnt":I
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v9, :cond_6

    .line 105
    const/4 v15, 0x0

    :goto_3
    return v15

    .line 58
    .end local v9    # "orSearchCriCnt":I
    .end local v10    # "orSearchCriList":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v13

    .line 59
    .local v13, "searchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "property":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 62
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    .line 56
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v12

    .line 66
    .local v12, "searchCap":Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    if-nez v12, :cond_2

    .line 68
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_4

    .line 71
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCap;->compare(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    move-result v1

    .line 72
    .local v1, "cmpResult":Z
    invoke-virtual {v13, v1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_4

    .line 79
    .end local v1    # "cmpResult":Z
    .end local v11    # "property":Ljava/lang/String;
    .end local v12    # "searchCap":Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .end local v13    # "searchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .restart local v10    # "orSearchCriList":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v3

    .line 80
    .local v3, "currSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    add-int/lit8 v15, v14, -0x1

    if-ge v5, v15, :cond_5

    .line 82
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isLogicalAND()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 84
    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v7

    .line 85
    .local v7, "nextSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v2

    .line 86
    .local v2, "currResult":Z
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v6

    .line 87
    .local v6, "nextResult":Z
    and-int v15, v2, v6

    if-eqz v15, :cond_4

    const/4 v4, 0x1

    .line 88
    .local v4, "logicalAND":Z
    :goto_5
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    .line 77
    .end local v2    # "currResult":Z
    .end local v4    # "logicalAND":Z
    .end local v6    # "nextResult":Z
    .end local v7    # "nextSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    .restart local v2    # "currResult":Z
    .restart local v6    # "nextResult":Z
    .restart local v7    # "nextSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 92
    .end local v2    # "currResult":Z
    .end local v6    # "nextResult":Z
    .end local v7    # "nextSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_5
    new-instance v8, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    invoke-direct {v8, v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;-><init>(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;)V

    .line 93
    .local v8, "orSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v10, v8}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 100
    .end local v3    # "currSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .end local v8    # "orSearchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .restart local v9    # "orSearchCriCnt":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v13

    .line 101
    .restart local v13    # "searchCri":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 102
    const/4 v15, 0x1

    goto :goto_3

    .line 98
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    return-object v0
.end method

.method public getSearchCriteria(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_1

    move-object v2, v3

    .line 43
    :cond_0
    :goto_0
    return-object v2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->size()I

    move-result v1

    .line 37
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v2, v3

    .line 43
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v2

    .line 40
    .local v2, "node":Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
