.class public Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final DELIMITER:Ljava/lang/String; = "|"


# instance fields
.field private final mBody:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTime:J

.field private final mVersion:I


# direct methods
.method private constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "time"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mVersion:I

    .line 47
    iput-wide p2, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mTime:J

    .line 48
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mPath:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mBody:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mVersion:I

    .line 37
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mTime:J

    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mPath:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->encodeParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mBody:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private encodeParameters(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 154
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Encoding not supported: UTF-8"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    .locals 11
    .param p0, "eventString"    # Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 54
    const-string v8, "|"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "parts":[Ljava/lang/String;
    array-length v8, v7

    if-nez v8, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    .local v1, "version":I
    if-ne v1, v9, :cond_0

    .line 66
    array-length v8, v7

    if-ne v8, v10, :cond_0

    .line 69
    aget-object v0, v7, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 70
    .local v2, "time":J
    const/4 v0, 0x2

    aget-object v4, v7, v0

    .line 71
    .local v4, "path":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v5, v7, v0

    .line 73
    .local v5, "body":Ljava/lang/String;
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "version":I
    .end local v2    # "time":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "body":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 62
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static stringify(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    .line 79
    .local v0, "event":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->stringify()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "eventString":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Event string contains a newline."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    .end local v0    # "event":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    .end local v1    # "eventString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unstringify(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "eventString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "eventStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 95
    .local v3, "string":Ljava/lang/String;
    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->fromString(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    move-result-object v0

    .line 96
    .local v0, "ev":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "ev":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mTime:J

    return-wide v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->mVersion:I

    return v0
.end method

.method public stringify()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
