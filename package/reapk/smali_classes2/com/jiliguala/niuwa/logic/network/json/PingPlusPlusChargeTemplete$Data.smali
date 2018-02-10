.class public Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;
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
    name = "Data"
.end annotation


# instance fields
.field public amount:Ljava/lang/String;

.field public amount_refunded:Ljava/lang/String;

.field public amount_settle:Ljava/lang/String;

.field public app:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public client_ip:Ljava/lang/String;

.field public created:Ljava/lang/String;

.field public credential:Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Credential;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public extra:Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Extra;

.field public failure_code:Ljava/lang/String;

.field public failure_msg:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public livemode:Z

.field public metadata:Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$MeteData;

.field public object:Ljava/lang/String;

.field public order_no:Ljava/lang/String;

.field public paid:Ljava/lang/String;

.field public refunded:Ljava/lang/String;

.field public refunds:Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Refunds;

.field public subject:Ljava/lang/String;

.field public time_expire:Ljava/lang/String;

.field public time_paid:Ljava/lang/String;

.field public time_settle:Ljava/lang/String;

.field public transaction_no:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
