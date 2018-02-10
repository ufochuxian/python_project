.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->registerMediaPlayService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$500(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onFlashCardPlayComplete(I)V

    .line 171
    return-void
.end method
