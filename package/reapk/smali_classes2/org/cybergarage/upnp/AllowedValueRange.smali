.class public Lorg/cybergarage/upnp/AllowedValueRange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "allowedValueRange"

.field private static final MAXIMUM:Ljava/lang/String; = "maximum"

.field private static final MINIMUM:Ljava/lang/String; = "minimum"

.field private static final STEP:Ljava/lang/String; = "step"


# instance fields
.field private allowedValueRangeNode:Lorg/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "allowedValueRange"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lorg/cybergarage/xml/Node;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2
    .param p1, "max"    # Ljava/lang/Number;
    .param p2, "min"    # Ljava/lang/Number;
    .param p3, "step"    # Ljava/lang/Number;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "allowedValueRange"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lorg/cybergarage/xml/Node;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/AllowedValueRange;->setMaximum(Ljava/lang/String;)V

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/AllowedValueRange;->setMinimum(Ljava/lang/String;)V

    .line 66
    :cond_1
    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/AllowedValueRange;->setStep(Ljava/lang/String;)V

    .line 68
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lorg/cybergarage/xml/Node;

    .line 46
    return-void
.end method

.method public static isAllowedValueRangeNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 72
    const-string v0, "allowedValueRange"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getMaximum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaximum(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setMinimum(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
