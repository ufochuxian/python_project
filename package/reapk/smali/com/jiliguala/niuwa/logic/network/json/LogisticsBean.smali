.class public Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;
    }
.end annotation


# instance fields
.field private ctsX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cts"
    .end annotation
.end field

.field private hint:Ljava/lang/String;

.field private logisticscode:Ljava/lang/String;

.field private shipper:Ljava/lang/String;

.field private shippercode:Ljava/lang/String;

.field private traces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCtsX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->ctsX:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticscode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->logisticscode:Ljava/lang/String;

    return-object v0
.end method

.method public getShipper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->shipper:Ljava/lang/String;

    return-object v0
.end method

.method public getShippercode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->shippercode:Ljava/lang/String;

    return-object v0
.end method

.method public getTraces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->traces:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCtsX(Ljava/lang/String;)V
    .locals 0
    .param p1, "ctsX"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->ctsX:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->hint:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setLogisticscode(Ljava/lang/String;)V
    .locals 0
    .param p1, "logisticscode"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->logisticscode:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setShipper(Ljava/lang/String;)V
    .locals 0
    .param p1, "shipper"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->shipper:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setShippercode(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippercode"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->shippercode:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTraces(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "traces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->traces:Ljava/util/ArrayList;

    .line 76
    return-void
.end method
