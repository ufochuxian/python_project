.class public Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;,
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;,
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;,
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;,
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;,
        Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasDivider()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->divider:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecord()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->record:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShare()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->share:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTop()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->top:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
