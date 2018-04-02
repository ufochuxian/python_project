.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public mChineseName:Landroid/widget/TextView;

.field public mEngName:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field public mTeacherDesc:Landroid/widget/TextView;

.field public mTeacherIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->initView()V

    .line 35
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b3

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mRootView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mRootView:Landroid/view/View;

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mTeacherIcon:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mRootView:Landroid/view/View;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mEngName:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mRootView:Landroid/view/View;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mChineseName:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mRootView:Landroid/view/View;

    const v1, 0x7f090565

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mTeacherDesc:Landroid/widget/TextView;

    .line 43
    return-void
.end method
