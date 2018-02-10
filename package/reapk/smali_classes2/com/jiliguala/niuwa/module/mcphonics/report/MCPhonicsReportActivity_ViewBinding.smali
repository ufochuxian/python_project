.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

.field private view2131296286:Landroid/view/View;

.field private view2131296406:Landroid/view/View;

.field private view2131296947:Landroid/view/View;

.field private view2131297053:Landroid/view/View;

.field private view2131297235:Landroid/view/View;

.field private view2131297250:Landroid/view/View;

.field private view2131297583:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v8, 0x7f09052f

    const v7, 0x7f0903e2

    const v6, 0x7f0903d3

    const v5, 0x7f09031d

    const v4, 0x7f0902b3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .line 47
    const v1, 0x7f09008d

    const-string v2, "field \'babyIcon\'"

    const-class v3, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyIcon:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 48
    const v1, 0x7f090091

    const-string v2, "field \'babyName\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyName:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f090089

    const-string v2, "field \'babyContainer\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyContainer:Landroid/widget/LinearLayout;

    .line 50
    const v1, 0x7f090619

    const-string v2, "field \'wordCount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordCount:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f090620

    const-string v2, "field \'wordTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordTxt:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0904b3

    const-string v2, "field \'sentenceCount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceCount:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0904b9

    const-string v2, "field \'sentenceTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceTxt:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0903dd

    const-string v2, "field \'phonicsCount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsCount:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0903e5

    const-string v2, "field \'phonicsTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsTxt:Landroid/widget/TextView;

    .line 56
    const-string v1, "field \'largeLv\' and method \'onChooseMcLv\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'largeLv\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296947:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f0904b4

    const-string v2, "field \'sentenceProgress\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgress:Landroid/view/View;

    .line 66
    const v1, 0x7f0904b5

    const-string v2, "field \'sentenceProgressContainer\'"

    const-class v3, Landroid/view/ViewGroup;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressContainer:Landroid/view/ViewGroup;

    .line 67
    const v1, 0x7f0904b6

    const-string v2, "field \'sentenceProgressText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f09061b

    const-string v2, "field \'wordProgress\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgress:Landroid/view/View;

    .line 69
    const v1, 0x7f09061c

    const-string v2, "field \'wordProgressContainer\'"

    const-class v3, Landroid/view/ViewGroup;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressContainer:Landroid/view/ViewGroup;

    .line 70
    const v1, 0x7f09061d

    const-string v2, "field \'wordProgressText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressText:Landroid/widget/TextView;

    .line 71
    const-string v1, "field \'mcReportContainer\' and method \'goMcDetail\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    const-string v1, "field \'mcReportContainer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mcReportContainer:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297053:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0903e3

    const-string v2, "field \'phonicsReportTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsReportTitle:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0903df

    const-string v2, "field \'phonicsProgress\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgress:Landroid/view/View;

    .line 82
    const v1, 0x7f0903e0

    const-string v2, "field \'phonicsProgressContainer\'"

    const-class v3, Landroid/view/ViewGroup;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressContainer:Landroid/view/ViewGroup;

    .line 83
    const v1, 0x7f0903e1

    const-string v2, "field \'phonicsProgressText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressText:Landroid/widget/TextView;

    .line 84
    const-string v1, "field \'phonicsReportContainer\' and method \'goPhDetail\'"

    invoke-static {p2, v7, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    const-string v1, "field \'phonicsReportContainer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v7, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsReportContainer:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297250:Landroid/view/View;

    .line 87
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0902d9

    const-string v2, "field \'listenTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->listenTime:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f090608

    const-string v2, "field \'watchTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->watchTime:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0903ee

    const-string v2, "field \'playTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->playTime:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f09042b

    const-string v2, "field \'readTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->readTime:Landroid/widget/TextView;

    .line 97
    const-string v1, "field \'studyRecord\' and method \'goRecord\'"

    invoke-static {p2, v8, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    const-string v1, "field \'studyRecord\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v8, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->studyRecord:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297583:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const-string v1, "field \'phLv\' and method \'onChooseMcLv\'"

    invoke-static {p2, v6, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    const-string v1, "field \'phLv\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v6, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phLv:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297235:Landroid/view/View;

    .line 109
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$5;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f090165

    const-string v2, "field \'continuousDays\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->continuousDays:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f0905a8

    const-string v2, "field \'totalDays\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->totalDays:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f090123

    const-string v2, "field \'checkInTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->checkInTxt:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f090122

    const-string v2, "field \'redDot\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->redDot:Landroid/widget/ImageView;

    .line 119
    const v1, 0x7f090239

    const-string v2, "field \'giftIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->giftIcon:Landroid/widget/ImageView;

    .line 120
    const v1, 0x7f09061e

    const-string v2, "field \'wordProgressTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressTitle:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0904b7

    const-string v2, "field \'sentenceProgressTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f0903d4

    const-string v2, "field \'phProgressTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phProgressTitle:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f09061f

    const-string v2, "field \'wordStar\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordStar:Landroid/widget/ImageView;

    .line 124
    const v1, 0x7f0904b8

    const-string v2, "field \'sentenceStar\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceStar:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f0903e4

    const-string v2, "field \'phonicsStar\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsStar:Landroid/widget/ImageView;

    .line 126
    const v1, 0x7f09001e

    const-string v2, "field \'actionCheckIn\' and method \'goRegister\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->actionCheckIn:Landroid/view/View;

    .line 128
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296286:Landroid/view/View;

    .line 129
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$6;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f090595

    const-string v2, "field \'topBarTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->topBarTitle:Landroid/widget/TextView;

    .line 136
    const v1, 0x7f0902b4

    const-string v2, "field \'largeTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeTitle:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f09058a

    const-string v2, "field \'toolsTitleTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->toolsTitleTxt:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f09044c

    const-string v2, "field \'reportCount\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportCount:Landroid/widget/LinearLayout;

    .line 139
    const v1, 0x7f090502

    const-string v2, "field \'songCountTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCountTitle:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f090501

    const-string v2, "field \'songCount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCount:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f090096

    const-string v2, "method \'onBack\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 143
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding$7;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .line 155
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .line 158
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyIcon:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 159
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyName:Landroid/widget/TextView;

    .line 160
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyContainer:Landroid/widget/LinearLayout;

    .line 161
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordCount:Landroid/widget/TextView;

    .line 162
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordTxt:Landroid/widget/TextView;

    .line 163
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceCount:Landroid/widget/TextView;

    .line 164
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceTxt:Landroid/widget/TextView;

    .line 165
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsCount:Landroid/widget/TextView;

    .line 166
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsTxt:Landroid/widget/TextView;

    .line 167
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    .line 168
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgress:Landroid/view/View;

    .line 169
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressContainer:Landroid/view/ViewGroup;

    .line 170
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    .line 171
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgress:Landroid/view/View;

    .line 172
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressContainer:Landroid/view/ViewGroup;

    .line 173
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressText:Landroid/widget/TextView;

    .line 174
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mcReportContainer:Landroid/widget/RelativeLayout;

    .line 175
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsReportTitle:Landroid/widget/TextView;

    .line 176
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgress:Landroid/view/View;

    .line 177
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressContainer:Landroid/view/ViewGroup;

    .line 178
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressText:Landroid/widget/TextView;

    .line 179
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsReportContainer:Landroid/widget/RelativeLayout;

    .line 180
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->listenTime:Landroid/widget/TextView;

    .line 181
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->watchTime:Landroid/widget/TextView;

    .line 182
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->playTime:Landroid/widget/TextView;

    .line 183
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->readTime:Landroid/widget/TextView;

    .line 184
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->studyRecord:Landroid/widget/TextView;

    .line 185
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phLv:Landroid/widget/TextView;

    .line 186
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->continuousDays:Landroid/widget/TextView;

    .line 187
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->totalDays:Landroid/widget/TextView;

    .line 188
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->checkInTxt:Landroid/widget/TextView;

    .line 189
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->redDot:Landroid/widget/ImageView;

    .line 190
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->giftIcon:Landroid/widget/ImageView;

    .line 191
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressTitle:Landroid/widget/TextView;

    .line 192
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    .line 193
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phProgressTitle:Landroid/widget/TextView;

    .line 194
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordStar:Landroid/widget/ImageView;

    .line 195
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceStar:Landroid/widget/ImageView;

    .line 196
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsStar:Landroid/widget/ImageView;

    .line 197
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->actionCheckIn:Landroid/view/View;

    .line 198
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->topBarTitle:Landroid/widget/TextView;

    .line 199
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeTitle:Landroid/widget/TextView;

    .line 200
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->toolsTitleTxt:Landroid/widget/TextView;

    .line 201
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportCount:Landroid/widget/LinearLayout;

    .line 202
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCountTitle:Landroid/widget/TextView;

    .line 203
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCount:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296947:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296947:Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297053:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297053:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297250:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297250:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297583:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297583:Landroid/view/View;

    .line 213
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297235:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131297235:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296286:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296286:Landroid/view/View;

    .line 217
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 219
    return-void
.end method
