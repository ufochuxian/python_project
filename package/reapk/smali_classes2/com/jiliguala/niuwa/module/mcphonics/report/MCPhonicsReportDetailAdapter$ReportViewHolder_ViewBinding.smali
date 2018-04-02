.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;

    .line 24
    const v0, 0x7f0902c8

    const-string v1, "field \'lessonIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonIcon:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0902cd

    const-string v1, "field \'lessonTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonTitle:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0902cb

    const-string v1, "field \'lessonReportImg\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f090455

    const-string v1, "field \'reportDetailHead\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->reportDetailHead:Landroid/widget/RelativeLayout;

    .line 28
    const v0, 0x7f09027f

    const-string v1, "field \'iconRight\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->iconRight:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;

    .line 35
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;

    .line 38
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonIcon:Landroid/widget/ImageView;

    .line 39
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonTitle:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->reportDetailHead:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->iconRight:Landroid/widget/ImageView;

    .line 43
    return-void
.end method
