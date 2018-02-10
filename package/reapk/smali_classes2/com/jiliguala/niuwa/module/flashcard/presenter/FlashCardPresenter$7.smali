.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->requestSpeakFlashCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 3
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$700(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$700(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->initSpeachVp(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->enableButton(Z)V

    .line 289
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onNetworkResponse()V

    .line 290
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$502(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;I)I

    .line 291
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$600(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$800(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    .local v0, "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onUpdateSpeakCardModelTemplete(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V

    .line 294
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->updateVPData(Ljava/util/ArrayList;)V

    .line 295
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$602(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 297
    .end local v0    # "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->enableButton(Z)V

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onNetworkError()V

    .line 280
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;->a(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V

    return-void
.end method
