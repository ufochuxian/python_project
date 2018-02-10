.class public Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemBean"
.end annotation


# instance fields
.field private _id:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private thmb:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getThmb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->thmb:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->price:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setThmb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thmb"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->thmb:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->ttl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->_id:Ljava/lang/String;

    .line 119
    return-void
.end method
