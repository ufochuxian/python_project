.class public Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;,
        Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;,
        Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$ITEM_TYPE;
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFm:Landroid/support/v4/app/ag;

.field private mSubscription:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lrx/i/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->gotoSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->gotoForumSecondary(Landroid/view/View;)V

    return-void
.end method

.method private gotoForumSecondary(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f01001e

    const v6, 0x7f01001d

    .line 167
    const v5, 0x7f090222

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 168
    .local v0, "boid":I
    const v5, 0x7f09022a

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f090225

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 170
    .local v3, "readOnly":Z
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    move-result-object v1

    .line 171
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setBoid(I)V

    .line 172
    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setBoidTitle(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setReadOnly(Z)V

    .line 174
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 175
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 176
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    const v5, 0x7f090478

    sget-object v6, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v5, v1, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 178
    sget-object v5, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 182
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 183
    return-void

    .line 180
    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private gotoSearch()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->makeForumSearchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 164
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 217
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 214
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "position"    # I

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 133
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;

    .line 134
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;
    instance-of v2, p1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 135
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->desc:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p1

    .line 136
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p1

    .line 137
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    :cond_0
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 139
    .local v1, "url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->thumb:Landroid/widget/ImageView;

    .line 140
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v1, v2, v4}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    move-object v2, p1

    .line 141
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->thumb:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 143
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    const v3, 0x7f090222

    iget v4, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->boid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, p1

    .line 144
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    const v3, 0x7f09022a

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, p1

    .line 145
    check-cast v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    const v3, 0x7f090225

    iget-boolean v4, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->readonly:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mSubscription:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mSubscription:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/i/b;

    move-object v3, p1

    check-cast v3, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;->root:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;Landroid/support/v7/widget/RecyclerView$w;)V

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 158
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    :cond_2
    :goto_1
    return-void

    .line 121
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    :pswitch_0
    instance-of v2, p1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mSubscription:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mSubscription:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/i/b;

    check-cast p1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;->a:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;)V

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_1

    .line 138
    .restart local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?imageMogr2/thumbnail/160x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    packed-switch p2, :pswitch_data_0

    .line 92
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 84
    :pswitch_0
    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b006c

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;-><init>(Landroid/view/View;)V

    .line 86
    .local v1, "searchItemHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;
    goto :goto_0

    .line 88
    .end local v1    # "searchItemHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$a;
    :pswitch_1
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;-><init>(Landroid/view/View;)V

    .local v0, "boardListItemHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter$BoardListItemHolder;
    move-object v1, v0

    .line 90
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSubscription(Lrx/i/b;)V
    .locals 1
    .param p1, "subscription"    # Lrx/i/b;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mSubscription:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;>;"
    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
