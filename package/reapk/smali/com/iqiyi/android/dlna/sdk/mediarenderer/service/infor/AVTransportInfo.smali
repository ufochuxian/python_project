.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instanceID:I

.field private uri:Ljava/lang/String;

.field private uriMetaData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setInstanceID(I)V

    .line 27
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURI(Ljava/lang/String;)V

    .line 28
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->setURIMetaData(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getInstanceID()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->instanceID:I

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->uriMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public setInstanceID(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->instanceID:I

    .line 45
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->uri:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setURIMetaData(Ljava/lang/String;)V
    .locals 0
    .param p1, "uriMetaData"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/AVTransportInfo;->uriMetaData:Ljava/lang/String;

    .line 77
    return-void
.end method
