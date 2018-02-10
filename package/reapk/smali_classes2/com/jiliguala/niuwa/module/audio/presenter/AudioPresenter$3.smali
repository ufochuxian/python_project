.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioFav()V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;)V
    .locals 3
    .param p1, "audioDataSetsTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    .prologue
    .line 1548
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->code:I

    if-nez v0, :cond_0

    .line 1549
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/k/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1551
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1539
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1544
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1535
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;)V

    return-void
.end method
