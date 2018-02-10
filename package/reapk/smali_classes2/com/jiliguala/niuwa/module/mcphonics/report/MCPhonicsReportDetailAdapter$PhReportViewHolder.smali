.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhReportViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

.field alphabet:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090052
    .end annotation
.end field

.field alphabetPronContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090054
    .end annotation
.end field

.field alphabetTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090055
    .end annotation
.end field

.field commonWord:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090154
    .end annotation
.end field

.field commonWordTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090155
    .end annotation
.end field

.field expandWord:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0901ef
    .end annotation
.end field

.field expandWordTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0901f0
    .end annotation
.end field

.field moreExpandWord:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09035a
    .end annotation
.end field

.field moreExpandWordContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09035b
    .end annotation
.end field

.field moreExpandWordTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09035c
    .end annotation
.end field

.field pronunciation:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090409
    .end annotation
.end field

.field pronunciationTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09040a
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    .line 377
    return-void
.end method
