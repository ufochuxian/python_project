.class public Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3816ad2441286a88L


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasUrl()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;->qr_url:Ljava/lang/String;

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
