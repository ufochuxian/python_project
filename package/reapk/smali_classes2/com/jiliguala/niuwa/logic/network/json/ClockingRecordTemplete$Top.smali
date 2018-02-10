.class public Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Top"
.end annotation


# instance fields
.field public hint:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public rawstatus:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasRegister()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "repeat"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->rawstatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerFail()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "fail"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->rawstatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerSuccess()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "success"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->rawstatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
