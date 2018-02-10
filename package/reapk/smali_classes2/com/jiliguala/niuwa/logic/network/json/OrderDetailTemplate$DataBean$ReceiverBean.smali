.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;
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
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getWechatid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->wechatid:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->addr:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->name:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->region:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->tel:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setWechatid(Ljava/lang/String;)V
    .locals 0
    .param p1, "wechatid"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->wechatid:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->zip:Ljava/lang/String;

    .line 230
    return-void
.end method
