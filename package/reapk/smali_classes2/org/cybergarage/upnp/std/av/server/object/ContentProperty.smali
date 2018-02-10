.class public Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attrList:Lorg/cybergarage/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 31
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 98
    return-void
.end method

.method public addAttribute(Lorg/cybergarage/xml/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v1

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 141
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNAttributes()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributeAt(Lorg/cybergarage/xml/Attribute;I)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;
    .param p2, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/AttributeList;->insertElementAt(Ljava/lang/Object;I)V

    .line 92
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->removeAttribute(Lorg/cybergarage/xml/Attribute;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/cybergarage/xml/Attribute;)Z
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 124
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    .end local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .restart local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 56
    return-void
.end method
