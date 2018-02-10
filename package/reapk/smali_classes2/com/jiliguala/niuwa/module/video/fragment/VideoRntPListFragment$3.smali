.class Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

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

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 87
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 89
    .local v9, "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    invoke-virtual {v9, v7}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Landroid/database/Cursor;)V

    .line 91
    const-string v1, "-2"

    .line 92
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u6700\u8fd1\u8bb0\u5f55"

    .line 95
    .local v3, "title":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v8, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0f026b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Channel Select"

    invoke-virtual {v0, v4, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v6, 0x2

    invoke-direct {v4, v1, p3, v6, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->setSelectionPos(I)V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment$3;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 108
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "_id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    :cond_1
    return-void
.end method
