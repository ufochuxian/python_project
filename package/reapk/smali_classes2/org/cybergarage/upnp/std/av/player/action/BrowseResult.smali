.class public Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private resultNode:Lorg/cybergarage/xml/Node;


# direct methods
.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->setResultNode(Lorg/cybergarage/xml/Node;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getContentNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->resultNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNContentNodes()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->resultNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v0

    return v0
.end method

.method public getResultNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->resultNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public setResultNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/player/action/BrowseResult;->resultNode:Lorg/cybergarage/xml/Node;

    .line 42
    return-void
.end method
