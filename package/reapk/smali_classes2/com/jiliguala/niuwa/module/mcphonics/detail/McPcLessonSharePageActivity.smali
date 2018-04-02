.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final PLAN_A:Ljava/lang/String; = "A"


# instance fields
.field public lessonIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902c8
    .end annotation
.end field

.field private listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

.field public mBackIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090096
    .end annotation
.end field

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mEnabelPurchaseEvent:Z

.field private mId:Ljava/lang/String;

.field private mIsRefreshScore:Z

.field public mShareTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904ef
    .end annotation
.end field

.field private shareUrl:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 59
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    return-void
.end method

.method private handleIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 122
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    .line 123
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->title:Ljava/lang/String;

    .line 124
    const-string v2, "thumb"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "bid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/m/f;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lesson-share.html?lid=%s&bid=%s&plan=%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "A"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    .line 127
    const-string v2, "isRefreshScore"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mIsRefreshScore:Z

    .line 128
    const-string v2, "flag"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mEnabelPurchaseEvent:Z

    .line 131
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initUi()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->lessonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 108
    return-void
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v1, :cond_0

    .line 98
    const-string v1, "Type"

    const-string v2, "Lesson Complete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    const-string v1, "ABtest"

    const-string v2, "A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Share View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void

    .line 100
    :cond_0
    const-string v1, "Type"

    const-string v2, "Sub Lesson Repeat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setShareTxt()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    const-string v1, "Wow\uff01\u83b7\u5f97\u4e09\u661f\u6ee1\u5206\uff01\u5feb\u5206\u4eab\u7ed9\u5c0f\u4f19\u4f34\u4eec\u5427\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    const-string v1, "\u8bfe\u7a0b\u5b8c\u6210\u54af\uff01\u5feb\u5206\u4eab\u7ed9\u670b\u53cb\u5427\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method goShare(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0903d0,
            0x7f0904e7,
            0x7f09061c,
            0x7f0904ec
        }
    .end annotation

    .prologue
    const v8, 0x7f0904ec

    const v0, 0x7f0904e7

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 151
    :sswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6211\u548c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    .line 156
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u300d\u8bfe\u7a0b\uff01"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "shareTitle":Ljava/lang/String;
    const-string v2, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 158
    .local v2, "content":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v4, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const-string v7, "Lesson Complete"

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Lesson Complete"

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const-string v7, "Sub Lesson Repeat"

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Sub Lesson Repeat"

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v1    # "shareTitle":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6211\u548c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u300d\u8bfe\u7a0b\uff01"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .restart local v1    # "shareTitle":Ljava/lang/String;
    const-string v2, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 178
    .restart local v2    # "content":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v0, :cond_4

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v6, "Lesson Complete"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    invoke-static {v0, v4, v6, v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Lesson Complete"

    move v0, v8

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto/16 :goto_0

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v6, "Sub Lesson Repeat"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    invoke-static {v0, v4, v6, v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Sub Lesson Repeat"

    move v0, v8

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x7f0903d0 -> :sswitch_0
        0x7f0904e7 -> :sswitch_0
        0x7f0904ec -> :sswitch_1
        0x7f09061c -> :sswitch_1
    .end sparse-switch
.end method

.method public onBack()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->finish()V

    .line 137
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mEnabelPurchaseEvent:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1034

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 84
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->setContentView(I)V

    .line 86
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 88
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->handleIntent()V

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->initUi()V

    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->setShareTxt()V

    .line 92
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->reportAmplitude()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 195
    return-void
.end method
