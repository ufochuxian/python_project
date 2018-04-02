.class public Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;
.super Landroid/support/v4/view/af;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;",
            ">;"
        }
    .end annotation
.end field

.field private mDownX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    .prologue
    .line 36
    iget v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mDownX:I

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mDownX:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 61
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 62
    return-void

    .line 60
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/640x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 162
    .end local p3    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemIndexForPosition(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method public getStartPageIndex()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 105
    sget-object v6, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00e3

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 106
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f090304

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 107
    .local v2, "iv":Landroid/widget/ImageView;
    const v6, 0x7f0905f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 108
    .local v4, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 110
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v0, p2, v6

    .line 113
    .local v0, "index":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

    .line 114
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    new-instance v6, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;

    invoke-direct {v6, p0, p2, v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;ILcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;->img:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    return-object v5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRunnable(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    .line 57
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "banner":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->mData:Ljava/util/ArrayList;

    .line 53
    return-void
.end method
