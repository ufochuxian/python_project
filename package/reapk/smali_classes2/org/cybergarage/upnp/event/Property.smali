.class public Lorg/cybergarage/upnp/event/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string p1, ""

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string p1, ""

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    .line 68
    return-void
.end method
