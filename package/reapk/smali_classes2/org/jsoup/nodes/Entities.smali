.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$EscapeMode;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 42
    const-string v5, "&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->f:Ljava/util/regex/Pattern;

    .line 43
    const-string v5, "&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->g:Ljava/util/regex/Pattern;

    .line 125
    const/4 v5, 0x5

    new-array v5, v5, [[Ljava/lang/Object;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "quot"

    aput-object v7, v6, v9

    const/16 v7, 0x22

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v9

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "amp"

    aput-object v7, v6, v9

    const/16 v7, 0x26

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v10

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "apos"

    aput-object v7, v6, v9

    const/16 v7, 0x27

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v11

    const/4 v6, 0x3

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "lt"

    aput-object v8, v7, v9

    const/16 v8, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "gt"

    aput-object v8, v7, v9

    const/16 v8, 0x3e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    sput-object v5, Lorg/jsoup/nodes/Entities;->h:[[Ljava/lang/Object;

    .line 134
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    .line 135
    const-string v5, "entities-base.properties"

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->c:Ljava/util/Map;

    .line 136
    sget-object v5, Lorg/jsoup/nodes/Entities;->c:Ljava/util/Map;

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->d:Ljava/util/Map;

    .line 137
    const-string v5, "entities-full.properties"

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    .line 138
    sget-object v5, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/jsoup/nodes/Entities;->e:Ljava/util/Map;

    .line 140
    sget-object v0, Lorg/jsoup/nodes/Entities;->h:[[Ljava/lang/Object;

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 141
    .local v2, "entity":[Ljava/lang/Object;
    aget-object v5, v2, v10

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 142
    .local v1, "c":Ljava/lang/Character;
    sget-object v6, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    aget-object v5, v2, v9

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "c":Ljava/lang/Character;
    .end local v2    # "entity":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Lorg/jsoup/nodes/Entities$EscapeMode;)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "escapeMode"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .prologue
    const/16 v8, 0x3b

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->getMap()Ljava/util/Map;

    move-result-object v4

    .line 83
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 84
    .local v3, "length":I
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 85
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 88
    .local v2, "codePoint":I
    const/high16 v6, 0x10000

    if-ge v2, v6, :cond_2

    .line 89
    int-to-char v1, v2

    .line 90
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const/16 v6, 0x26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .end local v1    # "c":C
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 105
    goto :goto_0

    .line 92
    .restart local v1    # "c":C
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    :cond_1
    const-string v6, "&#x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    .end local v1    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    .line 98
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    :cond_3
    const-string v6, "&#x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "codePoint":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static a(Ljava/lang/String;Lorg/jsoup/nodes/Document$a;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$a;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$a;->a()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Lorg/jsoup/nodes/Entities$EscapeMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 121
    invoke-static {p0, p1}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "inMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v4, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 169
    .local v0, "character":Ljava/lang/Character;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0    # "character":Ljava/lang/Character;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Character;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/jsoup/nodes/Entities;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lorg/jsoup/nodes/Entities;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/jsoup/nodes/Entities;->e:Ljava/util/Map;

    return-object v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 148
    .local v6, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    :try_start_0
    const-class v8, Lorg/jsoup/nodes/Entities;

    invoke-virtual {v8, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 151
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {v6, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 152
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-virtual {v6}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 158
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 159
    .local v7, "val":Ljava/lang/Character;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 160
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/Character;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/util/MissingResourceException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading entities resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Entities"

    invoke-direct {v8, v9, v10, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    return-object v1
.end method
