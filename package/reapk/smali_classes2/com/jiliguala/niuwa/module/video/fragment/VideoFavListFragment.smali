.class public Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
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

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->TAG:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 94
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->showDeleteFavDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 124
    sget-object v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .line 125
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;-><init>()V

    .line 128
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    :cond_0
    return-object v0
.end method

.method private generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 141
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v2, 0x7f09011f

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7ea2\u5fc3\u7535\u53f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0902d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListView:Landroid/widget/ListView;

    .line 160
    const v0, 0x7f0901da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->emptyView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 186
    return-void
.end method

.method private showDeleteFavDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 190
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v2, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 191
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 192
    const v5, 0x7f0b0091

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 194
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa

    .line 195
    .local v4, "width":I
    const/4 v3, -0x2

    .line 196
    .local v3, "height":I
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/Window;->setLayout(II)V

    .line 197
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 198
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    const v5, 0x7f09004c

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .local v1, "alertText":Landroid/widget/TextView;
    const-string v5, "\u662f\u5426\u5220\u9664\u8be5\u7ea2\u5fc3\u89c6\u9891?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v5, 0x7f0900fa

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$5;

    invoke-direct {v6, p0, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$5;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v5, 0x7f090156

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;

    invoke-direct {v6, p0, v2, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment$6;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 5

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->h()Ljava/util/ArrayList;

    move-result-object v3

    .line 294
    .local v3, "videoAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 306
    .end local v3    # "videoAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_1
    :goto_0
    return v0

    .line 296
    .restart local v3    # "videoAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v4

    iget-object v1, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 297
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 298
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 299
    .local v2, "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "singleVideoData":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .end local v3    # "videoAvailableRntPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catch_0
    move-exception v4

    .line 306
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onAttach(Landroid/content/Context;)V

    .line 134
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 135
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
    .line 266
    sget v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->BASIC_ID:I

    if-ne p1, v0, :cond_0

    .line 267
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->d(Landroid/content/Context;)Landroid/support/v4/content/k;

    move-result-object v0

    .line 269
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

    .line 147
    const v1, 0x7f0b00ab

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->initUI(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->hashCode()I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->BASIC_ID:I

    .line 151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/as;

    move-result-object v1

    sget v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->BASIC_ID:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/as;->a(ILandroid/os/Bundle;Landroid/support/v4/app/as$a;)Landroid/support/v4/content/p;

    .line 152
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
    .line 275
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoFavListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/jiliguala/niuwa/module/video/adapter/VideoFavListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->emptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 282
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/p;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->onLoadFinished(Landroid/support/v4/content/p;Landroid/database/Cursor;)V

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
    .line 287
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 288
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onPause()V

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onResume()V

    .line 251
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 252
    return-void
.end method
