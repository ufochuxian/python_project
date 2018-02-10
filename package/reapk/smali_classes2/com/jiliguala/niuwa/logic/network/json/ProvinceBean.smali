.class public Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->name:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->name:Ljava/lang/String;

    return-object v0
.end method
