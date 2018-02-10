.class public Lorg/cybergarage/upnp/Icon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEPTH:Ljava/lang/String; = "depth"

.field public static final ELEM_NAME:Ljava/lang/String; = "icon"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final MIME_TYPE:Ljava/lang/String; = "mimetype"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private iconNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "icon"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/Icon;->iconNode:Lorg/cybergarage/xml/Node;

    .line 64
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "icon"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Icon;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 54
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Icon;->setMimeType(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Icon;->setWidth(I)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/Icon;->setHeight(I)V

    .line 57
    invoke-virtual {p0, p3}, Lorg/cybergarage/upnp/Icon;->setDepth(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p4}, Lorg/cybergarage/upnp/Icon;->setURL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lorg/cybergarage/upnp/Icon;->iconNode:Lorg/cybergarage/xml/Node;

    .line 48
    return-void
.end method

.method public static isIconNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 72
    const-string v0, "icon"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDepth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "depth"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cybergarage/upnp/Icon;->iconNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDepth(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "depth"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 140
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Icon;->setHeight(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 106
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Icon;->setWidth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
