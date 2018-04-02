.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;)V
    .locals 2
    .param p1, "audioChannelTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;

    .prologue
    .line 1543
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;->data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateAudioChannelData(Ljava/util/ArrayList;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1539
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1530
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate;)V

    return-void
.end method
