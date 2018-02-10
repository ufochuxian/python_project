.class public Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x725c0ac7b8b7705eL


# instance fields
.field public order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasItem()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->item:Lcom/jiliguala/niuwa/logic/network/json/Item;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrder()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrderId()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->oid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPayMoney()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->total:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiver()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->receiver:Lcom/jiliguala/niuwa/logic/network/json/Receiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShipping()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->shipping:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSum()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->sum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
