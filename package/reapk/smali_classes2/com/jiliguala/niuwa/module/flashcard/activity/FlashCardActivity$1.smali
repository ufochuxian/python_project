.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->doScaleAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$000(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 125
    return-void
.end method
