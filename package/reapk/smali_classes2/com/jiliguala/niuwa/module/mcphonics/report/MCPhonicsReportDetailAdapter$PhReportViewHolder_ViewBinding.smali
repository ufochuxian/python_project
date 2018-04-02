.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder_ViewBinding;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;Landroid/view/View;)V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    .line 24
    const v0, 0x7f090055

    const-string v1, "field \'alphabetTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090052

    const-string v1, "field \'alphabet\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabet:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090411

    const-string v1, "field \'pronunciationTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciationTitle:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f090410

    const-string v1, "field \'pronunciation\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciation:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f090054

    const-string v1, "field \'alphabetPronContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetPronContainer:Landroid/widget/LinearLayout;

    .line 29
    const v0, 0x7f0901f0

    const-string v1, "field \'expandWordTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWordTitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0901ef

    const-string v1, "field \'expandWord\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWord:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f090155

    const-string v1, "field \'commonWordTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->commonWordTitle:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f090154

    const-string v1, "field \'commonWord\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->commonWord:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f090362

    const-string v1, "field \'moreExpandWordContainer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordContainer:Landroid/widget/RelativeLayout;

    .line 34
    const v0, 0x7f090363

    const-string v1, "field \'moreExpandWordTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordTitle:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f090361

    const-string v1, "field \'moreExpandWord\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWord:Landroid/widget/TextView;

    .line 36
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    .line 41
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    .line 44
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabet:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciationTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciation:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetPronContainer:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWordTitle:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWord:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->commonWordTitle:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->commonWord:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordContainer:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordTitle:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWord:Landroid/widget/TextView;

    .line 57
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->unbind()V

    .line 58
    return-void
.end method
