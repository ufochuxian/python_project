.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;,
        Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;
    }
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private cts:Ljava/lang/String;

.field private item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;

.field private oid:Ljava/lang/String;

.field private receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;

.field private shipping:Ljava/lang/String;

.field private sum:Ljava/lang/String;

.field private total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->cts:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;

    return-object v0
.end method

.method public getShipping()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->shipping:Ljava/lang/String;

    return-object v0
.end method

.method public getSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->sum:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->total:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->channel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->comment:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCts(Ljava/lang/String;)V
    .locals 0
    .param p1, "cts"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->cts:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setItem(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;)V
    .locals 0
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ItemBean;

    .line 62
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->oid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setReceiver(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;)V
    .locals 0
    .param p1, "receiver"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean$ReceiverBean;

    .line 118
    return-void
.end method

.method public setShipping(Ljava/lang/String;)V
    .locals 0
    .param p1, "shipping"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->shipping:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "sum"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->sum:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;->total:Ljava/lang/String;

    .line 86
    return-void
.end method
