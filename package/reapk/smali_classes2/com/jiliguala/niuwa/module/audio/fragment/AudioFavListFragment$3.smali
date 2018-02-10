.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 184
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 186
    .local v8, "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Landroid/database/Cursor;)V

    .line 188
    const-string v1, "1000"

    .line 189
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u7ea2\u5fc3\u7535\u53f0"

    .line 192
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f0f0043

    .line 196
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Station Select"

    .line 198
    invoke-virtual {v0, v4, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v9, 0x2

    invoke-direct {v4, v1, p3, v9, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 208
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "_id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    :cond_1
    return-void
.end method
