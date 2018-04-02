.class public Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$DISCOVERY_INDEX;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAB_RES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCurrentPos:I

.field private mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->TAG:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->TAB_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f00b0
        0x7f0f00b3
        0x7f0f00b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->refreshYouzan()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->reportToAmplitude(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->loadErrorPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getTabView(II)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "textResId"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0097

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090551

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    return-object v1
.end method

.method private loadErrorPage()V
    .locals 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 171
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 173
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v4, :cond_0

    .line 174
    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadErrorPage()V

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private final refreshYouzan()V
    .locals 8

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_4

    .line 232
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 234
    .local v3, "size":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->loadErrorPage()V

    goto :goto_0

    .line 238
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 239
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 240
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v4, :cond_3

    .line 241
    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->reqeustServer(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    goto :goto_0

    .line 238
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$3;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$3;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private reportToAmplitude(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Explore View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Store View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Forum List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private reqeustServer(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 3
    .param p1, "yzH5Fragment"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    const-string v2, "-home-"

    .line 184
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 185
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 186
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 187
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    .line 188
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 223
    return-void
.end method


# virtual methods
.method public goGuaStoreTab()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 157
    return-void
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 64
    const v1, 0x7f0b0096

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    const v4, 0x1020012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    .line 83
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    const v7, 0x1020011

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/ag;I)V

    .line 84
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    sget-object v4, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->TAB_RES:[I

    array-length v2, v4

    .line 87
    .local v2, "length":I
    const/4 v3, 0x0

    .line 88
    .local v3, "tabSpec":Landroid/widget/TabHost$TabSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 90
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->TAB_RES:[I

    aget v5, v5, v1

    invoke-direct {p0, v1, v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getTabView(II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 91
    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-virtual {v4, v3, v5, v8}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 97
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "FROM_HOME_PAGE"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v4, "NEED_BACK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v5, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v4, v3, v5, v0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->refreshYouzan()V

    goto :goto_1

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v5, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-virtual {v4, v3, v5, v8}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 150
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reportToAmplitde()V
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->mCurrentPos:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->reportToAmplitude(I)V

    .line 260
    return-void
.end method
