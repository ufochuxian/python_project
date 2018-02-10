.class Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v7

    .line 77
    .local v7, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v8, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Channel Select"

    invoke-virtual {v0, v1, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/g/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, p3, v3, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v3

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 87
    .end local v7    # "item":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .end local v8    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
