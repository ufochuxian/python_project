.class public Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
.super Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private chnId:Ljava/lang/String;

.field private emptyView:Landroid/view/View;

.field private mChnTitle:Landroid/widget/TextView;

.field private mCopyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private originList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private progressDlg:Lcom/jiliguala/niuwa/common/a/g;

.field private ttl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->TAG:Ljava/lang/String;

    .line 50
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->originList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->chnId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->originList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->originList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mChnTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mCopyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mCopyList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 111
    :cond_0
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 94
    sget-object v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .line 95
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;-><init>()V

    .line 98
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v2, 0x7f09011f

    .line 131
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mChnTitle:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mChnTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0902d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListView:Landroid/widget/ListView;

    .line 136
    const v0, 0x7f0901da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->emptyView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->emptyView:Landroid/view/View;

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 164
    return-void
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 4

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v3

    iget-object v1, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 280
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 282
    .local v2, "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    :goto_1
    return v0

    .line 280
    .restart local v0    # "i":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    :catch_0
    move-exception v3

    .line 290
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public manualOnHiddenChanged()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onHiddenChanged(Z)V

    .line 128
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 105
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 197
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 204
    :cond_0
    if-eqz v0, :cond_1

    .line 205
    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    :cond_1
    return-object v0
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
    .line 115
    const v1, 0x7f0b00ab

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->initUI(Landroid/view/View;)V

    .line 118
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onPause()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onResume()V

    .line 169
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method public setChnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "chnId"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->chnId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->ttl:Ljava/lang/String;

    .line 185
    return-void
.end method
