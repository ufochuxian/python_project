.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;
.super Landroid/support/v4/view/af;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private glide:Lcom/bumptech/glide/o;

.field private mBannerBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->glide:Lcom/bumptech/glide/o;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "bannerBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;>;"
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    .line 44
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 76
    .local v0, "url":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->glide:Lcom/bumptech/glide/o;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 77
    return-void

    .line 75
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
    .line 95
    if-eqz p3, :cond_0

    .line 96
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 84
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
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v0, -0x2

    return v0
.end method

.method public getStartPageIndex()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0b00e2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 55
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0902fd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .local v1, "iv":Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    const v7, 0x7f0905e9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 58
    .local v4, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/jiliguala/niuwa/a/a/a;->a(Landroid/content/Context;)I

    move-result v5

    .line 60
    .local v5, "screenWidth":I
    int-to-double v8, v5

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v7

    int-to-double v10, v7

    add-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int v3, p2, v7

    .line 64
    .local v3, "pos":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;

    .line 65
    .local v0, "bannerBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;
    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->setPos(I)V

    .line 66
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->getThmb()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 70
    .end local v0    # "bannerBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;
    .end local v3    # "pos":I
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnItemTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "bannerBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->mBannerBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method
