.class public abstract Lcom/qiniu/rs/CallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockSuccess(Lcom/qiniu/resumableio/SliceUploadTask$Block;)V
    .locals 0
    .param p1, "blk"    # Lcom/qiniu/resumableio/SliceUploadTask$Block;

    .prologue
    .line 14
    return-void
.end method

.method public abstract onFailure(Lcom/qiniu/rs/CallRet;)V
.end method

.method public abstract onProcess(JJ)V
.end method

.method public abstract onSuccess(Lcom/qiniu/rs/UploadCallRet;)V
.end method
