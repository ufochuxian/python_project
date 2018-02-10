.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;,
        Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;
    }
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private cts:Ljava/lang/String;

.field private item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;

.field private logistics:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

.field private oid:Ljava/lang/String;

.field private receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;

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
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->cts:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;

    return-object v0
.end method

.method public getLogistics()Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->logistics:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;

    return-object v0
.end method

.method public getShipping()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->shipping:Ljava/lang/String;

    return-object v0
.end method

.method public getSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->sum:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->total:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->channel:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->comment:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setCts(Ljava/lang/String;)V
    .locals 0
    .param p1, "cts"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->cts:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setItem(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;)V
    .locals 0
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;

    .line 69
    return-void
.end method

.method public setLogistics(Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;)V
    .locals 0
    .param p1, "logistics"    # Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->logistics:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    .line 141
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->oid:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setReceiver(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;)V
    .locals 0
    .param p1, "receiver"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->receiver:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;

    .line 125
    return-void
.end method

.method public setShipping(Ljava/lang/String;)V
    .locals 0
    .param p1, "shipping"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->shipping:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "sum"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->sum:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->total:Ljava/lang/String;

    .line 93
    return-void
.end method
