.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudios(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;",
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
    .line 502
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;)V
    .locals 2
    .param p1, "audioDataSTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    .prologue
    .line 517
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a;->a(Ljava/util/ArrayList;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onFail()V

    .line 512
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;->a(Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;)V

    return-void
.end method
