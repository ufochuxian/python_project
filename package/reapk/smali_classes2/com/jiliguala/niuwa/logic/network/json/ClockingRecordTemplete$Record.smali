.class public Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public gift:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasGift()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->gift:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "done"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnAvailable()Z
    .locals 2

    .prologue
    .line 91
    const-string v0, "unavailable"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnDone()Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "undone"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
