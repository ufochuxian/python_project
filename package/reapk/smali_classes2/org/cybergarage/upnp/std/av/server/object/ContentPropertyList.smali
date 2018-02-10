.class public Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;
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
.method public getContentProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    return-object v0
.end method

.method public getContentProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_1

    move-object v0, v3

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->size()I

    move-result v2

    .line 37
    .local v2, "nLists":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    if-lt v1, v2, :cond_2

    move-object v0, v3

    .line 43
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->getContentProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 40
    .local v0, "elem":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
