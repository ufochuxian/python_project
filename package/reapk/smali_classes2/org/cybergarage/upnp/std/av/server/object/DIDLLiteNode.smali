.class public Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;
.super Lorg/cybergarage/xml/Node;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 32
    const-string v0, "DIDL-Lite"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->setName(Ljava/lang/String;)V

    .line 33
    const-string v0, "xmlns"

    const-string v1, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "xmlns:dc"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "xmlns:upnp"

    const-string v1, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 45
    return-void
.end method

.method public removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->removeNode(Lorg/cybergarage/xml/Node;)Z

    move-result v0

    return v0
.end method
