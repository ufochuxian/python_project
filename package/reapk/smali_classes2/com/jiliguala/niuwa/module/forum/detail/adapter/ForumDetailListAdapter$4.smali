.class Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090446

    if-ne v1, v2, :cond_2

    .line 398
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isLock()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->lock:Z

    if-eqz v1, :cond_3

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0063

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;IZ)Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    move-result-object v0

    .line 400
    .local v0, "adf":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 406
    .end local v0    # "adf":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    :cond_2
    :goto_0
    return-void

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->invokeRplyLogic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
