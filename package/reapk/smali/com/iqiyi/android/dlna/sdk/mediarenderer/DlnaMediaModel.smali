.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private album:Ljava/lang/String;

.field private albumiconuri:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private objectclass:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->uri:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->title:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->artist:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->album:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->objectclass:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->objectclass:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .end local p1    # "album":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->album:Ljava/lang/String;

    .line 36
    return-void

    .line 35
    .restart local p1    # "album":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setAlbumUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumiconuri"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .end local p1    # "albumiconuri":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    .line 71
    return-void

    .line 70
    .restart local p1    # "albumiconuri":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .end local p1    # "artist":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->artist:Ljava/lang/String;

    .line 31
    return-void

    .line 30
    .restart local p1    # "artist":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setObjectClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectClass"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .end local p1    # "objectClass":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->objectclass:Ljava/lang/String;

    .line 46
    return-void

    .line 45
    .restart local p1    # "objectClass":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .end local p1    # "title":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->title:Ljava/lang/String;

    .line 21
    return-void

    .line 20
    .restart local p1    # "title":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .end local p1    # "uri":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/DlnaMediaModel;->uri:Ljava/lang/String;

    .line 56
    return-void

    .line 55
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
