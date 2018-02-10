.class public Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
.super Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/as$a;
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;",
        "Landroid/support/v4/app/as$a",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;"
    }
.end annotation


# static fields
.field private static BASIC_ID:I

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emptyView:Landroid/view/View;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->TAG:Ljava/lang/String;

    .line 63
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->showDeleteFavDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    return-object v0
.end method

.method private downloadMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "songUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 274
    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/d/a;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "dstFile":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 282
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v3, "lrcDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v4, "_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v4, "url"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v4, "download_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 4
    .param p1, "audioItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 264
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->downloadMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 160
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .line 161
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;-><init>()V

    .line 164
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 184
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0902d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    .line 187
    const v0, 0x7f0901da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->emptyView:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    return-void
.end method

.method private showDeleteFavDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 380
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v2, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 381
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 382
    const v5, 0x7f0b0091

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 384
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa

    .line 385
    .local v4, "width":I
    const/4 v3, -0x2

    .line 386
    .local v3, "height":I
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/Window;->setLayout(II)V

    .line 387
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 388
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 390
    const v5, 0x7f09004c

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, "alertText":Landroid/widget/TextView;
    const-string v5, "\u786e\u5b9a\u5c06\u6b64\u6b4c\u66f2\u4ece\u79bb\u7ebf\u6b4c\u5355\u4e2d\u5220\u9664\uff1f"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v5, 0x7f0900fa

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;

    invoke-direct {v6, p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v5, 0x7f090156

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$6;

    invoke-direct {v6, p0, v2, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$6;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 5

    .prologue
    .line 417
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->g()Ljava/util/ArrayList;

    move-result-object v3

    .line 418
    .local v3, "offLineAudioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/a;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v4

    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 419
    .local v2, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 420
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .line 421
    .local v0, "abstractResData":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    .end local v0    # "abstractResData":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "offLineAudioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :goto_1
    return v1

    .line 419
    .restart local v0    # "abstractResData":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    .restart local v1    # "i":I
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "offLineAudioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "abstractResData":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "offLineAudioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :catch_0
    move-exception v4

    .line 428
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 344
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/p;
    .locals 2
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
    .line 231
    sget v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->BASIC_ID:I

    if-ne p1, v0, :cond_0

    .line 232
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x5001

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/content/Context;I)Landroid/support/v4/content/k;

    move-result-object v0

    .line 234
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

    .line 175
    const v1, 0x7f0b00bd

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "content":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->initUI(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->hashCode()I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->BASIC_ID:I

    .line 179
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/as;

    move-result-object v1

    sget v2, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->BASIC_ID:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/as;->a(ILandroid/os/Bundle;Landroid/support/v4/app/as$a;)Landroid/support/v4/content/p;

    .line 180
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onDestroy()V

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 299
    packed-switch p3, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 310
    packed-switch p4, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 314
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 327
    packed-switch p3, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 329
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 323
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 338
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/p;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "loader"    # Landroid/support/v4/content/p;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/p;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->onLoadFinished(Landroid/support/v4/content/p;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/p;)V
    .locals 2
    .param p1, "loader"    # Landroid/support/v4/content/p;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 252
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onPause()V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->onResume()V

    .line 214
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->notifyDataSetChanged()V

    .line 217
    :cond_0
    return-void
.end method

.method public refreshUI(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 360
    return-void
.end method
