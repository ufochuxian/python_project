.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 652
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 653
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->a:Landroid/view/View;

    .line 654
    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->c:Landroid/widget/ImageView;

    .line 655
    const v0, 0x7f0901ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->d:Landroid/widget/TextView;

    .line 656
    const v0, 0x7f0903b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->b:Landroid/widget/ImageView;

    .line 657
    const v0, 0x7f090187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->e:Landroid/view/View;

    .line 658
    const v0, 0x7f090480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->f:Landroid/view/View;

    .line 659
    const v0, 0x7f0905f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->g:Landroid/view/View;

    .line 660
    return-void
.end method
