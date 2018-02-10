.class public Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final KEY_COURSE_OBJ:Ljava/lang/String; = "COURSE_OBJ"

.field private static final MSG_HANDLE_SUBCOURSE_START:I = 0x3000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseFinished:Z

.field private lastSubCourseFinished:Z

.field private lastSubCourseIndex:I

.field private mActivity:Landroid/app/Activity;

.field private mBtnShareUnlock:Landroid/widget/Button;

.field private mClassVp:Landroid/support/v4/view/ViewPager;

.field private mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

.field private mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field private mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

.field private mCurrentIndex:I

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

.field private mDownX:I

.field private mHint:Landroid/widget/TextView;

.field private mIsClickDay:Z

.field private mJumpIntoSubCourseContent:Z

.field private mLastCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field private mRootContainer:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;

.field private mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

.field private position:I

.field private shouldNotify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 75
    sget-object v1, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .line 76
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;-><init>()V

    .line 79
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;
    :cond_0
    return-object v0
.end method

.method private getUpdateHint(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)Ljava/lang/String;
    .locals 5
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 440
    :try_start_0
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 441
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hint:Ljava/lang/String;

    .line 442
    .local v2, "hint":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "hint":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private isShowFindCourseButton()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isShareable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mBtnShareUnlock:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isUnAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private moveToPos(IIZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "delay"    # I
    .param p3, "smoothScroll"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;IZ)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method private registerCompletedPurchasedReceiver()V
    .locals 3

    .prologue
    .line 453
    new-instance v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    return-void
.end method


# virtual methods
.method public getLastSubCourseIndex()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCurrentIndex:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->position:I

    return v0
.end method

.method public handleSubCourseStart()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->lastSubCourseIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v0

    .line 267
    .local v0, "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v2, "current"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleSubCourseStart(Landroid/app/Activity;)V

    .line 270
    :cond_0
    return-void
.end method

.method public isStatusChanged(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mLastCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 303
    .local v2, "subDataBeforeReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 305
    .local v1, "subDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    if-ne v2, v1, :cond_1

    .line 311
    .end local v1    # "subDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .end local v2    # "subDataBeforeReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :cond_0
    :goto_0
    return v3

    .line 308
    .restart local v1    # "subDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .restart local v2    # "subDataBeforeReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :cond_1
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 309
    .end local v1    # "subDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .end local v2    # "subDataBeforeReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public notifyData(IZ)V
    .locals 10
    .param p1, "lastIndex"    # I
    .param p2, "isJumpIntoCourseFragment"    # Z

    .prologue
    const/16 v9, 0x3000

    .line 213
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v5, :cond_1

    .line 214
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isShareable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mHint:Landroid/widget/TextView;

    const v6, 0x7f0f01b9

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v5, v6, v7, v8}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->updateData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 220
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->notifyDataSetChanged()V

    .line 222
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 224
    const/4 v2, 0x1

    .line 226
    .local v2, "smoothScroll":Z
    if-eqz p2, :cond_0

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 227
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mIsClickDay:Z

    if-nez v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->lastSubCourseIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v4

    .line 230
    .local v4, "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    iget-object v5, v4, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v6, "watch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v9, v6, v7}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    :goto_1
    const/4 v2, 0x0

    .line 245
    .end local v4    # "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    :cond_0
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->courseFinished:Z

    if-nez v5, :cond_1

    .line 249
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 250
    .local v1, "size":I
    const/4 v0, 0x0

    .line 251
    .local v0, "currentIndex":I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 252
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 253
    .local v3, "sub":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    if-eqz v3, :cond_4

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v6, "current"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->isStatusChanged(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    const/16 v5, 0x320

    invoke-direct {p0, v0, v5, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->moveToPos(IIZ)V

    .line 263
    .end local v0    # "currentIndex":I
    .end local v1    # "size":I
    .end local v2    # "smoothScroll":Z
    .end local v3    # "sub":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :cond_1
    return-void

    .line 217
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mHint:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    .restart local v2    # "smoothScroll":Z
    .restart local v4    # "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    :cond_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

    invoke-virtual {v5, v9}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 251
    .end local v4    # "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .restart local v0    # "currentIndex":I
    .restart local v1    # "size":I
    .restart local v3    # "sub":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mActivity:Landroid/app/Activity;

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 410
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->showUnitShareDialog()V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x7f0904d0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$CustomHandler;

    .line 106
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->registerCompletedPurchasedReceiver()V

    .line 107
    return-void
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
    .line 141
    if-eqz p3, :cond_0

    .line 142
    const-string v0, "COURSE_OBJ"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 147
    :cond_0
    const v0, 0x7f0b0190

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mHint:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0904d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mBtnShareUnlock:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mBtnShareUnlock:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mBtnShareUnlock:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    .line 162
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mClassVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->isShowFindCourseButton()V

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->shouldNotify:Z

    if-eqz v0, :cond_2

    .line 188
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->lastSubCourseIndex:I

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mJumpIntoSubCourseContent:Z

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->notifyData(IZ)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->shouldNotify:Z

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->unRegisterPurchasedReceiver()V

    .line 390
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 392
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 385
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mActivity:Landroid/app/Activity;

    .line 120
    return-void
.end method

.method public onReceivedSuccessPayResult()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 468
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v3

    .line 471
    .local v3, "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 472
    .local v1, "parentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    if-eqz v5, :cond_0

    move-object v4, v1

    .line 473
    check-cast v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .line 474
    .local v4, "unitFragment":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->refreshUnitDataAfterCourseReport(Z)V

    .line 476
    .end local v4    # "unitFragment":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    :cond_0
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v2

    .line 477
    .local v2, "prepareInteractResView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    if-eqz v2, :cond_1

    .line 478
    sget-object v5, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v5, v5, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setType(I)V

    .line 479
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateUIToPaySuccessUI()V

    .line 481
    const-string v5, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 482
    .local v0, "hasOpenPermission":Z
    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    .line 501
    .end local v0    # "hasOpenPermission":Z
    :cond_1
    :goto_0
    return-void

    .line 486
    .restart local v0    # "hasOpenPermission":Z
    :cond_2
    new-instance v5, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;

    invoke-direct {v5, p0, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkPermisson(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string v0, "COURSE_OBJ"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    :cond_0
    return-void
.end method

.method public setCourseData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;IZZZLcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V
    .locals 1
    .param p1, "courseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .param p2, "lastSubCourseIndex"    # I
    .param p3, "courseFinished"    # Z
    .param p4, "jumpIntoSubCourseContent"    # Z
    .param p5, "isClickDay"    # Z
    .param p6, "lastCourseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 357
    iput p2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->lastSubCourseIndex:I

    .line 358
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->courseFinished:Z

    .line 359
    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mJumpIntoSubCourseContent:Z

    .line 360
    iput-boolean p5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mIsClickDay:Z

    .line 361
    iput-object p6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mLastCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 368
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mJumpIntoSubCourseContent:Z

    invoke-virtual {p0, p2, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->notifyData(IZ)V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->shouldNotify:Z

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->shouldNotify:Z

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->position:I

    .line 88
    return-void
.end method

.method public setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .line 424
    return-void
.end method

.method public showUnitShareDialog()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 417
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    if-eqz v1, :cond_0

    .line 418
    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showUnitShareDialog()V

    .line 420
    :cond_0
    return-void
.end method

.method public unRegisterPurchasedReceiver()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    :cond_0
    return-void
.end method

.method public updateData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 427
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->updateData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 429
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCoursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->notifyDataSetChanged()V

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isShareable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mHint:Landroid/widget/TextView;

    const v1, 0x7f0f01b9

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->mHint:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getUpdateHint(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
