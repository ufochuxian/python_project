.class public Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1e71f973c4ff9497L


# instance fields
.field public addr:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public tel:Ljava/lang/String;

.field public wechatid:Ljava/lang/String;

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
