.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->getItemCount()I

    move-result v1

    .line 118
    .local v1, "itemCount":I
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 119
    .local v0, "childPosition":I
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 120
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 121
    :cond_0
    return-void
.end method
