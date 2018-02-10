.class Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 106
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 108
    .local v9, "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 110
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0047

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Station Select"

    invoke-virtual {v0, v4, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    :pswitch_0
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->e()I

    move-result v0

    const/16 v4, 0x5001

    if-ne v0, v4, :cond_1

    .line 120
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 121
    .local v7, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    const/4 v0, 0x1

    iput v0, v7, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->downloadStatus:I

    .line 122
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/jiliguala/niuwa/logic/k/c;->b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 123
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v4, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    goto :goto_0

    .line 124
    .end local v7    # "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :cond_1
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->e()I

    move-result v0

    const/16 v4, 0x5002

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "\u6b4c\u66f2\u8fd8\u672a\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v1, "-1"

    .line 142
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u5df2\u4e0b\u8f7d"

    .line 145
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v4, v1, v5, v10, v11}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
