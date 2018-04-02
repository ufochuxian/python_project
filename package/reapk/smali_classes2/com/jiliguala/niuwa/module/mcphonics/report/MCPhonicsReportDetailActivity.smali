.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;"
    }
.end annotation


# static fields
.field public static final REPORT_DETAIL_TYPE_MC:Ljava/lang/String; = "MC"

.field public static final REPORT_DETAIL_TYPE_PH:Ljava/lang/String; = "PH"


# instance fields
.field backIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090096
    .end annotation
.end field

.field private mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

.field private mBid:Ljava/lang/String;

.field private mLv:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field reportRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090456
    .end annotation
.end field

.field topBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09059f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    return-object v0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "typ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mBid:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lv"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity$a;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 101
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0123

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0f015d

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 81
    const-string v1, "MC"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "MC Outline View"

    .line 82
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 83
    return-void

    .line 81
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    const-string v0, "Phonics Outline View"

    goto :goto_0
.end method

.method private requestServer()V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mBid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mLv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;->requestServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getUi()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public onBack()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->finish()V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->handleIntent()V

    .line 65
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->requestServer()V

    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportAmplitude()V

    .line 68
    return-void
.end method

.method public showData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->update(Ljava/util/List;)V

    .line 107
    return-void
.end method
