.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiverBean"
.end annotation


# instance fields
.field private addr:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private tel:Ljava/lang/String;

.field private wechatid:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getWechatid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->wechatid:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->addr:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->name:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->region:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->tel:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setWechatid(Ljava/lang/String;)V
    .locals 0
    .param p1, "wechatid"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->wechatid:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;->zip:Ljava/lang/String;

    .line 215
    return-void
.end method
