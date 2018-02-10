.class public Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;
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
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/ak;-><init>(Landroid/support/v4/app/ag;)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;->mTitleIcons:[I

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5471\u5e97"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8ba2\u5355"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;->mTitles:[Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 61
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;-><init>()V

    .line 32
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "FROM_ORDER"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 38
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0
.end method

.method public getPageIconResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;->mTitleIcons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
