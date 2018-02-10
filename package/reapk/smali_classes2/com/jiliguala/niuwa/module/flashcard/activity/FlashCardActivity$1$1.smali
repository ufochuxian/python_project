.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$000(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$000(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$100(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Landroid/view/View;)V

    .line 133
    return-void
.end method
