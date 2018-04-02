.class public Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/base/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/BabyBirthdayPresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/common/base/e;"
    }
.end annotation


# static fields
.field public static final BIRTHDAY_FRAGMENT:Ljava/lang/String; = "birthday_fragment"

.field private static final LEGACY_USER_REQUEST_LOGIN:I = 0x1000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBabyAge:I

.field private mBabyAgeTxt:Landroid/widget/TextView;

.field private mBabyBirthdayIcon:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/Button;

.field private mDatePicker:Lnet/simonvt/datepicker/DatePicker;

.field private mDay:I

.field private mEditText:Landroid/widget/EditText;

.field private mHasAccount:Landroid/widget/TextView;

.field private mMonth:I

.field private mRootView:Landroid/view/View;

.field private mType:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;III)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->onDateChange(III)V

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mYear:I

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mMonth:I

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDay:I

    .line 94
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBtnNext:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBtnNext:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mHasAccount:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/datepicker/DatePicker;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyBirthdayIcon:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mYear:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mMonth:I

    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDay:I

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/simonvt/datepicker/DatePicker;->a(IIILnet/simonvt/datepicker/DatePicker$a;)V

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAgeTxt:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAgeTxt:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mYear:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mMonth:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDay:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->onDateChange(III)V

    .line 125
    return-void
.end method

.method private onDateChange(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "babyBDStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 131
    iput v5, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    .line 133
    :try_start_0
    const-string v3, "yyyy-MM-dd"

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/common/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/d;->b(Ljava/util/Date;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    if-gez v3, :cond_0

    .line 139
    const-string v2, "\u5907\u5b55\u4e2d"

    .line 149
    .local v2, "text":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAgeTxt:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAgeTxt:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBtnNext:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 152
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyBirthdayIcon:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/onboading/BabyInfoUtil;->showBabyIcon(ILandroid/widget/ImageView;)V

    .line 154
    return-void

    .line 134
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 141
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 142
    const-string v2, "\u60a8\u5b9d\u8d1d<font color=\'#2FCA89\'>5</font>\u5c81\u4e86"

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 144
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    const-string v2, "\u60a8\u5b9d\u8d1d<font color=\'#2FCA89\'>5+</font>\u5c81\u4e86"

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1

    .line 147
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u60a8\u5b9d\u8d1d<font color=\'#2FCA89\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>\u5c81\u4e86"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private setViewListener()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mHasAccount:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/BabyBirthdayPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/BabyBirthdayPresenter;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyBirthdayPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyBirthdayPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .line 164
    .local v3, "nickNameFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
    if-nez v3, :cond_1

    .line 165
    new-instance v3, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .end local v3    # "nickNameFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;-><init>()V

    .line 167
    .restart local v3    # "nickNameFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "SOURCE"

    iget v5, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mBabyAge:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 178
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setBirthday(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 184
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "nickNameFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x1000

    invoke-virtual {p0, v2, v4}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x7f0900c9 -> :sswitch_0
        0x7f090261 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Baby Age View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->initData()V

    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->initView()V

    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->setViewListener()V

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setDescendantFocusability(I)V

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->mType:I

    .line 57
    return-void
.end method
