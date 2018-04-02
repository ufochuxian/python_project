.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
.super Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;,
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

.field private mBottomMargin:I

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

.field private mFolderName:Ljava/lang/String;

.field private mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

.field private mLeftMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->startLoadImageView()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 61
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->InterTapView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mLeftMargin:I

    .line 63
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mBottomMargin:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    return-void
.end method

.method private renderView(II)V
    .locals 7
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I

    .prologue
    .line 82
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->getCount()I

    move-result v1

    .line 85
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 86
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    invoke-virtual {v4, v3, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->getLayoutParams(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 89
    .local v2, "fl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    invoke-virtual {v4, v3, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    new-instance v4, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;ILjava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "fl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "index":I
    :cond_0
    return-void
.end method

.method private startLoadImageView()V
    .locals 7

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getChildCount()I

    move-result v1

    .line 110
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 111
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 113
    const v4, 0x7f09029a

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 114
    .local v3, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v3, :cond_0

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 117
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbNormal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .end local v0    # "child":Landroid/view/View;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->z()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 116
    invoke-virtual {v4, v5, v0, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 110
    .end local v3    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mBottomMargin:I

    return v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLeftMargin()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mLeftMargin:I

    return v0
.end method

.method public onMatchResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method

.method public onSelectItem(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onUnSelectItem(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 170
    return-void
.end method

.method public releaseSoundRes()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->releaseSoundRes()V

    .line 270
    :cond_0
    return-void
.end method

.method public reportScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "score"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v0, :cond_0

    .line 177
    :cond_0
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 0
    .param p1, "BottomMargin"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mBottomMargin:I

    .line 146
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;)V
    .locals 2
    .param p1, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    .prologue
    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;-><init>(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->adapter:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->setFolderName(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getVideoW()I

    move-result v0

    invoke-static {}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getVideoH()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->renderView(II)V

    .line 105
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mFolderName:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
    .locals 0
    .param p1, "interactListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .line 132
    return-object p0
.end method

.method public setLeftMargin(I)V
    .locals 0
    .param p1, "LeftMargin"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->mLeftMargin:I

    .line 154
    return-void
.end method
