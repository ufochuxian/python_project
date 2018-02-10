.class Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateLoadOldSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ForumSets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V
    .locals 3
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 136
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$102(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;Z)Z

    .line 139
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void

    .line 139
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$102(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;Z)Z

    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V

    return-void
.end method
