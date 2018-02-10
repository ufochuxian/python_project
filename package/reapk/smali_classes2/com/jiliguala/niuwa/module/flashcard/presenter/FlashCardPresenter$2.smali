.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;


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
    .line 158
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onPrepared()V

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$500(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->onDoScaleAnimation(I)V

    .line 163
    return-void
.end method
