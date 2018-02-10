.class Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;)V
    .locals 2
    .param p1, "videoDataSetsTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;->code:I

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$302(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$802(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$800(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$800(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$900(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$800(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->updateDateSet(Ljava/util/ArrayList;)V

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$1000(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->manualOnHiddenChanged()V

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$600(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$600(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$700(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;->a(Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;)V

    return-void
.end method
