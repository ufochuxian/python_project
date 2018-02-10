.class public abstract Lcom/c/a/a/a/c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a/a/c$d;,
        Lcom/c/a/a/a/c$e;,
        Lcom/c/a/a/a/c$c;,
        Lcom/c/a/a/a/c$b;,
        Lcom/c/a/a/a/c$f;,
        Lcom/c/a/a/a/c$g;,
        Lcom/c/a/a/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/c/a/a/a/e;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a",
        "<TK;>;"
    }
.end annotation


# static fields
.field public static final ALPHAIN:I = 0x1

.field public static final EMPTY_VIEW:I = 0x555

.field public static final FOOTER_VIEW:I = 0x333

.field public static final HEADER_VIEW:I = 0x111

.field public static final LOADING_VIEW:I = 0x222

.field public static final SCALEIN:I = 0x2

.field public static final SLIDEIN_BOTTOM:I = 0x3

.field public static final SLIDEIN_LEFT:I = 0x4

.field public static final SLIDEIN_RIGHT:I = 0x5

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoLoadMoreSize:I

.field protected mContext:Landroid/content/Context;

.field private mCustomAnimation:Lcom/c/a/a/a/a/b;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEmptyLayout:Landroid/widget/FrameLayout;

.field private mFirstOnlyEnable:Z

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUseEmpty:Z

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mLoadMoreEnable:Z

.field private mLoadMoreView:Lcom/c/a/a/a/e/a;

.field private mLoading:Z

.field private mMultiTypeDelegate:Lcom/c/a/a/a/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/c/a/a/a/f/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mNextLoadEnable:Z

.field private mOnItemChildClickListener:Lcom/c/a/a/a/c$b;

.field private mOnItemChildLongClickListener:Lcom/c/a/a/a/c$c;

.field private mOnItemClickListener:Lcom/c/a/a/a/c$d;

.field private mOnItemLongClickListener:Lcom/c/a/a/a/c$e;

.field private mOpenAnimationEnable:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

.field private mSelectAnimation:Lcom/c/a/a/a/a/b;

.field private mSpanSizeLookup:Lcom/c/a/a/a/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/c/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/a/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 394
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 395
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 382
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mNextLoadEnable:Z

    .line 69
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    .line 70
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 71
    new-instance v0, Lcom/c/a/a/a/e/b;

    invoke-direct {v0}, Lcom/c/a/a/a/e/b;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    .line 105
    iput-boolean v2, p0, Lcom/c/a/a/a/c;->mFirstOnlyEnable:Z

    .line 106
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mOpenAnimationEnable:Z

    .line 107
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    const/16 v0, 0x12c

    iput v0, p0, Lcom/c/a/a/a/c;->mDuration:I

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/a/a/c;->mLastPosition:I

    .line 112
    new-instance v0, Lcom/c/a/a/a/a/a;

    invoke-direct {v0}, Lcom/c/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    .line 118
    iput-boolean v2, p0, Lcom/c/a/a/a/c;->mIsUseEmpty:Z

    .line 1246
    iput v2, p0, Lcom/c/a/a/a/c;->mAutoLoadMoreSize:I

    .line 383
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iput p1, p0, Lcom/c/a/a/a/c;->mLayoutResId:I

    .line 387
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/c/a/a/a/c;[I)I
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/c;
    .param p1, "x1"    # [I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getTheBiggestNumber([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/e/a;
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/c$g;
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/c/a/a/a/c;->mSpanSizeLookup:Lcom/c/a/a/a/c$g;

    return-object v0
.end method

.method static synthetic access$300(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/c$f;
    .locals 1
    .param p0, "x0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/c/a/a/a/c;->mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

    return-object v0
.end method

.method private addAnimation(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 1287
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-boolean v2, p0, Lcom/c/a/a/a/c;->mOpenAnimationEnable:Z

    if-eqz v2, :cond_3

    .line 1288
    iget-boolean v2, p0, Lcom/c/a/a/a/c;->mFirstOnlyEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v2

    iget v3, p0, Lcom/c/a/a/a/c;->mLastPosition:I

    if-le v2, v3, :cond_3

    .line 1289
    :cond_0
    const/4 v1, 0x0

    .line 1290
    .local v1, "animation":Lcom/c/a/a/a/a/b;
    iget-object v2, p0, Lcom/c/a/a/a/c;->mCustomAnimation:Lcom/c/a/a/a/a/b;

    if-eqz v2, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/c/a/a/a/c;->mCustomAnimation:Lcom/c/a/a/a/a/b;

    .line 1295
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/c/a/a/a/a/b;->a(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1296
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/c/a/a/a/c;->startAnim(Landroid/animation/Animator;I)V

    .line 1295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1293
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1298
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v2

    iput v2, p0, Lcom/c/a/a/a/c;->mLastPosition:I

    .line 1301
    .end local v1    # "animation":Lcom/c/a/a/a/a/b;
    :cond_3
    return-void
.end method

.method private autoLoadMore(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v2, 0x1

    .line 1255
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/c/a/a/a/c;->mAutoLoadMoreSize:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v0}, Lcom/c/a/a/a/e/a;->a()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 1265
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    if-nez v0, :cond_0

    .line 1266
    iput-boolean v2, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 1267
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1268
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/c/a/a/a/c$7;

    invoke-direct {v1, p0}, Lcom/c/a/a/a/c$7;-><init>(Lcom/c/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/c/a/a/a/c;->mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

    invoke-interface {v0}, Lcom/c/a/a/a/c$f;->a()V

    goto :goto_0
.end method

.method private bindViewClickListener(Lcom/c/a/a/a/e;)V
    .locals 2
    .param p1, "baseViewHolder"    # Lcom/c/a/a/a/e;

    .prologue
    .line 798
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    if-nez p1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v0

    .line 802
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 805
    new-instance v1, Lcom/c/a/a/a/c$5;

    invoke-direct {v1, p0, p1}, Lcom/c/a/a/a/c$5;-><init>(Lcom/c/a/a/a/c;Lcom/c/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    new-instance v1, Lcom/c/a/a/a/c$6;

    invoke-direct {v1, p0, p1}, Lcom/c/a/a/a/c$6;-><init>(Lcom/c/a/a/a/c;Lcom/c/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private checkNotNull()V
    .locals 2

    .prologue
    .line 143
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please bind recyclerView first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method private compatibilityDataSizeChanged(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 496
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 497
    .local v0, "dataSize":I
    :goto_0
    if-ne v0, p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->notifyDataSetChanged()V

    .line 500
    :cond_0
    return-void

    .line 496
    .end local v0    # "dataSize":I
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/c/a/a/a/e;
    .locals 7
    .param p1, "z"    # Ljava/lang/Class;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "className":Ljava/lang/String;
    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "static"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 881
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 882
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/c/a/a/a/e;

    .line 896
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v4

    .line 884
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v1    # "className":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 885
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/c/a/a/a/e;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 887
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v3

    .line 888
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 896
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 889
    :catch_1
    move-exception v3

    .line 890
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 891
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 892
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 893
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 894
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private getExpandableItem(I)Lcom/c/a/a/a/c/b;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1653
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1654
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->isExpandable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    check-cast v0, Lcom/c/a/a/a/c/b;

    .line 1657
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFooterViewPosition()I
    .locals 3

    .prologue
    .line 1149
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getEmptyViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1150
    const/4 v0, 0x1

    .line 1151
    .local v0, "position":I
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    add-int/lit8 v0, v0, 0x1

    .line 1154
    :cond_0
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mFootAndEmptyEnable:Z

    if-eqz v1, :cond_2

    .line 1160
    .end local v0    # "position":I
    :goto_0
    return v0

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    iget-object v2, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 1160
    .restart local v0    # "position":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getHeaderViewPosition()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getEmptyViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1138
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .param p1, "z"    # Ljava/lang/Class;

    .prologue
    .line 906
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 907
    .local v2, "type":Ljava/lang/reflect/Type;
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 908
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 909
    .local v3, "types":[Ljava/lang/reflect/Type;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 910
    .local v0, "temp":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_0

    move-object v1, v0

    .line 911
    check-cast v1, Ljava/lang/Class;

    .line 912
    .local v1, "tempClass":Ljava/lang/Class;
    const-class v6, Lcom/c/a/a/a/e;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 918
    .end local v0    # "temp":Ljava/lang/reflect/Type;
    .end local v1    # "tempClass":Ljava/lang/Class;
    .end local v3    # "types":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v1

    .line 909
    .restart local v0    # "temp":Ljava/lang/reflect/Type;
    .restart local v3    # "types":[Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "temp":Ljava/lang/reflect/Type;
    .end local v3    # "types":[Ljava/lang/reflect/Type;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLoadingView(Landroid/view/ViewGroup;)Lcom/c/a/a/a/e;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v2, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v2}, Lcom/c/a/a/a/e/a;->d()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/c/a/a/a/c;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 683
    .local v0, "holder":Lcom/c/a/a/a/e;, "TK;"
    iget-object v2, v0, Lcom/c/a/a/a/e;->itemView:Landroid/view/View;

    new-instance v3, Lcom/c/a/a/a/c$3;

    invoke-direct {v3, p0}, Lcom/c/a/a/a/c$3;-><init>(Lcom/c/a/a/a/c;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    return-object v0
.end method

.method private getTheBiggestNumber([I)I
    .locals 5
    .param p1, "numbers"    # [I

    .prologue
    .line 231
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v1, -0x1

    .line 232
    .local v1, "tmp":I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 240
    .end local v1    # "tmp":I
    .local v2, "tmp":I
    :goto_0
    return v2

    .line 235
    .end local v2    # "tmp":I
    .restart local v1    # "tmp":I
    :cond_1
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget v0, p1, v3

    .line 236
    .local v0, "num":I
    if-le v0, v1, :cond_2

    .line 237
    move v1, v0

    .line 235
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "num":I
    :cond_3
    move v2, v1

    .line 240
    .end local v1    # "tmp":I
    .restart local v2    # "tmp":I
    goto :goto_0
.end method

.method private hasSubItems(Lcom/c/a/a/a/c/b;)Z
    .locals 3
    .param p1, "item"    # Lcom/c/a/a/a/c/b;

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v1, 0x0

    .line 1643
    if-nez p1, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return v1

    .line 1644
    :cond_1
    invoke-interface {p1}, Lcom/c/a/a/a/c/b;->b()Ljava/util/List;

    move-result-object v0

    .line 1645
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private openLoadMore(Lcom/c/a/a/a/c$f;)V
    .locals 1
    .param p1, "requestLoadMoreListener"    # Lcom/c/a/a/a/c$f;

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    .line 170
    iput-object p1, p0, Lcom/c/a/a/a/c;->mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

    .line 171
    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mNextLoadEnable:Z

    .line 172
    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 174
    return-void
.end method

.method private recursiveCollapse(I)I
    .locals 8
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1565
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 1566
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/c/a/a/a/c;->isExpandable(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1567
    const/4 v5, 0x0

    .line 1586
    :cond_0
    return v5

    :cond_1
    move-object v0, v2

    .line 1569
    check-cast v0, Lcom/c/a/a/a/c/b;

    .line 1570
    .local v0, "expandable":Lcom/c/a/a/a/c/b;
    const/4 v5, 0x0

    .line 1571
    .local v5, "subItemCount":I
    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1572
    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->b()Ljava/util/List;

    move-result-object v6

    .line 1573
    .local v6, "subItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1574
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1575
    .local v4, "subItem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v4}, Lcom/c/a/a/a/c;->getItemPosition(Ljava/lang/Object;)I

    move-result v3

    .line 1576
    .local v3, "pos":I
    if-gez v3, :cond_2

    .line 1573
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1579
    :cond_2
    instance-of v7, v4, Lcom/c/a/a/a/c/b;

    if-eqz v7, :cond_3

    .line 1580
    invoke-direct {p0, v3}, Lcom/c/a/a/a/c;->recursiveCollapse(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 1582
    :cond_3
    iget-object v7, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1583
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private recursiveExpand(ILjava/util/List;)I
    .locals 8
    .param p1, "position"    # I
    .param p2, "list"    # Ljava/util/List;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1432
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    .line 1433
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, p1

    add-int/lit8 v3, v6, -0x1

    .line 1434
    .local v3, "pos":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1435
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/c/a/a/a/c/b;

    if-eqz v6, :cond_0

    .line 1436
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/a/a/c/b;

    .line 1437
    .local v2, "item":Lcom/c/a/a/a/c/b;
    invoke-interface {v2}, Lcom/c/a/a/a/c/b;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v2}, Lcom/c/a/a/a/c;->hasSubItems(Lcom/c/a/a/a/c/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1438
    invoke-interface {v2}, Lcom/c/a/a/a/c/b;->b()Ljava/util/List;

    move-result-object v5

    .line 1439
    .local v5, "subList":Ljava/util/List;
    iget-object v6, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v6, v7, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1440
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6, v5}, Lcom/c/a/a/a/c;->recursiveExpand(ILjava/util/List;)I

    move-result v4

    .line 1441
    .local v4, "subItemCount":I
    add-int/2addr v0, v4

    .line 1434
    .end local v2    # "item":Lcom/c/a/a/a/c/b;
    .end local v4    # "subItemCount":I
    .end local v5    # "subList":Ljava/util/List;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1445
    :cond_1
    return v0
.end method

.method private setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 139
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 140
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/c;->addData(ILjava/lang/Object;)V

    .line 425
    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 434
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    .line 435
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->compatibilityDataSizeChanged(I)V

    .line 436
    return-void
.end method

.method public addData(ILjava/util/List;)V
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 475
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/a/c;->notifyItemRangeInserted(II)V

    .line 476
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->compatibilityDataSizeChanged(I)V

    .line 477
    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->compatibilityDataSizeChanged(I)V

    .line 445
    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "newData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/a/c;->notifyItemRangeInserted(II)V

    .line 487
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->compatibilityDataSizeChanged(I)V

    .line 488
    return-void
.end method

.method public addFooterView(Landroid/view/View;)I
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 1013
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/c/a/a/a/c;->addFooterView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public addFooterView(Landroid/view/View;I)I
    .locals 1
    .param p1, "footer"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1017
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->addFooterView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public addFooterView(Landroid/view/View;II)I
    .locals 7
    .param p1, "footer"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "orientation"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1031
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 1032
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 1033
    if-ne p3, v5, :cond_4

    .line 1034
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1035
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v3, v4, v6}, Landroid/support/v7/widget/RecyclerView$h;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1042
    .local v0, "childCount":I
    if-ltz p2, :cond_1

    if-le p2, v0, :cond_2

    .line 1043
    :cond_1
    move p2, v0

    .line 1045
    :cond_2
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1046
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1047
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getFooterViewPosition()I

    move-result v1

    .line 1048
    .local v1, "position":I
    if-eq v1, v4, :cond_3

    .line 1049
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    .line 1052
    .end local v1    # "position":I
    :cond_3
    return p2

    .line 1037
    .end local v0    # "childCount":I
    :cond_4
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1038
    iget-object v2, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v3, v6, v4}, Landroid/support/v7/widget/RecyclerView$h;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 942
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/c;->addHeaderView(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public addHeaderView(Landroid/view/View;I)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 956
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->addHeaderView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public addHeaderView(Landroid/view/View;II)I
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "orientation"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 965
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 966
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 967
    if-ne p3, v5, :cond_4

    .line 968
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 969
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v3, v4, v6}, Landroid/support/v7/widget/RecyclerView$h;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 976
    .local v0, "childCount":I
    if-ltz p2, :cond_1

    if-le p2, v0, :cond_2

    .line 977
    :cond_1
    move p2, v0

    .line 979
    :cond_2
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 980
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 981
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getHeaderViewPosition()I

    move-result v1

    .line 982
    .local v1, "position":I
    if-eq v1, v4, :cond_3

    .line 983
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    .line 986
    .end local v1    # "position":I
    :cond_3
    return p2

    .line 971
    .end local v0    # "childCount":I
    :cond_4
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 972
    iget-object v2, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v3, v6, v4}, Landroid/support/v7/widget/RecyclerView$h;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bindToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 152
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t bind twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 156
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 157
    return-void
.end method

.method public collapse(I)I
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    .line 1625
    invoke-virtual {p0, p1, v0, v0}, Lcom/c/a/a/a/c;->collapse(IZZ)I

    move-result v0

    return v0
.end method

.method public collapse(IZ)I
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    .line 1635
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->collapse(IZZ)I

    move-result v0

    return v0
.end method

.method public collapse(IZZ)I
    .locals 5
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v3, 0x0

    .line 1598
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 1600
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getExpandableItem(I)Lcom/c/a/a/a/c/b;

    move-result-object v0

    .line 1601
    .local v0, "expandable":Lcom/c/a/a/a/c/b;
    if-nez v0, :cond_1

    move v2, v3

    .line 1615
    :cond_0
    :goto_0
    return v2

    .line 1604
    :cond_1
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->recursiveCollapse(I)I

    move-result v2

    .line 1605
    .local v2, "subItemCount":I
    invoke-interface {v0, v3}, Lcom/c/a/a/a/c/b;->a(Z)V

    .line 1606
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v3

    add-int v1, p1, v3

    .line 1607
    .local v1, "parentPos":I
    if-eqz p3, :cond_0

    .line 1608
    if-eqz p2, :cond_2

    .line 1609
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    .line 1610
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/c/a/a/a/c;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 1612
    :cond_2
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected abstract convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method protected createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 858
    .local v1, "temp":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 859
    .local v2, "z":Ljava/lang/Class;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 860
    invoke-direct {p0, v1}, Lcom/c/a/a/a/c;->getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 861
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 863
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/c/a/a/a/c;->createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 864
    .local v0, "k":Lcom/c/a/a/a/e;, "TK;"
    if-eqz v0, :cond_1

    .end local v0    # "k":Lcom/c/a/a/a/e;, "TK;"
    :goto_1
    return-object v0

    .restart local v0    # "k":Lcom/c/a/a/a/e;, "TK;"
    :cond_1
    new-instance v0, Lcom/c/a/a/a/e;

    .end local v0    # "k":Lcom/c/a/a/a/e;, "TK;"
    invoke-direct {v0, p1}, Lcom/c/a/a/a/e;-><init>(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0, p2, p1}, Lcom/c/a/a/a/c;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public disableLoadMoreIfNotFullPage()V
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-direct {p0}, Lcom/c/a/a/a/c;->checkNotNull()V

    .line 190
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->disableLoadMoreIfNotFullPage(Landroid/support/v7/widget/RecyclerView;)V

    .line 191
    return-void
.end method

.method public disableLoadMoreIfNotFullPage(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const-wide/16 v4, 0x32

    .line 200
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/c/a/a/a/c;->setEnableLoadMore(Z)V

    .line 201
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 203
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v1, :cond_0

    .line 204
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 205
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 206
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    new-instance v3, Lcom/c/a/a/a/c$1;

    invoke-direct {v3, p0, v0}, Lcom/c/a/a/a/c$1;-><init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 214
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    instance-of v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 215
    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 216
    .local v2, "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    new-instance v3, Lcom/c/a/a/a/c$2;

    invoke-direct {v3, p0, v2}, Lcom/c/a/a/a/c$2;-><init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public expand(I)I
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    .line 1508
    invoke-virtual {p0, p1, v0, v0}, Lcom/c/a/a/a/c;->expand(IZZ)I

    move-result v0

    return v0
.end method

.method public expand(IZ)I
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    .line 1498
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->expand(IZZ)I

    move-result v0

    return v0
.end method

.method public expand(IZZ)I
    .locals 6
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param
    .param p2, "animate"    # Z
    .param p3, "shouldNotify"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v3, 0x0

    .line 1459
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 1461
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getExpandableItem(I)Lcom/c/a/a/a/c/b;

    move-result-object v0

    .line 1462
    .local v0, "expandable":Lcom/c/a/a/a/c/b;
    if-nez v0, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v3

    .line 1465
    :cond_1
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->hasSubItems(Lcom/c/a/a/a/c/b;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1466
    invoke-interface {v0, v3}, Lcom/c/a/a/a/c/b;->a(Z)V

    goto :goto_0

    .line 1469
    :cond_2
    const/4 v3, 0x0

    .line 1470
    .local v3, "subItemCount":I
    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1471
    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->b()Ljava/util/List;

    move-result-object v1

    .line 1472
    .local v1, "list":Ljava/util/List;
    iget-object v4, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1473
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/c/a/a/a/c;->recursiveExpand(ILjava/util/List;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1475
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/c/a/a/a/c/b;->a(Z)V

    .line 1476
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 1478
    .end local v1    # "list":Ljava/util/List;
    :cond_3
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v4

    add-int v2, p1, v4

    .line 1479
    .local v2, "parentPos":I
    if-eqz p3, :cond_0

    .line 1480
    if-eqz p2, :cond_4

    .line 1481
    invoke-virtual {p0, v2}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    .line 1482
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/c/a/a/a/c;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 1484
    :cond_4
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public expandAll(IZ)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "init"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v1, 0x1

    .line 1555
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/c/a/a/a/c;->expandAll(IZZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandAll(IZZ)I
    .locals 8
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v5, 0x0

    .line 1512
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v6

    sub-int/2addr p1, v6

    .line 1514
    const/4 v1, 0x0

    .line 1515
    .local v1, "endItem":Ljava/lang/Object;, "TT;"
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1516
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcom/c/a/a/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1519
    .end local v1    # "endItem":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getExpandableItem(I)Lcom/c/a/a/a/c/b;

    move-result-object v2

    .line 1520
    .local v2, "expandable":Lcom/c/a/a/a/c/b;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/c/a/a/a/c;->hasSubItems(Lcom/c/a/a/a/c/b;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    move v0, v5

    .line 1543
    :cond_2
    :goto_0
    return v0

    .line 1524
    :cond_3
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0, v6, v5, v5}, Lcom/c/a/a/a/c;->expand(IZZ)I

    move-result v0

    .line 1525
    .local v0, "count":I
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1526
    invoke-virtual {p0, v3}, Lcom/c/a/a/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 1528
    .local v4, "item":Ljava/lang/Object;, "TT;"
    if-ne v4, v1, :cond_5

    .line 1536
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    if-eqz p3, :cond_2

    .line 1537
    if-eqz p2, :cond_7

    .line 1538
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v5

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/c/a/a/a/c;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 1531
    .restart local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_5
    invoke-virtual {p0, v4}, Lcom/c/a/a/a/c;->isExpandable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1532
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v5, v5}, Lcom/c/a/a/a/c;->expand(IZZ)I

    move-result v6

    add-int/2addr v0, v6

    .line 1525
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1540
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public expandAll()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v2, 0x0

    .line 1559
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1560
    invoke-virtual {p0, v0, v2, v2}, Lcom/c/a/a/a/c;->expandAll(IZZ)I

    .line 1559
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1562
    :cond_0
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getDefItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 646
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/c/a/a/a/f/a;->a(Ljava/util/List;I)I

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1243
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmptyViewCount()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 576
    :cond_1
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mIsUseEmpty:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 933
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFooterLayoutCount()I
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v0

    return v0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 926
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    .prologue
    .line 551
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 588
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getEmptyViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 589
    const/4 v0, 0x1

    .line 590
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    add-int/lit8 v0, v0, 0x1

    .line 593
    :cond_0
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mFootAndEmptyEnable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    add-int/lit8 v0, v0, 0x1

    .line 599
    :cond_1
    :goto_0
    return v0

    .line 597
    .end local v0    # "count":I
    :cond_2
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    iget-object v2, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v2

    add-int v0, v1, v2

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1428
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "layoutResId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1322
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 9
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/16 v5, 0x111

    const/4 v2, 0x1

    const/16 v6, 0x555

    const/16 v7, 0x333

    .line 604
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getEmptyViewCount()I

    move-result v8

    if-ne v8, v2, :cond_3

    .line 605
    iget-boolean v8, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v8

    if-eqz v8, :cond_1

    .line 606
    .local v2, "header":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    move v5, v6

    .line 639
    .end local v2    # "header":Z
    :cond_0
    :goto_1
    return v5

    .line 605
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 608
    .restart local v2    # "header":Z
    :pswitch_0
    if-nez v2, :cond_0

    move v5, v6

    .line 611
    goto :goto_1

    .line 614
    :pswitch_1
    if-eqz v2, :cond_2

    move v5, v6

    .line 615
    goto :goto_1

    :cond_2
    move v5, v7

    .line 617
    goto :goto_1

    :pswitch_2
    move v5, v7

    .line 620
    goto :goto_1

    .line 625
    .end local v2    # "header":Z
    :cond_3
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v4

    .line 626
    .local v4, "numHeaders":I
    if-lt p1, v4, :cond_0

    .line 629
    sub-int v1, p1, v4

    .line 630
    .local v1, "adjPosition":I
    iget-object v5, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 631
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_4

    .line 632
    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->getDefItemViewType(I)I

    move-result v5

    goto :goto_1

    .line 634
    :cond_4
    sub-int/2addr v1, v0

    .line 635
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v3

    .line 636
    .local v3, "numFooters":I
    if-ge v1, v3, :cond_5

    move v5, v7

    .line 637
    goto :goto_1

    .line 639
    :cond_5
    const/16 v5, 0x222

    goto :goto_1

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLoadMoreViewCount()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/c/a/a/a/c;->mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->mNextLoadEnable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v1}, Lcom/c/a/a/a/e/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMultiTypeDelegate()Lcom/c/a/a/a/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/c/a/a/a/f/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    return-object v0
.end method

.method public final getOnItemChildClickListener()Lcom/c/a/a/a/c$b;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 1832
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mOnItemChildClickListener:Lcom/c/a/a/a/c$b;

    return-object v0
.end method

.method public final getOnItemChildLongClickListener()Lcom/c/a/a/a/c$c;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 1841
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mOnItemChildLongClickListener:Lcom/c/a/a/a/c$c;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/c/a/a/a/c$d;
    .locals 1

    .prologue
    .line 1823
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mOnItemClickListener:Lcom/c/a/a/a/c$d;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/c/a/a/a/c$e;
    .locals 1

    .prologue
    .line 1815
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mOnItemLongClickListener:Lcom/c/a/a/a/c$e;

    return-object v0
.end method

.method public getParentPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, -0x1

    .line 1670
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getItemPosition(Ljava/lang/Object;)I

    move-result v3

    .line 1671
    .local v3, "position":I
    if-ne v3, v5, :cond_1

    move v3, v5

    .line 1698
    .end local v3    # "position":I
    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return v3

    .line 1678
    .restart local v3    # "position":I
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v6, p1, Lcom/c/a/a/a/c/b;

    if-eqz v6, :cond_2

    .line 1679
    check-cast p1, Lcom/c/a/a/a/c/b;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lcom/c/a/a/a/c/b;->d()I

    move-result v2

    .line 1683
    .local v2, "level":I
    :goto_1
    if-eqz v2, :cond_0

    .line 1685
    if-ne v2, v5, :cond_3

    move v3, v5

    .line 1686
    goto :goto_0

    .line 1681
    .end local v2    # "level":I
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    const v2, 0x7fffffff

    .restart local v2    # "level":I
    goto :goto_1

    .line 1689
    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    move v1, v3

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 1690
    iget-object v6, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1691
    .local v4, "temp":Ljava/lang/Object;, "TT;"
    instance-of v6, v4, Lcom/c/a/a/a/c/b;

    if-eqz v6, :cond_4

    move-object v0, v4

    .line 1692
    check-cast v0, Lcom/c/a/a/a/c/b;

    .line 1693
    .local v0, "expandable":Lcom/c/a/a/a/c/b;
    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->d()I

    move-result v6

    if-ltz v6, :cond_4

    invoke-interface {v0}, Lcom/c/a/a/a/c/b;->d()I

    move-result v6

    if-ge v6, v2, :cond_4

    move v3, v1

    .line 1694
    goto :goto_0

    .line 1689
    .end local v0    # "expandable":Lcom/c/a/a/a/c/b;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v4    # "temp":Ljava/lang/Object;, "TT;"
    :cond_5
    move v3, v5

    .line 1698
    goto :goto_0
.end method

.method protected getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getViewByPosition(II)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 1405
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-direct {p0}, Lcom/c/a/a/a/c;->checkNotNull()V

    .line 1406
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/a/a/a/c;->getViewByPosition(Landroid/support/v7/widget/RecyclerView;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewByPosition(Landroid/support/v7/widget/RecyclerView;II)Landroid/view/View;
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "viewId"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v1, 0x0

    .line 1410
    if-nez p1, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-object v1

    .line 1413
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    .line 1414
    .local v0, "viewHolder":Lcom/c/a/a/a/e;
    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {v0, p3}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isExpandable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1649
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/c/a/a/a/c/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstOnly(Z)V
    .locals 0
    .param p1, "firstOnly"    # Z

    .prologue
    .line 1386
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-boolean p1, p0, Lcom/c/a/a/a/c;->mFirstOnlyEnable:Z

    .line 1387
    return-void
.end method

.method public isLoadMoreEnable()Z
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    return v0
.end method

.method public isUseEmpty(Z)V
    .locals 0
    .param p1, "isUseEmpty"    # Z

    .prologue
    .line 1232
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-boolean p1, p0, Lcom/c/a/a/a/c;->mIsUseEmpty:Z

    .line 1233
    return-void
.end method

.method public loadMoreComplete()V
    .locals 2

    .prologue
    .line 314
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 318
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 319
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreEnd()V
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->loadMoreEnd(Z)V

    .line 288
    return-void
.end method

.method public loadMoreEnd(Z)V
    .locals 2
    .param p1, "gone"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 299
    :cond_0
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 300
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mNextLoadEnable:Z

    .line 301
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v0, p1}, Lcom/c/a/a/a/e/a;->a(Z)V

    .line 302
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 306
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public loadMoreFail()V
    .locals 2

    .prologue
    .line 326
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 330
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 331
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 731
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 732
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 733
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 734
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 735
    .local v0, "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/c/a/a/a/c$4;

    invoke-direct {v2, p0, v0}, Lcom/c/a/a/a/c$4;-><init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 749
    .end local v0    # "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    check-cast p1, Lcom/c/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/c;->onBindViewHolder(Lcom/c/a/a/a/e;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/c/a/a/a/e;I)V
    .locals 4
    .param p2, "positions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "holder":Lcom/c/a/a/a/e;, "TK;"
    invoke-direct {p0, p2}, Lcom/c/a/a/a/c;->autoLoadMore(I)V

    .line 775
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v0

    .line 777
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_0

    .line 792
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/c/a/a/a/c;->convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V

    .line 795
    :goto_0
    :sswitch_0
    return-void

    .line 780
    :sswitch_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/c/a/a/a/c;->convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 783
    :sswitch_2
    iget-object v1, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v1, p1}, Lcom/c/a/a/a/e/a;->a(Lcom/c/a/a/a/e;)V

    goto :goto_0

    .line 777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x111 -> :sswitch_0
        0x222 -> :sswitch_2
        0x333 -> :sswitch_0
        0x555 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget v0, p0, Lcom/c/a/a/a/c;->mLayoutResId:I

    .line 839
    .local v0, "layoutId":I
    iget-object v1, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    invoke-virtual {v1, p2}, Lcom/c/a/a/a/f/a;->a(I)I

    move-result v0

    .line 842
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    .line 655
    .local v0, "baseViewHolder":Lcom/c/a/a/a/e;, "TK;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/a/a/c;->mContext:Landroid/content/Context;

    .line 656
    iget-object v1, p0, Lcom/c/a/a/a/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/a/a/c;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 657
    sparse-switch p2, :sswitch_data_0

    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/c;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 672
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->bindViewClickListener(Lcom/c/a/a/a/e;)V

    .line 674
    :goto_0
    invoke-virtual {v0, p0}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/e;

    .line 675
    return-object v0

    .line 659
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->getLoadingView(Landroid/view/ViewGroup;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 660
    goto :goto_0

    .line 662
    :sswitch_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 663
    goto :goto_0

    .line 665
    :sswitch_2
    iget-object v1, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 666
    goto :goto_0

    .line 668
    :sswitch_3
    iget-object v1, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/c/a/a/a/c;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 669
    goto :goto_0

    .line 657
    nop

    :sswitch_data_0
    .sparse-switch
        0x111 -> :sswitch_1
        0x222 -> :sswitch_0
        0x333 -> :sswitch_3
        0x555 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    check-cast p1, Lcom/c/a/a/a/e;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/c;->onViewAttachedToWindow(Lcom/c/a/a/a/e;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/c/a/a/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "holder":Lcom/c/a/a/a/e;, "TK;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 705
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v0

    .line 706
    .local v0, "type":I
    const/16 v1, 0x555

    if-eq v0, v1, :cond_0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_0

    const/16 v1, 0x333

    if-eq v0, v1, :cond_0

    const/16 v1, 0x222

    if-ne v0, v1, :cond_1

    .line 707
    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/c;->setFullSpan(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->addAnimation(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0
.end method

.method public openLoadAnimation()V
    .locals 1

    .prologue
    .line 1377
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mOpenAnimationEnable:Z

    .line 1378
    return-void
.end method

.method public openLoadAnimation(I)V
    .locals 1
    .param p1, "animationType"    # I

    .prologue
    .line 1340
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mOpenAnimationEnable:Z

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/c;->mCustomAnimation:Lcom/c/a/a/a/a/b;

    .line 1342
    packed-switch p1, :pswitch_data_0

    .line 1361
    :goto_0
    return-void

    .line 1344
    :pswitch_0
    new-instance v0, Lcom/c/a/a/a/a/a;

    invoke-direct {v0}, Lcom/c/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1347
    :pswitch_1
    new-instance v0, Lcom/c/a/a/a/a/c;

    invoke-direct {v0}, Lcom/c/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1350
    :pswitch_2
    new-instance v0, Lcom/c/a/a/a/a/d;

    invoke-direct {v0}, Lcom/c/a/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1353
    :pswitch_3
    new-instance v0, Lcom/c/a/a/a/a/e;

    invoke-direct {v0}, Lcom/c/a/a/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1356
    :pswitch_4
    new-instance v0, Lcom/c/a/a/a/a/f;

    invoke-direct {v0}, Lcom/c/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->mSelectAnimation:Lcom/c/a/a/a/a/b;

    goto :goto_0

    .line 1342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openLoadAnimation(Lcom/c/a/a/a/a/b;)V
    .locals 1
    .param p1, "animation"    # Lcom/c/a/a/a/a/b;

    .prologue
    .line 1369
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mOpenAnimationEnable:Z

    .line 1370
    iput-object p1, p0, Lcom/c/a/a/a/c;->mCustomAnimation:Lcom/c/a/a/a/a/b;

    .line 1371
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 453
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 454
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    add-int v0, p1, v1

    .line 455
    .local v0, "internalPosition":I
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/c/a/a/a/c;->compatibilityDataSizeChanged(I)V

    .line 457
    iget-object v1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/a/c;->notifyItemRangeChanged(II)V

    .line 458
    return-void
.end method

.method public removeAllFooterView()V
    .locals 2

    .prologue
    .line 1126
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1129
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getFooterViewPosition()I

    move-result v0

    .line 1130
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1131
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeAllHeaderView()V
    .locals 2

    .prologue
    .line 1113
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1116
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getHeaderViewPosition()I

    move-result v0

    .line 1117
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1118
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 1098
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1101
    iget-object v1, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1102
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getFooterViewPosition()I

    move-result v0

    .line 1103
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1104
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1080
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1083
    iget-object v1, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/c/a/a/a/c;->getHeaderViewPosition()I

    move-result v0

    .line 1085
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1086
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    goto :goto_0
.end method

.method public setAutoLoadMoreSize(I)V
    .locals 1
    .param p1, "autoLoadMoreSize"    # I

    .prologue
    .line 1249
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1250
    iput p1, p0, Lcom/c/a/a/a/c;->mAutoLoadMoreSize:I

    .line 1252
    :cond_0
    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    .line 466
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 371
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput p1, p0, Lcom/c/a/a/a/c;->mDuration:I

    .line 372
    return-void
.end method

.method public setEmptyView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 1174
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-direct {p0}, Lcom/c/a/a/a/c;->checkNotNull()V

    .line 1175
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/c;->setEmptyView(ILandroid/view/ViewGroup;)V

    .line 1176
    return-void
.end method

.method public setEmptyView(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1164
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1165
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/c/a/a/a/c;->setEmptyView(Landroid/view/View;)V

    .line 1166
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 8
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "insert":Z
    iget-object v4, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    .line 1181
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    .line 1182
    new-instance v1, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v1, v6, v6}, Landroid/support/v7/widget/RecyclerView$h;-><init>(II)V

    .line 1183
    .local v1, "layoutParams":Landroid/support/v7/widget/RecyclerView$h;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1184
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    .line 1185
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v1, Landroid/support/v7/widget/RecyclerView$h;->width:I

    .line 1186
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v1, Landroid/support/v7/widget/RecyclerView$h;->height:I

    .line 1188
    :cond_0
    iget-object v4, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    const/4 v0, 0x1

    .line 1191
    .end local v1    # "layoutParams":Landroid/support/v7/widget/RecyclerView$h;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1192
    iget-object v4, p0, Lcom/c/a/a/a/c;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1193
    iput-boolean v7, p0, Lcom/c/a/a/a/c;->mIsUseEmpty:Z

    .line 1194
    if-eqz v0, :cond_3

    .line 1195
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getEmptyViewCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 1196
    const/4 v3, 0x0

    .line 1197
    .local v3, "position":I
    iget-boolean v4, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1198
    add-int/lit8 v3, v3, 0x1

    .line 1200
    :cond_2
    invoke-virtual {p0, v3}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    .line 1203
    .end local v3    # "position":I
    :cond_3
    return-void
.end method

.method public setEnableLoadMore(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v3, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v1

    .line 341
    .local v1, "oldLoadMoreCount":I
    iput-boolean p1, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    .line 342
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getLoadMoreViewCount()I

    move-result v0

    .line 344
    .local v0, "newLoadMoreCount":I
    if-ne v1, v3, :cond_1

    .line 345
    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v2

    iget-object v3, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/c/a/a/a/c;->notifyItemRemoved(I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    if-ne v0, v3, :cond_0

    .line 350
    iget-object v2, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v2, v3}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 351
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v2

    iget-object v3, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/c/a/a/a/c;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public setFooterView(Landroid/view/View;)I
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1056
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/c/a/a/a/c;->setFooterView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public setFooterView(Landroid/view/View;I)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1060
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->setFooterView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public setFooterView(Landroid/view/View;II)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 1064
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 1065
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/c/a/a/a/c;->addFooterView(Landroid/view/View;II)I

    move-result p2

    .line 1069
    .end local p2    # "index":I
    :goto_0
    return p2

    .line 1067
    .restart local p2    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1068
    iget-object v0, p0, Lcom/c/a/a/a/c;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected setFullSpan(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 722
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 724
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 725
    .local v0, "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Z)V

    .line 727
    .end local v0    # "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    :cond_0
    return-void
.end method

.method public setHeaderAndEmpty(Z)V
    .locals 1
    .param p1, "isHeadAndEmpty"    # Z

    .prologue
    .line 1211
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/c;->setHeaderFooterEmpty(ZZ)V

    .line 1212
    return-void
.end method

.method public setHeaderFooterEmpty(ZZ)V
    .locals 0
    .param p1, "isHeadAndEmpty"    # Z
    .param p2, "isFootAndEmpty"    # Z

    .prologue
    .line 1222
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-boolean p1, p0, Lcom/c/a/a/a/c;->mHeadAndEmptyEnable:Z

    .line 1223
    iput-boolean p2, p0, Lcom/c/a/a/a/c;->mFootAndEmptyEnable:Z

    .line 1224
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)I
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 990
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/c/a/a/a/c;->setHeaderView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public setHeaderView(Landroid/view/View;I)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 994
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/c/a/a/a/c;->setHeaderView(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public setHeaderView(Landroid/view/View;II)I
    .locals 1
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 998
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 999
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/c/a/a/a/c;->addHeaderView(Landroid/view/View;II)I

    move-result p2

    .line 1003
    .end local p2    # "index":I
    :goto_0
    return p2

    .line 1001
    .restart local p2    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1002
    iget-object v0, p0, Lcom/c/a/a/a/c;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setLoadMoreView(Lcom/c/a/a/a/e/a;)V
    .locals 0
    .param p1, "loadingView"    # Lcom/c/a/a/a/e/a;

    .prologue
    .line 253
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    .line 254
    return-void
.end method

.method public setMultiTypeDelegate(Lcom/c/a/a/a/f/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/a/f/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "multiTypeDelegate":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mMultiTypeDelegate:Lcom/c/a/a/a/f/a;

    .line 831
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 403
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    .line 404
    iget-object v0, p0, Lcom/c/a/a/a/c;->mRequestLoadMoreListener:Lcom/c/a/a/a/c$f;

    if-eqz v0, :cond_1

    .line 405
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mNextLoadEnable:Z

    .line 406
    iput-boolean v1, p0, Lcom/c/a/a/a/c;->mLoadMoreEnable:Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->mLoading:Z

    .line 408
    iget-object v0, p0, Lcom/c/a/a/a/c;->mLoadMoreView:Lcom/c/a/a/a/e/a;

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 410
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/a/a/c;->mLastPosition:I

    .line 411
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->notifyDataSetChanged()V

    .line 412
    return-void
.end method

.method public setNotDoAnimationCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 244
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput p1, p0, Lcom/c/a/a/a/c;->mLastPosition:I

    .line 245
    return-void
.end method

.method public setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/c/a/a/a/c$b;

    .prologue
    .line 1786
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mOnItemChildClickListener:Lcom/c/a/a/a/c$b;

    .line 1787
    return-void
.end method

.method public setOnItemChildLongClickListener(Lcom/c/a/a/a/c$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/c/a/a/a/c$c;

    .prologue
    .line 1806
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mOnItemChildLongClickListener:Lcom/c/a/a/a/c$c;

    .line 1807
    return-void
.end method

.method public setOnItemClickListener(Lcom/c/a/a/a/c$d;)V
    .locals 0
    .param p1, "listener"    # Lcom/c/a/a/a/c$d;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 1776
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mOnItemClickListener:Lcom/c/a/a/a/c$d;

    .line 1777
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/c/a/a/a/c$e;)V
    .locals 0
    .param p1, "listener"    # Lcom/c/a/a/a/c$e;

    .prologue
    .line 1796
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mOnItemLongClickListener:Lcom/c/a/a/a/c$e;

    .line 1797
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/c/a/a/a/c$f;)V
    .locals 0
    .param p1, "requestLoadMoreListener"    # Lcom/c/a/a/a/c$f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->openLoadMore(Lcom/c/a/a/a/c$f;)V

    .line 167
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/c/a/a/a/c$f;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "requestLoadMoreListener"    # Lcom/c/a/a/a/c$f;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 177
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;->openLoadMore(Lcom/c/a/a/a/c$f;)V

    .line 178
    invoke-virtual {p0}, Lcom/c/a/a/a/c;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p2}, Lcom/c/a/a/a/c;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setSpanSizeLookup(Lcom/c/a/a/a/c$g;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Lcom/c/a/a/a/c$g;

    .prologue
    .line 761
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c;->mSpanSizeLookup:Lcom/c/a/a/a/c$g;

    .line 762
    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "index"    # I

    .prologue
    .line 1310
    .local p0, "this":Lcom/c/a/a/a/c;, "Lcom/c/a/a/a/c<TT;TK;>;"
    iget v0, p0, Lcom/c/a/a/a/c;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1311
    iget-object v0, p0, Lcom/c/a/a/a/c;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1312
    return-void
.end method
