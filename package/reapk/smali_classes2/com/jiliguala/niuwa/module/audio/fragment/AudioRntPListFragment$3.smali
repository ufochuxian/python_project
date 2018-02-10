.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

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

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 85
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/b;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/b;-><init>()V

    .line 87
    .local v8, "metaData":Lcom/jiliguala/niuwa/logic/db/a/b;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Landroid/database/Cursor;)V

    .line 89
    const-string v1, "-2"

    .line 90
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u6700\u8fd1\u8bb0\u5f55"

    .line 92
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f0f004c

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Station Select"

    invoke-virtual {v0, v4, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v9, 0x2

    invoke-direct {v4, v1, v5, v9, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->setSelectionPos(I)V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 109
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "_id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/b;
    :cond_1
    return-void
.end method
