.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->downloadCheckPermission(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "shareObj"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 237
    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->extra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 238
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    .end local p1    # "shareObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 240
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5$1;

    invoke-direct {v2, p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/b/a;->a()Lcom/jiliguala/niuwa/logic/u/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/u/b/a;->d()V

    .line 250
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$5;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 251
    return-void
.end method
