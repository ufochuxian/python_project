.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 999
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/l/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1000
    return-void
.end method
