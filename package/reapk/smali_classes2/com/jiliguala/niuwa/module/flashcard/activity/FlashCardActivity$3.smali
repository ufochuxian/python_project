.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;->b:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    iput p2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;->b:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$200(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Z)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;->b:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$300(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V

    .line 179
    return-void
.end method
