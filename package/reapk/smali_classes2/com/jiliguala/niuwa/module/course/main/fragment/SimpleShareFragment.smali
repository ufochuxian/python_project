.class public Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final SINGLE_BTN:I = 0x1

.field public static final SOCIAL_GROUP_2:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private height:I

.field private mBottomContainer:Landroid/view/View;

.field private mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

.field private mPengyouquanContainer:Landroid/view/View;

.field public mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

.field protected mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

.field private mShareToPengYouQuanTxt:Landroid/widget/TextView;

.field private mShareToWeChatTxt:Landroid/widget/TextView;

.field private mShowTitle:Z

.field private mSingleBtnTxt:Landroid/widget/TextView;

.field protected mSocialGroup:Landroid/view/View;

.field private mSubTitleTv:Landroid/widget/TextView;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTopIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

.field private mTopResId:I

.field private mWeiBoBtn:Landroid/view/View;

.field private mWeixincontainer:Landroid/view/View;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->TAG:Ljava/lang/String;

    .line 42
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShowTitle:Z

    return-void
.end method

.method private doShare(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mPid:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mThumbUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 277
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 68
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    .line 69
    .local v0, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    .end local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;-><init>()V

    .line 72
    .restart local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->dismissAllowingStateLoss()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;->onDismiss()V

    .line 160
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const v1, 0x7f0f01b6

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->dismissAllowingStateLoss()V

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 225
    :sswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 229
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->doShare(Landroid/view/View;)V

    goto :goto_0

    .line 235
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mType:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->doShare(Landroid/view/View;)V

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    const v0, 0x7f0f01b7

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->onClickShareWeiBo()V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mPid:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v11, v10, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    move-object v10, v9

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto/16 :goto_0

    .line 254
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->dismiss()V

    goto/16 :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0903d0 -> :sswitch_1
        0x7f0904e7 -> :sswitch_1
        0x7f0904ec -> :sswitch_0
        0x7f0904ed -> :sswitch_2
        0x7f0904ee -> :sswitch_3
        0x7f09061c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onClickShareWeiBo()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x2

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->width:I

    .line 118
    iput v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->height:I

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->width:I

    .line 121
    iput v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->height:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 134
    const v1, 0x7f1000b4

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setStyle(II)V

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 136
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 139
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    const v1, 0x7f0b012e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0903d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mPengyouquanContainer:Landroid/view/View;

    .line 173
    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mBottomContainer:Landroid/view/View;

    .line 174
    const v1, 0x7f09061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeixincontainer:Landroid/view/View;

    .line 175
    const v1, 0x7f0904e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToPengYouQuanTxt:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToPengYouQuanTxt:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v1, 0x7f0904ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToWeChatTxt:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToWeChatTxt:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v1, 0x7f090508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSocialGroup:Landroid/view/View;

    .line 180
    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTitleTv:Landroid/widget/TextView;

    .line 181
    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSubTitleTv:Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSubTitleTv:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShowTitle:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    const v1, 0x7f0904ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeiBoBtn:Landroid/view/View;

    .line 184
    const v1, 0x7f0904ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v1, 0x7f090597

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTopIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    .line 187
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeiBoBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v0

    .line 182
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->dismissAllowingStateLoss()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;->onDismiss()V

    .line 150
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setWidthHeight()V

    .line 129
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v3, 0x7f0800b1

    const v2, 0x7f0600fe

    .line 193
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ac;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 194
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareType:I

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->updateStyle(I)V

    .line 195
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mBottomContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    if-nez v1, :cond_3

    const v1, 0x7f080377

    :goto_0
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->title:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSubTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->subTitle:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mPengyouquanContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    if-nez v1, :cond_8

    move v1, v3

    :goto_5
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeixincontainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    if-nez v1, :cond_9

    move v1, v3

    :goto_6
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    if-nez v5, :cond_a

    :goto_7
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    if-nez v1, :cond_b

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSignleBtnTxtStr:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, ""

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToPengYouQuanTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    if-nez v1, :cond_d

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToWeChatTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    if-nez v4, :cond_e

    :goto_b
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareToWeChatTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTopIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mRatio:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_f

    const v1, 0x3f3ae148    # 0.73f

    :goto_c
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setRatio(F)V

    .line 213
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIcon:I

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTopIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIcon:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 217
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIconPlaceHolder:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTopIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 219
    :cond_2
    return-void

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    goto/16 :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    goto/16 :goto_1

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 198
    :cond_6
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    goto/16 :goto_3

    .line 199
    :cond_7
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->subTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    goto/16 :goto_5

    .line 201
    :cond_9
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    goto/16 :goto_6

    .line 202
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    goto/16 :goto_7

    .line 203
    :cond_b
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    goto/16 :goto_8

    .line 204
    :cond_c
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSignleBtnTxtStr:Ljava/lang/String;

    goto/16 :goto_9

    .line 205
    :cond_d
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    goto/16 :goto_a

    .line 206
    :cond_e
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    goto/16 :goto_b

    .line 212
    :cond_f
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mRatio:F

    goto/16 :goto_c
.end method

.method public setOnDismissListener(Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment$OnDismissListener;

    .line 96
    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mTopResId:I

    .line 264
    return-void
.end method

.method public setShareInfoTemplete(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;)V
    .locals 0
    .param p1, "shareInfoTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareInfoTemp:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    .line 77
    return-void
.end method

.method public setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .line 281
    return-void
.end method

.method protected setWidthHeight()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 164
    .local v0, "window":Landroid/view/Window;
    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->width:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 165
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 166
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 104
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showTitle(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mShowTitle:Z

    .line 268
    return-void
.end method

.method public updateStyle(I)V
    .locals 4
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeiBoBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mWeiBoBtn:Landroid/view/View;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->mSingleBtnTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 87
    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
