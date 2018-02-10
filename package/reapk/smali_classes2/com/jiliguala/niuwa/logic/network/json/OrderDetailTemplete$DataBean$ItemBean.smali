.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemBean"
.end annotation


# instance fields
.field private _id:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private quantity:I

.field private thmb:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->quantity:I

    return v0
.end method

.method public getThmb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->thmb:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->price:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->quantity:I

    .line 149
    return-void
.end method

.method public setThmb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thmb"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->thmb:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->ttl:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;->_id:Ljava/lang/String;

    .line 181
    return-void
.end method
