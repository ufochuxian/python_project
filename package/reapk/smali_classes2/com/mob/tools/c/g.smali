.class public Lcom/mob/tools/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v6, 0x22

    .line 242
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v4, "[\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "mySepStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 246
    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 247
    .local v3, "value":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 248
    const-string v5, ",\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    instance-of v5, v3, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 252
    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 261
    goto :goto_0

    .line 253
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 254
    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 255
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 256
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 262
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 9
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x22

    .line 215
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v5, "{\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "mySepStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v1, :cond_0

    .line 221
    const-string v5, ",\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 225
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 226
    check-cast v4, Ljava/util/HashMap;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 235
    goto :goto_0

    .line 227
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 228
    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 229
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 230
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 236
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 76
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/c/g;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 80
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 78
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/c/g;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_1

    .line 82
    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_2
    return-object v1
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "iKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    const/4 v3, 0x0

    .line 59
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    .line 60
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 61
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/mob/tools/c/g;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 65
    :cond_2
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 63
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/mob/tools/c/g;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_1

    .line 68
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_4
    return-object v2
.end method

.method private a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 192
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 194
    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/mob/tools/c/g;->b(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 195
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 196
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .local v1, "value":Lorg/json/JSONArray;
    goto :goto_1

    .line 200
    .end local v1    # "value":Lorg/json/JSONArray;
    :cond_2
    return-object v0
.end method

.method private b(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 111
    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/c/g;->b(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 112
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 113
    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/c/g;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONArray;
    goto :goto_1

    .line 114
    .local v2, "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v2}, Lcom/mob/tools/c/g;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-direct {p0, v2}, Lcom/mob/tools/c/g;->c(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mob/tools/c/g;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONArray;
    goto :goto_1

    .line 119
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v2    # "value":Lorg/json/JSONArray;
    :cond_3
    return-object v1
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    instance-of v0, p1, [S

    if-nez v0, :cond_0

    instance-of v0, p1, [I

    if-nez v0, :cond_0

    instance-of v0, p1, [J

    if-nez v0, :cond_0

    instance-of v0, p1, [F

    if-nez v0, :cond_0

    instance-of v0, p1, [D

    if-nez v0, :cond_0

    instance-of v0, p1, [C

    if-nez v0, :cond_0

    instance-of v0, p1, [Z

    if-nez v0, :cond_0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 131
    instance-of v12, p1, [B

    if-eqz v12, :cond_0

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [B

    array-length v12, p1

    :goto_0
    if-ge v11, v12, :cond_2

    aget-byte v0, p1, v11

    .line 134
    .local v0, "item":B
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "item":B
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v12, p1, [S

    if-eqz v12, :cond_3

    .line 138
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    check-cast p1, [S

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [S

    array-length v12, p1

    :goto_1
    if-ge v11, v12, :cond_1

    aget-short v0, p1, v11

    .line 140
    .local v0, "item":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v0    # "item":S
    :cond_1
    move-object v3, v9

    .line 186
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    :cond_2
    :goto_2
    return-object v3

    .line 143
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v12, p1, [I

    if-eqz v12, :cond_5

    .line 144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast p1, [I

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [I

    array-length v12, p1

    :goto_3
    if-ge v11, v12, :cond_4

    aget v0, p1, v11

    .line 146
    .local v0, "item":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v0    # "item":I
    :cond_4
    move-object v3, v7

    .line 148
    goto :goto_2

    .line 149
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v12, p1, [J

    if-eqz v12, :cond_7

    .line 150
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [J

    array-length v12, p1

    :goto_4
    if-ge v11, v12, :cond_6

    aget-wide v0, p1, v11

    .line 152
    .local v0, "item":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v0    # "item":J
    :cond_6
    move-object v3, v8

    .line 154
    goto :goto_2

    .line 155
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v12, p1, [F

    if-eqz v12, :cond_9

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    check-cast p1, [F

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [F

    array-length v12, p1

    :goto_5
    if-ge v11, v12, :cond_8

    aget v0, p1, v11

    .line 158
    .local v0, "item":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v0    # "item":F
    :cond_8
    move-object v3, v6

    .line 160
    goto :goto_2

    .line 161
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v12, p1, [D

    if-eqz v12, :cond_b

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    check-cast p1, [D

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [D

    array-length v12, p1

    :goto_6
    if-ge v11, v12, :cond_a

    aget-wide v0, p1, v11

    .line 164
    .local v0, "item":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v0    # "item":D
    :cond_a
    move-object v3, v5

    .line 166
    goto :goto_2

    .line 167
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v12, p1, [C

    if-eqz v12, :cond_d

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    check-cast p1, [C

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [C

    array-length v12, p1

    :goto_7
    if-ge v11, v12, :cond_c

    aget-char v0, p1, v11

    .line 170
    .local v0, "item":C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .end local v0    # "item":C
    :cond_c
    move-object v3, v4

    .line 172
    goto/16 :goto_2

    .line 173
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v12, p1, [Z

    if-eqz v12, :cond_f

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    check-cast p1, [Z

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [Z

    array-length v12, p1

    :goto_8
    if-ge v11, v12, :cond_e

    aget-boolean v0, p1, v11

    .line 176
    .local v0, "item":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .end local v0    # "item":Z
    :cond_e
    move-object v3, v2

    .line 178
    goto/16 :goto_2

    .line 179
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v12, p1, [Ljava/lang/String;

    if-eqz v12, :cond_11

    .line 180
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    array-length v12, p1

    :goto_9
    if-ge v11, v12, :cond_10

    aget-object v0, p1, v11

    .line 182
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .end local v0    # "item":Ljava/lang/String;
    :cond_10
    move-object v3, v10

    .line 184
    goto/16 :goto_2

    .line 186
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    :cond_0
    move-object/from16 v12, p1

    .line 340
    .end local p1    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v12

    .line 292
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mob/tools/c/g$a;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 293
    check-cast p1, Lcom/mob/tools/c/g$a;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/mob/tools/c/g$a;->a()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 294
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 295
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .local v11, "len":I
    :goto_1
    if-ge v9, v11, :cond_1

    .line 297
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 300
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 301
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 303
    .local v14, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14    # "o":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 307
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 309
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 310
    .local v10, "k":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 311
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 312
    .local v15, "v":Ljava/lang/Object;
    check-cast v10, Ljava/lang/String;

    .end local v10    # "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v15    # "v":Ljava/lang/Object;
    :cond_7
    move-object v12, v13

    .line 315
    goto/16 :goto_0

    .line 317
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 318
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v3, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_4
    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 320
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 321
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_4

    .line 324
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v7, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 326
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 327
    .local v8, "flds":[Ljava/lang/reflect/Field;
    array-length v0, v8

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget-object v6, v8, v17

    .line 328
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 329
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 334
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "flds":[Ljava/lang/reflect/Field;
    :cond_c
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 335
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 336
    .restart local v6    # "f":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 338
    .local v16, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_d
    move-object v12, v13

    .line 340
    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 24
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-nez v21, :cond_0

    const-class v21, Ljava/lang/Number;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_0

    const-class v21, Ljava/lang/Character;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 359
    :cond_0
    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 437
    .end local p1    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p1

    .line 361
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    sget-object v21, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    const-class v21, Ljava/lang/Character;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 362
    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    .line 364
    :cond_4
    sget-object v21, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-class v21, Ljava/lang/Byte;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 365
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 366
    :cond_6
    sget-object v21, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-class v21, Ljava/lang/Short;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 367
    :cond_7
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 368
    :cond_8
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    const-class v21, Ljava/lang/Integer;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 369
    :cond_9
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    .line 370
    :cond_a
    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-class v21, Ljava/lang/Long;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 371
    :cond_b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_0

    .line 372
    :cond_c
    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    const-class v21, Ljava/lang/Float;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 373
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_0

    .line 375
    :cond_e
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_0

    .line 378
    :cond_f
    const-class v21, Lcom/mob/tools/c/g$a;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 380
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "clzName":Ljava/lang/String;
    const-string v21, "valueOf"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    .line 382
    .end local v7    # "clzName":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 383
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 384
    :cond_10
    const-class v21, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-class v21, Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 386
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v13, p1

    .line 387
    check-cast v13, Ljava/util/ArrayList;

    .line 388
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 389
    .local v8, "elementClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 390
    .local v3, "array":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "size":I
    :goto_1
    move/from16 v0, v17

    if-ge v11, v0, :cond_11

    .line 391
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/mob/tools/c/g;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v11, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 390
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_11
    move-object/from16 p1, v3

    .line 393
    goto/16 :goto_0

    .line 394
    .end local v3    # "array":Ljava/lang/Object;
    .end local v8    # "elementClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v17    # "size":I
    :cond_12
    const-class v21, Ljava/util/Collection;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 396
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    .line 397
    .local v12, "list":Ljava/util/Collection;
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-object/from16 p1, v12

    .line 398
    goto/16 :goto_0

    .line 399
    .end local v12    # "list":Ljava/util/Collection;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_13
    const-class v21, Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 402
    .local v14, "map":Ljava/util/Map;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 p1, v14

    .line 403
    goto/16 :goto_0

    .line 405
    .end local v14    # "map":Ljava/util/Map;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_14
    move-object/from16 v6, p2

    .line 406
    .local v6, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v5, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_2
    const-class v21, Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 408
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_2

    :cond_15
    move-object/from16 v15, p1

    .line 412
    check-cast v15, Ljava/util/HashMap;

    .line 413
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v10, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_16
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 415
    .local v16, "name":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_16

    .line 416
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_17
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 417
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 419
    .local v9, "field":Ljava/lang/reflect/Field;
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 421
    :goto_4
    if-eqz v9, :cond_17

    .line 422
    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 429
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "name":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    .line 430
    .local v18, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 431
    .restart local v16    # "name":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 432
    .local v20, "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 433
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    .line 434
    .local v19, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/c/g;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "name":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "value":Ljava/lang/Object;
    :cond_19
    move-object/from16 p1, v18

    .line 437
    goto/16 :goto_0

    .line 420
    .end local v18    # "t":Ljava/lang/Object;, "TT;"
    .restart local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "name":Ljava/lang/String;
    :catch_1
    move-exception v23

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 347
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 349
    .local v1, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/mob/tools/c/g;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    .end local v1    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .line 350
    .restart local v1    # "object":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 351
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 271
    .local v3, "tObject":Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/c/g;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 276
    .end local v3    # "tObject":Ljava/lang/Object;
    :goto_0
    if-nez v3, :cond_0

    .line 277
    const-string v4, ""

    .line 284
    :goto_1
    return-object v4

    .line 272
    .restart local v3    # "tObject":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 278
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "tObject":Ljava/lang/Object;
    :cond_0
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "list"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "json":Ljava/lang/String;
    const-string v4, "{\"list\":"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 284
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/c/g;->b(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    .local v0, "obj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 94
    const-string v2, ""

    .line 101
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 97
    .restart local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 101
    const-string v2, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    :goto_0
    return-object v2

    .line 35
    :cond_0
    :try_start_0
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"fakelist\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/mob/tools/c/g;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 41
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/tools/log/d;->w(Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, p1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 210
    const-string v1, ""

    goto :goto_0
.end method
