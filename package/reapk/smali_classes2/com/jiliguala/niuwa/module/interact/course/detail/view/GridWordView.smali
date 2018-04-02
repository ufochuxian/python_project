.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;,
        Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;
    }
.end annotation


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->initView()V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01a4

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mRootView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mRootView:Landroid/view/View;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridView:Landroid/widget/GridView;

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
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
            "Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->mGridWordAdapter:Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->a(Ljava/util/ArrayList;)V

    .line 59
    :cond_0
    return-void
.end method
