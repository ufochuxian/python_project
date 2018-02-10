.class Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 74
    .local v0, "currentForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->_id:Ljava/lang/String;

    .line 79
    .local v1, "forum_id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    const-string v3, "rid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v3, "lock"

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->lock:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f01001d

    const v5, 0x7f010013

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
