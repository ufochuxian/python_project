.class public Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mChineseTxt:Landroid/widget/TextView;

.field private mEngTxt:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->initView()V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019e

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mRootView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mRootView:Landroid/view/View;

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mEngTxt:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mRootView:Landroid/view/View;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mChineseTxt:Landroid/widget/TextView;

    .line 40
    return-void
.end method


# virtual methods
.method public setChineseTxt(Ljava/lang/String;)V
    .locals 1
    .param p1, "chineseTxt"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mChineseTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setEngTxt(Ljava/lang/String;)V
    .locals 1
    .param p1, "engTxt"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mEngTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public updateNormalColorStyle()V
    .locals 3

    .prologue
    const v2, 0x7f0600fe

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mEngTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mChineseTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    return-void
.end method

.method public updateWithColorStyle()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mRootView:Landroid/view/View;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mEngTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->mChineseTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    return-void
.end method
