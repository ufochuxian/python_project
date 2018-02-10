.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->requestFlashCardChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;)V
    .locals 4
    .param p1, "flashCardChannelData"    # Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;->data:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$602(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 459
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 460
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    if-eqz v1, :cond_0

    .line 461
    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$600(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->refreshList(Ljava/util/ArrayList;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 444
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;->a(Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData;)V

    return-void
.end method
