.class public Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

.field private mBackBtn:Landroid/view/View;

.field private mChannel:Ljava/lang/String;

.field private mChannelTitle:Ljava/lang/String;

.field private mChannelTitleTv:Landroid/widget/TextView;

.field private mFlashCardChnData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mIndex:I

.field private mLevel:I

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mFlashCardChnData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->doChannelSelection(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    return-object v0
.end method

.method private doChannelSelection(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;

    .line 174
    .local v7, "channelItem":Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->ttl:Ljava/lang/String;

    .line 176
    .local v3, "title":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v2, "Vocab List Select"

    invoke-virtual {v0, v2, v9}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->channel:Ljava/lang/String;

    .line 181
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    move-result-object v8

    .line 182
    .local v8, "flashCardChannelFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "channel"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    new-instance v2, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v5, v4, v5}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    const-string v2, ""

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 197
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "flashCardChannelFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 189
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "flashCardChannelFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->refreshUI(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 66
    sget-object v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .line 67
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;-><init>()V

    .line 70
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 132
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mBackBtn:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mBackBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitleTv:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mGridView:Landroid/widget/GridView;

    .line 140
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;-><init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$3;-><init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0f00ce

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mFlashCardChnData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->notifyDataSetChanged()V

    .line 129
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 208
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v2, "0"

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannel:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 80
    const-string v2, "channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannel:Ljava/lang/String;

    .line 81
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitle:Ljava/lang/String;

    .line 83
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;>;"
    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mFlashCardChnData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .end local v1    # "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;>;"
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 92
    const v1, 0x7f0b00b0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->initUI(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->refreshUI()V

    .line 96
    return-object v0
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;>;"
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mFlashCardChnData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public refreshUI(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v2, "channel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannel:Ljava/lang/String;

    .line 102
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannelTitle:Ljava/lang/String;

    .line 104
    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mIndex:I

    .line 105
    const-string v2, "LEVEL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mLevel:I

    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->refreshUI()V

    .line 108
    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 110
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mGridView:Landroid/widget/GridView;

    iget v3, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 113
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;

    .line 115
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->channel:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->doChannelSelection(I)V

    goto :goto_0

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
