.class Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001d
        :pswitch_0
    .end packed-switch
.end method
