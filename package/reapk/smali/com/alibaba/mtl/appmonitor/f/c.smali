.class public Lcom/alibaba/mtl/appmonitor/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/mtl/appmonitor/a/h;)V
    .locals 6

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/h;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a/h;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/log/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/g/l;Lcom/alibaba/mtl/appmonitor/a/d;)V
    .locals 8

    .prologue
    const/16 v7, 0x1a2b

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/g/l;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v2

    .line 96
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v3, Lcom/alibaba/mtl/appmonitor/a/h;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/h;

    .line 97
    iput v7, v0, Lcom/alibaba/mtl/appmonitor/a/h;->b:I

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/g/l;->b()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, v0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/g/l;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v4, "meta"

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/f;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "_event_id"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v4, Lcom/alibaba/mtl/appmonitor/c/d;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/c/d;

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/d;->c()Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/c/d;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 110
    const-string v4, "data"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, v0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, v0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    sget-object v3, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/c;->b(Lcom/alibaba/mtl/appmonitor/a/h;)V

    .line 115
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 117
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/l;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/a/d;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/l;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/l;->c()Ljava/lang/Integer;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v9

    .line 46
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    const-class v4, Lcom/alibaba/mtl/appmonitor/a/h;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v10}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/a/h;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/mtl/appmonitor/a/h;->b:I

    .line 48
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/l;->b()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, v2, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/l;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v3, "meta"

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/f;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/c/d;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v11}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/c/d;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v5

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/d;

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/d;->c()Lorg/json/JSONObject;

    move-result-object v12

    .line 57
    invoke-virtual {v3, v12}, Lcom/alibaba/mtl/appmonitor/c/d;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    if-nez v4, :cond_1

    .line 59
    iget-object v12, v0, Lcom/alibaba/mtl/appmonitor/a/d;->e:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v12, v0, Lcom/alibaba/mtl/appmonitor/a/d;->f:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 70
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    goto :goto_1

    .line 62
    :cond_1
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v12, v0, Lcom/alibaba/mtl/appmonitor/a/d;->e:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v12, v0, Lcom/alibaba/mtl/appmonitor/a/d;->f:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 72
    :cond_2
    const-string v0, "data"

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, v2, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/alibaba/mtl/appmonitor/a/f;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    iget-object v9, v2, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    sget-object v10, Lcom/alibaba/mtl/log/model/LogField;->ARG1:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v9, v2, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    sget-object v10, Lcom/alibaba/mtl/log/model/LogField;->ARG2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object v0, v2, Lcom/alibaba/mtl/appmonitor/a/h;->c:Ljava/lang/String;

    .line 80
    iput-object v4, v2, Lcom/alibaba/mtl/appmonitor/a/h;->d:Ljava/lang/String;

    .line 81
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/f/c;->b(Lcom/alibaba/mtl/appmonitor/a/h;)V

    .line 82
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 85
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    goto/16 :goto_0

    .line 87
    :cond_4
    return-void
.end method

.method public static b(Lcom/alibaba/mtl/appmonitor/a/h;)V
    .locals 4

    .prologue
    .line 131
    const-string v0, "UTUtil"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "upload without flowback. args:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/e/a;->a()Lcom/alibaba/mtl/appmonitor/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/e/a;->a(Ljava/util/Map;)V

    .line 133
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 134
    return-void
.end method
