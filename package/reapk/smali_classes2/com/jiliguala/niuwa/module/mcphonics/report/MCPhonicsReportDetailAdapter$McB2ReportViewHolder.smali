.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McB2ReportViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

.field sentenceContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904bc
    .end annotation
.end field

.field songContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09050a
    .end annotation
.end field

.field songTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09050d
    .end annotation
.end field

.field wordsContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09062b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    .line 344
    return-void
.end method
