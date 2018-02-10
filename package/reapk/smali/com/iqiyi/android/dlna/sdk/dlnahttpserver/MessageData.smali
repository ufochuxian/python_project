.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:B

.field private time:J

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->uuid:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->time:J

    .line 24
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->data:B

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JB)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "data"    # B

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->uuid:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->time:J

    .line 31
    iput-byte p4, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->data:B

    .line 32
    return-void
.end method


# virtual methods
.method public getData()B
    .locals 1

    .prologue
    .line 56
    iget-byte v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->data:B

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->time:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setData(B)V
    .locals 0
    .param p1, "data"    # B

    .prologue
    .line 61
    iput-byte p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->data:B

    .line 62
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->time:J

    .line 52
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->uuid:Ljava/lang/String;

    .line 42
    return-void
.end method
