.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 120
    :sswitch_1
    const v0, 0x7f09054c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 121
    .local v8, "downloadStatus":Ljava/lang/Object;
    const v0, 0x7f09054b

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 122
    .local v7, "downloadObj":Ljava/lang/Object;
    const v0, 0x7f09054a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 124
    .local v6, "downloadIndex":Ljava/lang/Object;
    instance-of v0, v8, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v9, v7

    .line 126
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 128
    .local v9, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "\u6b4c\u66f2\u8fd8\u672a\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v1, "1000"

    .line 147
    .local v1, "channel":Ljava/lang/String;
    iget-object v2, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 148
    .local v2, "_id":Ljava/lang/String;
    const-string v3, "\u7ea2\u5fc3\u7535\u53f0"

    .line 150
    .local v3, "title":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v12, 0x7f0f0043

    .line 152
    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v4, "Station Select"

    .line 154
    invoke-virtual {v0, v4, v10}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v11

    .line 158
    .local v11, "transaction":Landroid/support/v4/app/an;
    const v0, 0x7f01001d

    const v4, 0x7f01001e

    invoke-virtual {v11, v0, v4}, Landroid/support/v4/app/an;->a(II)Landroid/support/v4/app/an;

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v11, v0}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 160
    invoke-virtual {v11}, Landroid/support/v4/app/an;->i()I

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    .line 164
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 163
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x2

    invoke-direct {v4, v1, v12, v13, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .line 168
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x7f0900c4 -> :sswitch_0
        0x7f09011f -> :sswitch_0
        0x7f0901cd -> :sswitch_1
    .end sparse-switch

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
