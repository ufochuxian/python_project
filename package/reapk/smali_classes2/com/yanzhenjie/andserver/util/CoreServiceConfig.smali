.class public Lcom/yanzhenjie/andserver/util/CoreServiceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ourInstance:Lcom/yanzhenjie/andserver/util/CoreServiceConfig;


# instance fields
.field public maxRetryCount:I

.field private retryCount:I

.field private serverPort:I

.field public timeOut:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->timeOut:I

    .line 11
    const/4 v0, 0x3

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->maxRetryCount:I

    .line 13
    const/16 v0, 0x1d20

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->serverPort:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->retryCount:I

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->ourInstance:Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    invoke-direct {v0}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;-><init>()V

    sput-object v0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->ourInstance:Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    .line 23
    :cond_0
    sget-object v0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->ourInstance:Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    return-object v0
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->retryCount:I

    return v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->serverPort:I

    return v0
.end method

.method public resetConfig()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x1d20

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->serverPort:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->retryCount:I

    .line 49
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->retryCount:I

    .line 44
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "serverPort"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->serverPort:I

    .line 36
    return-void
.end method
