.class public Lcn/sharesdk/wechat/utils/WXMusicObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public musicDataUrl:Ljava/lang/String;

.field public musicLowBandDataUrl:Ljava/lang/String;

.field public musicLowBandUrl:Ljava/lang/String;

.field public musicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    .prologue
    const/16 v2, 0x2800

    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "both musicUrl and musicLowBandUrl are null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 44
    :goto_0
    return v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "checkArgs fail, musicUrl is too long"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 41
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "checkArgs fail, musicLowBandUrl is too long"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string v0, "_wxmusicobject_musicUrl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "_wxmusicobject_musicLowBandUrl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "_wxmusicobject_musicDataUrl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "_wxmusicobject_musicLowBandDataUrl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandDataUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const-string v0, "_wxmusicobject_musicUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 22
    const-string v0, "_wxmusicobject_musicLowBandUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    .line 23
    const-string v0, "_wxmusicobject_musicDataUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 24
    const-string v0, "_wxmusicobject_musicLowBandDataUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicLowBandDataUrl:Ljava/lang/String;

    .line 25
    return-void
.end method
