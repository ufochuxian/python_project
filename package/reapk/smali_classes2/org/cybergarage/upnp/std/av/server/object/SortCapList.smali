.class public Lorg/cybergarage/upnp/std/av/server/object/SortCapList;
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
.method public getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    return-object v0
.end method

.method public getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->size()I

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
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v2

    .line 40
    .local v2, "scap":Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
