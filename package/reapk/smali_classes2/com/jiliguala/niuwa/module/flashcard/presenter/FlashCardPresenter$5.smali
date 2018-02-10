.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->requestFlashCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;",
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
    .line 189
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;)V
    .locals 3
    .param p1, "flashCardTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->enableButton(Z)V

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onNetworkResponse()V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$502(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;I)I

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$600(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate$DataPart;->cards:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->updateVPData(Ljava/util/ArrayList;)V

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate$DataPart;->cards:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$602(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 211
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->enableButton(Z)V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onNetworkError()V

    .line 199
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;->a(Lcom/jiliguala/niuwa/logic/network/json/FlashCardTemplate;)V

    return-void
.end method
