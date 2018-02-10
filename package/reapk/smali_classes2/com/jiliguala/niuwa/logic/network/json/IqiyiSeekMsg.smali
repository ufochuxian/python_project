.class public Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;
    }
.end annotation


# instance fields
.field private control:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;

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
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->control:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->control:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->type:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setValue(Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;)V
    .locals 0
    .param p1, "value"    # Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->value:Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;

    .line 53
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->version:Ljava/lang/String;

    .line 37
    return-void
.end method
