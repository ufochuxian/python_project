.class public Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Extra;,
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$WX;,
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Credential;,
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Refunds;,
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$MeteData;,
        Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40c88a8a96021822L


# instance fields
.field public code:I

.field public data:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
