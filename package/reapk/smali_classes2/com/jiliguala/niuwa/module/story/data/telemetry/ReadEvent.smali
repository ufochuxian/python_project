.class public Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent;
.super Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;ILcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V
    .locals 2
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;
    .param p2, "percent"    # I
    .param p3, "type"    # Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;

    .prologue
    .line 15
    const-string v0, "reads.json"

    invoke-static {p1, p2, p3}, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent;->makeParameters(Lcom/jiliguala/niuwa/module/story/data/json/Story;ILcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

.method public static makeParameters(Lcom/jiliguala/niuwa/module/story/data/json/Story;ILcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)Ljava/util/Map;
    .locals 3
    .param p0, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;
    .param p1, "percent"    # I
    .param p2, "type"    # Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/json/Story;",
            "I",
            "Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "percent_complete"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "event_type"

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "story_id"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object v0
.end method
