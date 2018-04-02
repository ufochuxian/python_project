.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 681
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 682
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->a:I

    .line 683
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->b:I

    .line 684
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->c:I

    .line 685
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->i:I

    .line 686
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->e:Landroid/graphics/Paint;

    .line 687
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 690
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->f:Landroid/graphics/Paint;

    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 692
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->g:I

    .line 694
    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->h:I

    .line 695
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V

    .line 721
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 699
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->d:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$500(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->getItemCount()I

    move-result v0

    .line 700
    .local v0, "itemCount":I
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v1

    .line 702
    .local v1, "pos":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 703
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->a:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 704
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->c:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 712
    :goto_0
    return-void

    .line 705
    :cond_0
    add-int/lit8 v2, v0, -0x2

    if-ne v1, v2, :cond_1

    .line 706
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->b:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 707
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->a:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 709
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->b:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 710
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;->b:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
