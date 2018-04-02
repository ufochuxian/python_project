.class public Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAbstract:Ljava/lang/String;

.field private mAge:Ljava/lang/String;

.field private mBottomContainer:Landroid/view/View;

.field public mBottomContainerBg:I

.field private mCat:Ljava/lang/String;

.field protected mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

.field private mEventName:Ljava/lang/String;

.field private mIsLastSubCourse:Z

.field private mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

.field protected mPengYouQuanContainer:Landroid/widget/RelativeLayout;

.field private mPid:Ljava/lang/String;

.field public mRatio:F

.field private mRootView:Landroid/view/View;

.field protected mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

.field public mSingleSocialPengyouquan:Landroid/view/View;

.field public mSingleSocialWeiBo:Landroid/view/View;

.field public mSocialGroup:Landroid/view/View;

.field private mSource:Ljava/lang/String;

.field public mSubTitle:Landroid/widget/TextView;

.field private mSubTtl:Ljava/lang/String;

.field private mThumbUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field public mTitleTxt:Landroid/widget/TextView;

.field private mTtl:Ljava/lang/String;

.field private mType:I

.field private mUnitDataTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field private mUnitID:Ljava/lang/String;

.field private mUnitIndex:I

.field public mWeiBoBtn:Landroid/widget/TextView;

.field protected mWeiXinContainer:Landroid/widget/RelativeLayout;

.field public topIconRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->TAG:Ljava/lang/String;

    .line 46
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 51
    const-string v0, "Lesson Report Share Dialog"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mEventName:Ljava/lang/String;

    .line 66
    const v0, 0x7f08031b

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->topIconRes:I

    return-void
.end method

.method private doShare(Landroid/view/View;)V
    .locals 27
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v12, "lesson complete"

    .line 315
    .local v12, "source":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAbstract:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitID:Ljava/lang/String;

    invoke-static/range {v1 .. v13}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v12    # "source":Ljava/lang/String;
    :goto_1
    return-void

    .line 314
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    if-nez v1, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v12, "lesson complete"

    .line 319
    .restart local v12    # "source":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAbstract:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v1 .. v12}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v12    # "source":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto :goto_1

    .line 318
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_2

    .line 321
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitDataTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->icon:Ljava/lang/String;

    const-string v2, "completed"

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "iconUrl":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v26

    .line 323
    .local v26, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    const-string v15, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 324
    .local v15, "content":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u548c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v26 .. v26}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u5b8c\u6210\u4e86\u300c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitDataTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300d\u5355\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "unit complete"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v13 .. v25}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 86
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .line 87
    .local v0, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .end local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;-><init>()V

    .line 90
    .restart local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getShareText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->dismissAllowingStateLoss()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 178
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0f01b6

    const/4 v9, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->dismissAllowingStateLoss()V

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 258
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v11, "lesson complete"

    .line 263
    .local v11, "source":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    if-eqz v2, :cond_2

    const-string v11, "Unit Complete"

    .end local v11    # "source":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v11, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->doShare(Landroid/view/View;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_2

    .line 270
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v11, "lesson complete"

    .line 275
    .restart local v11    # "source":Ljava/lang/String;
    :goto_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    if-eqz v2, :cond_5

    const-string v11, "Unit Complete"

    .end local v11    # "source":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v11, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->doShare(Landroid/view/View;)V

    goto :goto_0

    .line 274
    :cond_6
    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_3

    .line 281
    :pswitch_3
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 282
    const v0, 0x7f0f01b5

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 285
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v11, "lesson complete"

    .line 286
    .restart local v11    # "source":Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object v10, v9

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    .end local v11    # "source":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_4

    .line 291
    :pswitch_4
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-nez v0, :cond_9

    .line 292
    const v0, 0x7f0f01b7

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto/16 :goto_1

    .line 295
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->onClickShareWeiBo()V

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v11, "lesson complete"

    .line 297
    .restart local v11    # "source":Ljava/lang/String;
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object v10, v9

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/m/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    goto/16 :goto_0

    .line 296
    .end local v11    # "source":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    goto :goto_5

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904e7
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onClickShareWeiBo()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 139
    const v1, 0x7f1000b4

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setStyle(II)V

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 141
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 144
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
    const v3, 0x7f0904ed

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->reportLessonReportShareDialog()V

    .line 198
    const v1, 0x7f0b010d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0904e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mBottomContainer:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0904ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0903d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPengYouQuanContainer:Landroid/widget/RelativeLayout;

    .line 203
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09061c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    .line 205
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    .line 207
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090508

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSocialGroup:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0904ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090618

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mWeiBoBtn:Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iget v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRatio:F

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setRatio(F)V

    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setRoundImageViewHeihtWidth()V

    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090584

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitleTxt:Landroid/widget/TextView;

    .line 225
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09053b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTitle:Landroid/widget/TextView;

    .line 226
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getShareText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 229
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Unit ID"

    iget v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Unit Share Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v2, "\u606d\u559c\u60a8\u5b66\u5b8c\u4e86\u672c\u5355\u5143\uff01\u5feb\u53bb\u544a\u8bc9\u5927\u5bb6\uff01"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->dismissAllowingStateLoss()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 168
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setWidthHeight()V

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ac;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->topIconRes:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mBottomContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mBottomContainerBg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitleTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitleTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTtl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTtl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_1
    return-void
.end method

.method protected reportLessonReportShareDialog()V
    .locals 3

    .prologue
    .line 247
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    if-nez v1, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mEventName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "abt"    # Ljava/lang/String;
    .param p4, "pid"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "age"    # Ljava/lang/String;
    .param p7, "cat"    # Ljava/lang/String;
    .param p8, "isLastSubCourse"    # Z
    .param p9, "unit"    # I
    .param p10, "unitID"    # Ljava/lang/String;
    .param p11, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p12, "bg"    # I
    .param p13, "tl"    # Ljava/lang/String;
    .param p14, "subtl"    # Ljava/lang/String;
    .param p15, "ratio"    # F

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTitle:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAbstract:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mPid:Ljava/lang/String;

    .line 102
    iput p5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mType:I

    .line 103
    iput-object p6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mAge:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mCat:Ljava/lang/String;

    .line 105
    iput-boolean p8, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mIsLastSubCourse:Z

    .line 106
    iput p9, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitIndex:I

    .line 107
    iput-object p10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitID:Ljava/lang/String;

    .line 108
    iput-object p11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mUnitDataTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .line 109
    iput p12, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mBottomContainerBg:I

    .line 110
    iput-object p13, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mTtl:Ljava/lang/String;

    .line 111
    iput-object p14, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSubTtl:Ljava/lang/String;

    .line 112
    iput p15, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mRatio:F

    .line 113
    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mEventName:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setOnDismissListener(Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    .line 119
    return-void
.end method

.method protected setRoundImageViewHeihtWidth()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .line 337
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->mSource:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setTopIconRes(I)V
    .locals 0
    .param p1, "topIconRes"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->topIconRes:I

    .line 95
    return-void
.end method

.method protected setWidthHeight()V
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v1, v3, 0xa

    .line 188
    .local v1, "width":I
    const/4 v0, -0x2

    .line 189
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 190
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 191
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 192
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 127
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 129
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
