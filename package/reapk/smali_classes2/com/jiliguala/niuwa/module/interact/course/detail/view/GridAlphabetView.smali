.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;,
        Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;
    }
.end annotation


# static fields
.field public static final NUM_COUNT:I = 0x4


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->initView()V

    .line 46
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mRootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mRootView:Landroid/view/View;

    const v1, 0x7f090242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridView:Landroid/widget/GridView;

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void
.end method


# virtual methods
.method public fillView(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "alphabetUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->a(Ljava/util/ArrayList;)V

    .line 60
    :cond_0
    return-void
.end method
