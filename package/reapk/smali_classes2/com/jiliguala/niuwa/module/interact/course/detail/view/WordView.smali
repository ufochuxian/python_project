.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public mLeftChineseTxt:Landroid/widget/TextView;

.field public mLeftEngTxt:Landroid/widget/TextView;

.field public mLeftIcon:Landroid/widget/ImageView;

.field public mRightChineseTxt:Landroid/widget/TextView;

.field public mRightEngTxt:Landroid/widget/TextView;

.field public mRightWordIcon:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->initView()V

    .line 37
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b0

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f0902c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mLeftIcon:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mLeftEngTxt:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mLeftChineseTxt:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f09046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRightWordIcon:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f090463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRightEngTxt:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRootView:Landroid/view/View;

    const v1, 0x7f090460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/WordView;->mRightChineseTxt:Landroid/widget/TextView;

    .line 48
    return-void
.end method
