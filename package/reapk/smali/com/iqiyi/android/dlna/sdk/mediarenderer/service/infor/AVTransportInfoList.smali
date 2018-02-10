.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getAVTransportInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfoList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;

    return-object v0
.end method
