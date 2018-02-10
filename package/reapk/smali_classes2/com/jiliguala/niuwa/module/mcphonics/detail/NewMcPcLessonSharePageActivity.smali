.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final PLAN_B:Ljava/lang/String; = "B"

.field public static final REQUEST_CODE_NO_EXIT:I = 0xa2

.field public static final REQUEST_CODE_WITH_EXIT:I = 0xa1


# instance fields
.field private listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

.field public mBackIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090096
    .end annotation
.end field

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mEnabelPurchaseEvent:Z

.field public mGradeIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09023d
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mIsRefreshScore:Z

.field public mLessonIcon:Lcom/makeramen/roundedimageview/RoundedImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090176
    .end annotation
.end field

.field private mScore:F

.field public mShareTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090567
    .end annotation
.end field

.field private shareUrl:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    return-void
.end method

.method private getScore()Ljava/lang/String;
    .locals 10

    .prologue
    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v6, 0x42b40000    # 90.0f

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, "v":F
    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 154
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 155
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v7

    const/high16 v5, 0x42980000    # 76.0f

    add-float v3, v4, v5

    .line 163
    .end local v2    # "random":Ljava/util/Random;
    :cond_0
    :goto_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, ".0"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "p":Ljava/lang/String;
    return-object v1

    .line 156
    .end local v0    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_2

    .line 157
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v7

    const/high16 v5, 0x42a60000    # 83.0f

    add-float v3, v4, v5

    goto :goto_0

    .line 158
    :cond_2
    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    .line 159
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    add-float v3, v4, v6

    goto :goto_0

    .line 160
    :cond_3
    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 161
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const v5, 0x42bfcccd    # 95.9f

    add-float v3, v4, v5

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 171
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    .line 172
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->title:Ljava/lang/String;

    .line 173
    const-string v2, "thumb"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "bid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lesson-share.html?lid=%s&bid=%s&plan=%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "B"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    .line 176
    const-string v2, "isRefreshScore"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mIsRefreshScore:Z

    .line 177
    const-string v2, "score"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    .line 178
    const-string v2, "flag"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mEnabelPurchaseEvent:Z

    .line 181
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initUi()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mLessonIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 118
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->isOverBScore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mGradeIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->getScoreImageRes(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_0
    return-void
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v1, :cond_0

    .line 108
    const-string v1, "Type"

    const-string v2, "Lesson Complete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    const-string v1, "ABtest"

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Share View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void

    .line 110
    :cond_0
    const-string v1, "Type"

    const-string v2, "Sub Lesson Repeat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getScoreImageRes(F)I
    .locals 5
    .param p1, "score"    # F

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v2, 0x428c0000    # 70.0f

    const/high16 v1, 0x42340000    # 45.0f

    .line 124
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    .line 125
    const v0, 0x7f080179

    .line 136
    :goto_0
    return v0

    .line 126
    :cond_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    .line 127
    const v0, 0x7f080178

    goto :goto_0

    .line 128
    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    cmpg-float v0, p1, v3

    if-gez v0, :cond_2

    .line 129
    const v0, 0x7f08017b

    goto :goto_0

    .line 130
    :cond_2
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    .line 131
    const v0, 0x7f08017a

    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    .line 133
    const v0, 0x7f08017c

    goto :goto_0

    .line 136
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goShare(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090613,
            0x7f0904e2,
            0x7f09022e,
            0x7f0904db
        }
    .end annotation

    .prologue
    const v6, 0x7f0904e2

    const v0, 0x7f0904dd

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 201
    :sswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6211\u548c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u300d\u8bfe\u7a0b\uff01"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "shareTitle":Ljava/lang/String;
    const-string v2, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 208
    .local v2, "content":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v4, :cond_2

    .line 209
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Lesson Complete"

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/l/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Sub Lesson Repeat"

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v1    # "shareTitle":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6211\u548c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u300d\u8bfe\u7a0b\uff01"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .restart local v1    # "shareTitle":Ljava/lang/String;
    const-string v2, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 226
    .restart local v2    # "content":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mIsRefreshScore:Z

    if-nez v0, :cond_4

    .line 227
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Lesson Complete"

    move v0, v6

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->listener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/l/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto/16 :goto_0

    .line 229
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->thumb:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->shareUrl:Ljava/lang/String;

    const-string v11, "Sub Lesson Repeat"

    move v0, v6

    move-object v6, v3

    move-object v7, v3

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x7f09022e -> :sswitch_0
        0x7f0904db -> :sswitch_0
        0x7f0904e2 -> :sswitch_1
        0x7f090613 -> :sswitch_1
    .end sparse-switch
.end method

.method public isOverBScore()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mScore:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->finish()V

    .line 187
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mEnabelPurchaseEvent:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1034

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->setLayout()V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->handleIntent()V

    .line 95
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->initUi()V

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->setShareTxt()V

    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->reportAmplitude()V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/l/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 241
    return-void
.end method

.method protected setLayout()V
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->setContentView(I)V

    .line 103
    return-void
.end method

.method protected setShareTxt()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->isOverBScore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9d\u8d1d\u51fb\u8d25\u4e86<font color=\'#FF0000\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%</font>\u7684\u5471\u5b9d\uff0c\n\u5feb\u6765\u70ab\u8000\u4e00\u4e0b\u5427!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    const-string v2, "\u606d\u559c\u4f60\u5b8c\u6210\u4e86\uff0c\n\u5feb\u5206\u4eab\u7ed9\u670b\u53cb\u5427"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
