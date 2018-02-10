.class Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

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

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 103
    .local v9, "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    invoke-virtual {v9, v7}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Landroid/database/Cursor;)V

    .line 105
    const-string v1, "1000"

    .line 106
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/g;->b()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u7ea2\u5fc3\u9891\u9053"

    .line 108
    .local v3, "title":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v8, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0f0268

    .line 110
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Channel Select"

    .line 112
    invoke-virtual {v0, v4, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v6, 0x2

    invoke-direct {v4, v1, p3, v6, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 119
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "_id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    :cond_1
    return-void
.end method
