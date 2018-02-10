.class public Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
.super Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/as$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;",
        "Landroid/support/v4/app/as$a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static BASIC_ID:I

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emptyView:Landroid/view/View;

.field public mAudioBgColor:Ljava/lang/String;

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->TAG:Ljava/lang/String;

    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 79
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->showDeleteFavDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 113
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .line 114
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;-><init>()V

    .line 117
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v2, 0x7f09011f

    .line 151
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6700\u8fd1\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0902d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    .line 155
    const v0, 0x7f0901da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->emptyView:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 180
    return-void
.end method

.method private showDeleteFavDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 221
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v2, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 222
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 223
    const v5, 0x7f0b0091

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 225
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa

    .line 226
    .local v4, "width":I
    const/4 v3, -0x2

    .line 227
    .local v3, "height":I
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/Window;->setLayout(II)V

    .line 228
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 229
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 231
    const v5, 0x7f09004c

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, "alertText":Landroid/widget/TextView;
    const-string v5, "\u662f\u5426\u5220\u9664\u8be5\u64ad\u653e\u8bb0\u5f55?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v5, 0x7f0900fa

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;

    invoke-direct {v6, p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v5, 0x7f090156

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$6;

    invoke-direct {v6, p0, v2, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$6;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 5

    .prologue
    .line 264
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    .local v0, "audioAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 276
    .end local v0    # "audioAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_1
    :goto_0
    return v1

    .line 266
    .restart local v0    # "audioAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/a;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v4

    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 267
    .local v2, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 269
    .local v3, "singleAudioData":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "audioAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "singleAudioData":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :catch_0
    move-exception v4

    .line 276
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onAttach(Landroid/app/Activity;)V

    .line 257
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 258
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 125
    const-string v1, "bg_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAudioBgColor:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/p;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    sget v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->BASIC_ID:I

    if-ne p1, v0, :cond_0

    .line 197
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->b(Landroid/content/Context;)Landroid/support/v4/content/k;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    const/4 v3, 0x0

    .line 142
    const v1, 0x7f0b00ab

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "content":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->initUI(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->hashCode()I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->BASIC_ID:I

    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/as;

    move-result-object v1

    sget v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->BASIC_ID:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/as;->a(ILandroid/os/Bundle;Landroid/support/v4/app/as$a;)Landroid/support/v4/content/p;

    .line 147
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/p;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/p;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->onLoadFinished(Landroid/support/v4/content/p;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 217
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onPause()V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onResume()V

    .line 187
    return-void
.end method

.method public refreshUI(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->mAudioBgColor:Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method
