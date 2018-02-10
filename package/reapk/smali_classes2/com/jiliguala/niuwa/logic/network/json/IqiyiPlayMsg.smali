.class public Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    }
.end annotation


# instance fields
.field private control:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->control:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->control:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->type:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setValue(Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;)V
    .locals 0
    .param p1, "value"    # Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

    .line 52
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->version:Ljava/lang/String;

    .line 44
    return-void
.end method
