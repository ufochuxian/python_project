.class public Lorg/cybergarage/upnp/xml/StateVariableData;
.super Lorg/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private queryListener:Lorg/cybergarage/upnp/control/QueryListener;

.field private queryRes:Lorg/cybergarage/upnp/control/QueryResponse;

.field private value:Ljava/lang/String;

.field private value_ext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value_ext:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryListener:Lorg/cybergarage/upnp/control/QueryListener;

    .line 76
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryRes:Lorg/cybergarage/upnp/control/QueryResponse;

    .line 26
    return-void
.end method


# virtual methods
.method public getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryListener:Lorg/cybergarage/upnp/control/QueryListener;

    return-object v0
.end method

.method public getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryRes:Lorg/cybergarage/upnp/control/QueryResponse;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue_ext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value_ext:Ljava/lang/String;

    return-object v0
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 0
    .param p1, "queryListener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryListener:Lorg/cybergarage/upnp/control/QueryListener;

    .line 70
    return-void
.end method

.method public setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V
    .locals 0
    .param p1, "res"    # Lorg/cybergarage/upnp/control/QueryResponse;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->queryRes:Lorg/cybergarage/upnp/control/QueryResponse;

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setValue_ext(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/StateVariableData;->value_ext:Ljava/lang/String;

    .line 54
    return-void
.end method
