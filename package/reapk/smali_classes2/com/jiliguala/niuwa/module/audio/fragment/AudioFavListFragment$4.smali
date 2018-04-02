.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/u/a/a;


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
    .line 222
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$4;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$4;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$4;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$4;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 231
    return-void
.end method
