.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 713
    const v0, 0x7f090480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;->a:Landroid/view/View;

    .line 715
    return-void
.end method
