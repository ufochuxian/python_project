.class public Lcom/jiliguala/niuwa/module/search/SearchActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final KEY_FIRST_POSITION:Ljava/lang/String; = "KEY_FIRST_POSITION"

.field public static final KEY_KEY_WORD:Ljava/lang/String; = "KEY_KEY_WORD"

.field private static final KEY_LANDSCAPE:Ljava/lang/String; = "KEY_LANDSCAPE"

.field public static final KEY_SEARCH_DATA:Ljava/lang/String; = "KEY_SEARCH_DATA"

.field public static final KEY_SEARCH_MODE:Ljava/lang/String; = "KEY_SEARCH_MODE"

.field public static final KEY_SEARCH_RESULT:Ljava/lang/String; = "KEY_SEARCH_RESULT"

.field private static final REQUEST_SCAN_ISBN:I = 0x1000

.field public static final SEARCH_MODE_AUDIO:I = 0x0

.field public static final SEARCH_MODE_FORUM:I = 0x2

.field public static final SEARCH_MODE_FUZZY:I = -0x1

.field public static final SEARCH_MODE_GROUP:I = 0x3

.field public static final SEARCH_MODE_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private back:Landroid/widget/TextView;

.field private background:Landroid/widget/FrameLayout;

.field private cleanDr:Landroid/graphics/drawable/Drawable;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isLandScape:Z

.field private mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mIsLoadingMore:Z

.field private mJoinActionReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyWord:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mScannerEntrance:Landroid/view/View;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTips1:Landroid/widget/TextView;

.field private searchDr:Landroid/graphics/drawable/Drawable;

.field private searchEditText:Landroid/widget/EditText;

.field private searchFirstPos:I

.field private searchList:Landroid/widget/ListView;

.field private searchMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$1;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mJoinActionReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$3;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 173
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cancelWithData()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->changeClearIconState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/jiliguala/niuwa/module/search/SearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->parseJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->loadMoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/search/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchFirstPos:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->pressBack()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->doSearchAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->showViewWhileKeyWordIsNull()V

    return-void
.end method

.method private cancelWithData()V
    .locals 4

    .prologue
    .line 713
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "key":Ljava/lang/String;
    const-string v2, "KEY_KEY_WORD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v2, "KEY_FIRST_POSITION"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v2, :pswitch_data_0

    .line 727
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 728
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->pressBack()V

    .line 729
    return-void

    .line 720
    .restart local v0    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v2, "KEY_SEARCH_DATA"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getAudios()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 723
    :pswitch_1
    const-string v2, "KEY_SEARCH_DATA"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getVideos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeClearIconState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 624
    .local v0, "show":Z
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cleanDr:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v4, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 626
    .end local v0    # "show":Z
    :cond_0
    return-void

    .line 623
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "show":Z
    :cond_2
    move-object v1, v2

    .line 624
    goto :goto_1
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "lstId"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 448
    invoke-interface {v0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v0

    .line 449
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 450
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 451
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mIsLoadingMore:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 446
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 453
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method

.method private doSearchAction(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 401
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    .line 402
    iget-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "type":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 418
    :goto_0
    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void

    .line 406
    :pswitch_0
    const-string v0, "audios"

    .line 407
    goto :goto_0

    .line 409
    :pswitch_1
    const-string v0, "videos"

    .line 410
    goto :goto_0

    .line 412
    :pswitch_2
    const-string v0, "forums"

    .line 413
    goto :goto_0

    .line 415
    :pswitch_3
    const-string v0, "groups"

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 389
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 392
    .local v1, "token":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 393
    .restart local v1    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadMoreData(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getCount()I

    move-result v0

    .line 631
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, "lstId":Ljava/lang/String;
    iget v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v2, :pswitch_data_0

    .line 648
    :goto_0
    if-eqz v1, :cond_0

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->clear()V

    .line 651
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 652
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .end local v1    # "lstId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 635
    .restart local v1    # "lstId":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 636
    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 639
    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->_id:Ljava/lang/String;

    .line 642
    goto :goto_0

    .line 644
    :pswitch_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    goto :goto_0

    .line 655
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mIsLoadingMore:Z

    .line 656
    iget v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    invoke-direct {p0, p1, v2, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->requestLoadMore(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lokhttp3/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$6;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    return-object v0
.end method

.method public static makeAudioSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSearchModel"    # Lcom/jiliguala/niuwa/module/search/model/SearchModel;

    .prologue
    .line 206
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Listen Search View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SEARCH_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchKeyWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const-string v1, "KEY_KEY_WORD"

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "KEY_FIRST_POSITION"

    iget v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchFirstPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "KEY_SEARCH_DATA"

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->lstSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 215
    :cond_0
    return-object v0
.end method

.method public static makeForumSearchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SEARCH_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    return-object v0
.end method

.method public static makeGroupSearchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    const-string v1, "KEY_SEARCH_MODE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    return-object v0
.end method

.method public static makeVideoSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoSearchModel"    # Lcom/jiliguala/niuwa/module/search/model/SearchModel;
    .param p2, "isLandScape"    # Z

    .prologue
    .line 219
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Search View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SEARCH_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "KEY_LANDSCAPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchKeyWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "KEY_KEY_WORD"

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v1, "KEY_FIRST_POSITION"

    iget v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchFirstPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "KEY_SEARCH_DATA"

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->lstSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 230
    :cond_0
    return-object v0
.end method

.method private parseJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 309
    :pswitch_1
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 311
    :pswitch_2
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_3
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoSetsTemplate;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pressBack()V
    .locals 7

    .prologue
    const v6, 0x7f010027

    const v5, 0x7f010020

    const v4, 0x7f010015

    const v3, 0x7f010013

    .line 685
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->hideSoftInput()V

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mJoinActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->finish()V

    .line 693
    iget v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v1, :pswitch_data_0

    .line 707
    invoke-virtual {p0, v3, v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    .line 710
    :goto_1
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 695
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v2, 0x7f0f004d

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 696
    invoke-virtual {p0, v4, v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 699
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v2, 0x7f0f026c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 700
    invoke-virtual {p0, v4, v6}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 703
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v2, 0x7f0f00e2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 704
    invoke-virtual {p0, v3, v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lokhttp3/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$5;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    return-object v0
.end method

.method private requestFullScreenLandScape(Z)V
    .locals 2
    .param p1, "fullScreen"    # Z

    .prologue
    const/16 v1, 0x400

    .line 477
    if-nez p1, :cond_0

    .line 478
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->f(Landroid/app/Activity;)V

    .line 479
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setRequestedOrientation(I)V

    .line 486
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 483
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private requestLoadMore(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "lstId"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "type":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 440
    :goto_0
    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, v0, p1, p3}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    return-void

    .line 428
    :pswitch_0
    const-string v0, "audios"

    .line 429
    goto :goto_0

    .line 431
    :pswitch_1
    const-string v0, "videos"

    .line 432
    goto :goto_0

    .line 434
    :pswitch_2
    const-string v0, "forums"

    .line 435
    goto :goto_0

    .line 437
    :pswitch_3
    const-string v0, "groups"

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showViewWhileKeyWordIsNull()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 254
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    iget v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->clear()V

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v2, "\\p{Punct}"

    .line 248
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 249
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 250
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private umengReport(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "type":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 471
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v2, "Search Click"

    invoke-static {p0, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 474
    return-void

    .line 459
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v1, "Video"

    .line 460
    goto :goto_0

    .line 462
    :pswitch_1
    const-string v1, "Audio"

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    const-string v1, "Forum"

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const-string v1, "Group"

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateEditTextHint(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 674
    :goto_0
    return-void

    .line 665
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v1, 0x7f0f026c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const v1, 0x7f0f00e2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 368
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 369
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 371
    const-string v3, "result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "isbn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 376
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Type"

    const-string v4, "audio"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v3, "Result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Scan Success"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cancelWithData()V

    .line 682
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v11, 0x2

    const v10, 0x7f0600fe

    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 490
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 492
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 493
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v3, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 498
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "KEY_SEARCH_MODE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    .line 499
    const-string v4, "KEY_KEY_WORD"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    .line 500
    const-string v4, "KEY_FIRST_POSITION"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchFirstPos:I

    .line 501
    const-string v4, "KEY_SEARCH_DATA"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 502
    const-string v4, "KEY_LANDSCAPE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isLandScape:Z

    .line 505
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->isLandScape:Z

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->requestFullScreenLandScape(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080208

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cleanDr:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080206

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchDr:Landroid/graphics/drawable/Drawable;

    .line 509
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cleanDr:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cleanDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->cleanDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchDr:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->umengReport(I)V

    .line 514
    const v4, 0x7f0b012c

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->setContentView(I)V

    .line 516
    const v4, 0x7f090498

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->background:Landroid/widget/FrameLayout;

    .line 517
    const v4, 0x7f090599

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->back:Landroid/widget/TextView;

    .line 518
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-eq v4, v11, :cond_1

    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-eq v4, v9, :cond_1

    .line 520
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->back:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :cond_1
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v4, :pswitch_data_0

    .line 537
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->back:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    const v4, 0x7f09049d

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    .line 539
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-ne v4, v9, :cond_5

    const-string v4, "\u73ed\u540d\u3001\u73ed\u53f7"

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    new-instance v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    iget v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    invoke-direct {v4, v7, p0}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;-><init>(ILandroid/content/Context;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    .line 542
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 543
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 545
    .local v2, "len":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 546
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->setKeyWord(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->changeClearIconState()V

    .line 550
    .end local v2    # "len":I
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 551
    const v4, 0x7f0904a1

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    .line 552
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 554
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    new-instance v7, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 581
    const v4, 0x7f09048a

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    .line 582
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 585
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 587
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    packed-switch v4, :pswitch_data_1

    .line 598
    :goto_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 599
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchList:Landroid/widget/ListView;

    new-instance v5, Lcom/jiliguala/niuwa/module/search/SearchActivity$8;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity$8;-><init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 611
    :goto_3
    const v4, 0x7f0901da

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    .line 612
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    const v5, 0x7f0901dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyIcon:Landroid/widget/ImageView;

    .line 613
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mEmptyView:Landroid/view/View;

    const v5, 0x7f090582

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mTips1:Landroid/widget/TextView;

    .line 614
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-eq v4, v11, :cond_3

    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-ne v4, v9, :cond_4

    .line 615
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mTips1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    :cond_4
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->updateEditTextHint(I)V

    .line 619
    return-void

    .line 525
    :pswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 528
    :pswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 531
    :pswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 534
    :pswitch_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 539
    :cond_5
    const-string v4, ""

    goto/16 :goto_1

    .line 589
    :pswitch_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->setAudios(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 593
    :pswitch_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mAdapter:Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->setVideos(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 607
    :cond_6
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mScannerEntrance:Landroid/view/View;

    iget v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchMode:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->mKeyWord:Ljava/lang/String;

    .line 608
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 607
    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    move v4, v6

    .line 608
    goto :goto_4

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 587
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 761
    :cond_0
    :goto_0
    return v5

    .line 745
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 746
    const/4 v1, 0x0

    .line 747
    .local v1, "DRAWABLE_LEFT":I
    const/4 v3, 0x1

    .line 748
    .local v3, "DRAWABLE_TOP":I
    const/4 v2, 0x2

    .line 749
    .local v2, "DRAWABLE_RIGHT":I
    const/4 v0, 0x3

    .line 750
    .local v0, "DRAWABLE_BOTTOM":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v4, v6, v7

    .line 751
    .local v4, "drRight":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 752
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 754
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity;->searchEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 755
    const/4 v5, 0x1

    goto :goto_0

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x7f09049d
        :pswitch_0
    .end packed-switch
.end method
