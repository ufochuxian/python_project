.class public Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private descriptionFileXml:Ljava/lang/String;

.field private fileMd5:Ljava/lang/String;

.field private serverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->uuid:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->fileMd5:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->serverMap:Ljava/util/Map;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->descriptionFileXml:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->uuid:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->fileMd5:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->serverMap:Ljava/util/Map;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->descriptionFileXml:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getDescriptionFileXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->descriptionFileXml:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->serverMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setDescriptionFileXml(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionFileXml"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->descriptionFileXml:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileMd5"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->fileMd5:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setServerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "serverMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->serverMap:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->uuid:Ljava/lang/String;

    .line 45
    return-void
.end method
