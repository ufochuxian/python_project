.class public Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseJumpDict(Lcom/google/gson/JsonObject;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V
    .locals 10
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "template"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .prologue
    .line 88
    const-string v8, "jump_dict"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 89
    .local v3, "jumpDictObj":Lcom/google/gson/JsonObject;
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 90
    .local v4, "jumpSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    new-instance v8, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer$1;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;)V

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 91
    .local v7, "type":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 94
    .local v1, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 95
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 96
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->jumpDict:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v1    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private parseWidgetDict(Lcom/google/gson/JsonObject;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V
    .locals 13
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "template"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .prologue
    .line 62
    const-string v10, "widget_dict"

    invoke-virtual {p1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 63
    .local v7, "widgetDictObj":Lcom/google/gson/JsonObject;
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 64
    .local v8, "widgetSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 67
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 68
    .local v3, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v10, "type"

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "widgetType":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v12, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    invoke-static {v10, v12}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    .line 73
    .local v6, "tap":Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;
    iget-object v10, p2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v6    # "tap":Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;
    :sswitch_0
    const-string v12, "tap"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    const-string v12, "drag"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_2
    const-string v12, "speak"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x2

    goto :goto_1

    .line 76
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v12, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    invoke-static {v10, v12}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .line 77
    .local v0, "drag":Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;
    iget-object v10, p2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0    # "drag":Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;
    :pswitch_2
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v12, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    invoke-static {v10, v12}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .line 81
    .local v5, "speak":Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;
    iget-object v10, p2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 85
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "speak":Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;
    .end local v9    # "widgetType":Ljava/lang/String;
    :cond_1
    return-void

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_0
        0x2f2d34 -> :sswitch_1
        0x688ffd2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;
    .locals 6
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;-><init>()V

    .line 36
    .local v3, "template":Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;
    new-instance v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;-><init>()V

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 39
    .local v1, "obj":Lcom/google/gson/JsonObject;
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 40
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    const-string v5, "_id"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->_id:Ljava/lang/String;

    .line 41
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    const-string v5, "entry"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetEntryId:Ljava/lang/String;

    .line 42
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    .line 43
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->jumpDict:Ljava/util/HashMap;

    .line 44
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->zipUrls:Ljava/util/ArrayList;

    .line 47
    const-string v4, "packages"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 48
    .local v2, "packages":Lcom/google/gson/JsonArray;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 49
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->zipUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;->parseJumpDict(Lcom/google/gson/JsonObject;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V

    .line 56
    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;->parseWidgetDict(Lcom/google/gson/JsonObject;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V

    .line 58
    return-object v3
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    move-result-object v0

    return-object v0
.end method
