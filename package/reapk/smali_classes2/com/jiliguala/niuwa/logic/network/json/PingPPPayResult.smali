.class public Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPaid()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v1, "paid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPaying()Z
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v1, "paying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
