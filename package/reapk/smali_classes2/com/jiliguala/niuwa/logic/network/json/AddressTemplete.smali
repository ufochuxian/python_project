.class public Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x100da15305b0558aL


# instance fields
.field public data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAddr()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->addr:Ljava/lang/String;

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

.method public hasMobile()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->tel:Ljava/lang/String;

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

.method public hasName()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->name:Ljava/lang/String;

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

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->nonce:Ljava/lang/String;

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

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->region:Ljava/lang/String;

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

.method public hasWechatId()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->wechatid:Ljava/lang/String;

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

.method public hasZip()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->zip:Ljava/lang/String;

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
