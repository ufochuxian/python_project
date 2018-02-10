.class public Lorg/cybergarage/upnp/std/av/server/object/search/IdSearchCap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/SearchCap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 4
    .param p1, "searchCri"    # Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .param p2, "conNode"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "searchCriID":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "conID":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isEQ()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "@id"

    return-object v0
.end method
