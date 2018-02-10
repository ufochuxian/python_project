.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mAlphabet:Landroid/widget/ImageView;

.field public mAnserChineseTxt:Landroid/widget/TextView;

.field public mAnswerEngTxt:Landroid/widget/TextView;

.field public mAskChineseText:Landroid/widget/TextView;

.field public mAskEngTxt:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->initView()V

    .line 36
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019a

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mRootView:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mRootView:Landroid/view/View;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAskEngTxt:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mRootView:Landroid/view/View;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAskChineseText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mRootView:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAnswerEngTxt:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mRootView:Landroid/view/View;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAnserChineseTxt:Landroid/widget/TextView;

    .line 49
    return-void
.end method
