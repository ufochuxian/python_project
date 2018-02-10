.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;
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
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->quantity:I

    return v0
.end method

.method public getThmb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->thmb:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->price:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->quantity:I

    .line 164
    return-void
.end method

.method public setThmb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thmb"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->thmb:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->ttl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->_id:Ljava/lang/String;

    .line 196
    return-void
.end method
