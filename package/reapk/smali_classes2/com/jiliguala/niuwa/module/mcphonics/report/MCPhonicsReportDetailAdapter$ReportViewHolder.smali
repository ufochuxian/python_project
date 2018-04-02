.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportViewHolder"
.end annotation


# instance fields
.field final synthetic b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

.field iconRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09027f
    .end annotation
.end field

.field lessonIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902c8
    .end annotation
.end field

.field lessonReportImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902cb
    .end annotation
.end field

.field lessonTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902cd
    .end annotation
.end field

.field reportDetailHead:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090455
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->b:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .line 299
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 300
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 301
    return-void
.end method
