.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/RatingBar;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 686
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->a:Landroid/view/View;

    .line 687
    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->c:Landroid/widget/ImageView;

    .line 688
    const v0, 0x7f0901ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->d:Landroid/widget/TextView;

    .line 689
    const v0, 0x7f0903b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->b:Landroid/widget/ImageView;

    .line 690
    const v0, 0x7f09042c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->e:Landroid/widget/RatingBar;

    .line 691
    const v0, 0x7f0902f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->f:Landroid/widget/ImageView;

    .line 692
    const v0, 0x7f090480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->g:Landroid/view/View;

    .line 693
    const v0, 0x7f0905f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->h:Landroid/view/View;

    .line 695
    return-void
.end method
