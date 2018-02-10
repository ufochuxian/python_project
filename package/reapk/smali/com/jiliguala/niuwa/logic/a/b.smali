.class public Lcom/jiliguala/niuwa/logic/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/jiliguala/niuwa/logic/a/b;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/logic/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/a/b;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/jiliguala/niuwa/logic/a/b;->b:Lcom/jiliguala/niuwa/logic/a/b;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/logic/a/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/a/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/a/b;->b:Lcom/jiliguala/niuwa/logic/a/b;

    .line 37
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/a/b;->b:Lcom/jiliguala/niuwa/logic/a/b;

    return-object v0
.end method

.method private b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v4, "property":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "property":Lorg/json/JSONObject;
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/a/b;->c:Landroid/content/Context;

    .line 42
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->f:Z

    if-eqz v2, :cond_0

    const-string v0, "00b0dce12f2be82171e976108b7f3677"

    .line 43
    .local v0, "appkey":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/c;

    .line 49
    :goto_1
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v2

    sget-boolean v3, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(Z)Lcom/a/a/c;

    .line 50
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/a/a/c;->e(Z)Lcom/a/a/c;

    .line 51
    return-void

    .line 42
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    const-string v0, "76382ab7cc9f61be703afadc802bf276"

    goto :goto_0

    .line 47
    .restart local v0    # "appkey":Ljava/lang/String;
    .restart local v1    # "uid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c;->e(Ljava/lang/String;)Lcom/a/a/c;

    .line 57
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 131
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 132
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/h;->b(Ljava/lang/String;D)Lcom/a/a/h;

    .line 133
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 125
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 126
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;F)Lcom/a/a/h;

    .line 127
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 128
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 114
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;I)Lcom/a/a/h;

    .line 115
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;IDLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "price"    # D
    .param p5, "revenueType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ID",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p6, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0}, Lcom/a/a/j;-><init>()V

    .line 157
    .local v0, "revenue":Lcom/a/a/j;
    invoke-virtual {v0, p1}, Lcom/a/a/j;->a(Ljava/lang/String;)Lcom/a/a/j;

    move-result-object v1

    .line 158
    invoke-virtual {v1, p2}, Lcom/a/a/j;->a(I)Lcom/a/a/j;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p3, p4}, Lcom/a/a/j;->a(D)Lcom/a/a/j;

    move-result-object v1

    .line 160
    invoke-virtual {v1, p5}, Lcom/a/a/j;->b(Ljava/lang/String;)Lcom/a/a/j;

    move-result-object v1

    .line 161
    invoke-direct {p0, p6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/j;->b(Lorg/json/JSONObject;)Lcom/a/a/j;

    .line 162
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/j;)V

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 119
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 120
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/h;->b(Ljava/lang/String;J)Lcom/a/a/h;

    .line 121
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 102
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;

    .line 103
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 96
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    .line 97
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 107
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 108
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;Z)Lcom/a/a/h;

    .line 109
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 110
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    .line 144
    .local v2, "identify":Lcom/a/a/h;
    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 146
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v3, v4}, Lcom/a/a/h;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    goto :goto_0

    .line 152
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 153
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    .line 138
    .local v0, "identify":Lcom/a/a/h;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/a/a/h;->c(Ljava/lang/String;I)Lcom/a/a/h;

    .line 139
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 140
    return-void
.end method
