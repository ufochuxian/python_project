.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isSuccessful:Z

.field private final mResultDescription:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

.field private final mResultStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V
    .locals 0
    .param p1, "isSuccessful"    # Z
    .param p2, "resultStr"    # Ljava/lang/String;
    .param p3, "resultDescription"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful:Z

    .line 16
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->mResultStr:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->mResultDescription:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    .line 18
    return-void
.end method


# virtual methods
.method public getResultDescription()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->mResultDescription:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    return-object v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->mResultStr:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->isSuccessful:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
