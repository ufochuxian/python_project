.class public Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

.field private view2131296313:Landroid/view/View;

.field private view2131296406:Landroid/view/View;

.field private view2131296773:Landroid/view/View;

.field private view2131296776:Landroid/view/View;

.field private view2131297165:Landroid/view/View;

.field private view2131297501:Landroid/view/View;

.field private view2131297506:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Landroid/view/View;)V
    .locals 8
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v7, 0x7f0904e2

    const v6, 0x7f0904dd

    const v5, 0x7f090208

    const v4, 0x7f090205

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .line 42
    const v1, 0x7f090273

    const-string v2, "field \'icon\'"

    const-class v3, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->icon:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 43
    const v1, 0x7f09017d

    const-string v2, "field \'courseTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTitle:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f09051b

    const-string v2, "field \'startReviewContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startReviewContainer:Landroid/widget/RelativeLayout;

    .line 45
    const v1, 0x7f09038a

    const-string v2, "field \'noReviewContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewContainer:Landroid/widget/RelativeLayout;

    .line 46
    const v1, 0x7f090402

    const-string v2, "field \'progressBar\'"

    const-class v3, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->progressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    .line 47
    const v1, 0x7f090405

    const-string v2, "field \'progressContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->progressContainer:Landroid/widget/RelativeLayout;

    .line 48
    const v1, 0x7f090207

    const-string v2, "field \'finishReviewContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishReviewContainer:Landroid/widget/RelativeLayout;

    .line 49
    const-string v1, "field \'finishContinue\' and method \'startReview\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'finishContinue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishContinue:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296773:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v1, "field \'finishTomorrow\' and method \'onReviewTomorrow\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v1, "field \'finishTomorrow\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishTomorrow:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296776:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f090279

    const-string v2, "field \'mIconHasReview\'"

    const-class v3, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mIconHasReview:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 68
    const v1, 0x7f09017f

    const-string v2, "field \'courseTxtHasReview\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTxtHasReview:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0903ff

    const-string v2, "field \'mProgressTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mProgressTxt:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f090459

    const-string v2, "field \'mReviewProgressTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mReviewProgressTxt:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f090164

    const-string v2, "field \'mContainueStudyContainer\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mContainueStudyContainer:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0904d2

    const-string v2, "field \'mShareContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mShareContainer:Landroid/widget/RelativeLayout;

    .line 73
    const-string v1, "field \'pengyouquanContainer\' and method \'onPengYouQuanClick\'"

    invoke-static {p2, v6, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    const-string v1, "field \'pengyouquanContainer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v6, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->pengyouquanContainer:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297501:Landroid/view/View;

    .line 76
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-string v1, "field \'weixinContainer\' and method \'onWeiXinClick\'"

    invoke-static {p2, v7, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    const-string v1, "field \'weixinContainer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v7, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->weixinContainer:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297506:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f09038c

    const-string v2, "field \'noReViewTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReViewTxt:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f09038b

    const-string v2, "field \'noReviewSubTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewSubTxt:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f09009f

    const-string v2, "field \'bearIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f090175

    const-string v2, "field \'courseDoneTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseDoneTxt:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f090096

    const-string v2, "method \'back\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 97
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$5;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f090039

    const-string v2, "method \'startReview\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296313:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$6;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f09038d

    const-string v2, "method \'onReviewTomorrow\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297165:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$7;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .line 125
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .line 128
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->icon:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 129
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTitle:Landroid/widget/TextView;

    .line 130
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startReviewContainer:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewContainer:Landroid/widget/RelativeLayout;

    .line 132
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->progressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    .line 133
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->progressContainer:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishReviewContainer:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishContinue:Landroid/widget/TextView;

    .line 136
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishTomorrow:Landroid/widget/TextView;

    .line 137
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mIconHasReview:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 138
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTxtHasReview:Landroid/widget/TextView;

    .line 139
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mProgressTxt:Landroid/widget/TextView;

    .line 140
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mReviewProgressTxt:Landroid/widget/TextView;

    .line 141
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mContainueStudyContainer:Landroid/widget/LinearLayout;

    .line 142
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mShareContainer:Landroid/widget/RelativeLayout;

    .line 143
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->pengyouquanContainer:Landroid/widget/RelativeLayout;

    .line 144
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->weixinContainer:Landroid/widget/RelativeLayout;

    .line 145
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReViewTxt:Landroid/widget/TextView;

    .line 146
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewSubTxt:Landroid/widget/TextView;

    .line 147
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    .line 148
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseDoneTxt:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296773:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296773:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296776:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296776:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297501:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297501:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297506:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297506:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296406:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296313:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131296313:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297165:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;->view2131297165:Landroid/view/View;

    .line 164
    return-void
.end method
