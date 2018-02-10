.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field public mTextDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->initView()V

    .line 37
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01ae

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mRootView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mRootView:Landroid/view/View;

    const v1, 0x7f090273

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mImageView:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mRootView:Landroid/view/View;

    const v1, 0x7f09056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    .line 43
    return-void
.end method


# virtual methods
.method public fillView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iconUrl"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
