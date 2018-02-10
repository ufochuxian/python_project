.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;
.super Landroid/support/v4/app/ak;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$TitleIconTabProvider;


# instance fields
.field private mTitleIcons:[I

.field private final mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/ag;)V
    .locals 3
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    const/4 v1, 0x3

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/app/ak;-><init>(Landroid/support/v4/app/ag;)V

    .line 17
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;->mTitleIcons:[I

    .line 21
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e92\u52a8\u8bfe\u7a0b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5434\u654f\u5170\u7ed8\u672c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4f53\u7cfb\u8bfe\u7a0b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;->mTitles:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 57
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;-><init>()V

    .line 36
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 29
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 30
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 31
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 32
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 34
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0
.end method

.method public getPageIconResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;->mTitleIcons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
