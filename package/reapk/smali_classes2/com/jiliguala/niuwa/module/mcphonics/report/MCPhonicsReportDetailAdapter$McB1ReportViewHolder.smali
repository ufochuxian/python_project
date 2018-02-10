.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McB1ReportViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

.field songsContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090505
    .end annotation
.end field

.field touchContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0905ae
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    .line 328
    return-void
.end method
