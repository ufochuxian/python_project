.class public Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$WX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WX"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public sing:Ljava/lang/String;

.field public timeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
