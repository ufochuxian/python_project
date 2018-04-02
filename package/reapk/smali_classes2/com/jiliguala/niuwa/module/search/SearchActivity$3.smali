.class Lcom/jiliguala/niuwa/module/search/SearchActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, -0x1

    .line 125
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "_id":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Listen Search"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 131
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "KEY_SEARCH_RESULT"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "key":Ljava/lang/String;
    const-string v5, "KEY_KEY_WORD"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v5, "KEY_FIRST_POSITION"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v5, "KEY_SEARCH_DATA"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getAudios()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 137
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v5, v7, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$600(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    goto :goto_0

    .line 141
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Watch Search"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 143
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 144
    .restart local v4    # "result":Landroid/content/Intent;
    const-string v5, "KEY_SEARCH_RESULT"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "key":Ljava/lang/String;
    const-string v5, "KEY_KEY_WORD"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v5, "KEY_FIRST_POSITION"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v5, "KEY_SEARCH_DATA"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getVideos()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 149
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v5, v7, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$600(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    goto/16 :goto_0

    .line 153
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v3, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "Room"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->boid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Forum Search"

    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->_id:Ljava/lang/String;

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v1, "forumIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    const-class v6, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const-string v5, "rid"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v5, "flr"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v5, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    const v6, 0x7f01001f

    const v7, 0x7f010014

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
