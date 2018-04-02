.class public Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/a/e$a;


# static fields
.field public static final KEY_AVATAR:Ljava/lang/String; = "KEY_AVATAR"

.field public static final KEY_BIRTHDAY:Ljava/lang/String; = "KEY_BIRTHDAY"

.field public static final KEY_GENDER:Ljava/lang/String; = "KEY_GENDER"

.field public static final KEY_ID:Ljava/lang/String; = "KEY_ID"

.field public static final KEY_NICK:Ljava/lang/String; = "KEY_NICK"

.field public static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final MAX_WAIT_TIME:I = 0x7d0

.field public static final RESULT_CODE_CLOSE_APP:I = 0x8888

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_BABY_ADD:I = 0x1003

.field public static final TYPE_BABY_EDIT:I = 0x1004

.field public static final TYPE_GUEST_BABY_ADD:I = 0x1005

.field public static final TYPE_LEGACY_USER_BABY_ADD:I = 0x1006


# instance fields
.field lastTime:J

.field private mAddBabyBtn:Landroid/widget/TextView;

.field private mAvatar:Ljava/lang/String;

.field private mBabyBirthday:Landroid/widget/EditText;

.field private mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field private mBabyName:Landroid/widget/EditText;

.field private mBabyRegisterContainer:Landroid/view/View;

.field private mBack:Landroid/widget/ImageView;

.field private mBackBtn:Landroid/view/View;

.field private mBackEditBaby:Landroid/widget/ImageView;

.field private mBid:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mChildAvatarIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private mChildAvatarTv:Landroid/view/View;

.field private mDatePickerDialog:Lcom/jiliguala/niuwa/common/a/e;

.field private mDeleteBaby:Landroid/widget/TextView;

.field private mGender:Ljava/lang/String;

.field private mGenderGroup:Landroid/widget/RadioGroup;

.field mGenderGroupFocusListener:Landroid/view/View$OnClickListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mNick:Ljava/lang/String;

.field mOnAddBabyClickListener:Landroid/view/View$OnClickListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mTopRightBtn:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 100
    new-instance v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$1;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroupFocusListener:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnAddBabyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lrx/l;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->babyActionSub()Lrx/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->reportAddBabySucceed()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mNick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDatePickerDialog:Lcom/jiliguala/niuwa/common/a/e;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->showDeleteBabyDlg()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mType:I

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyBirthday:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/helper/a/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAvatar:Ljava/lang/String;

    return-object p1
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 353
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$8;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$9;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$9;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 354
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 374
    return-void
.end method

.method private babyActionSub()Lrx/l;
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 579
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 582
    .local v1, "token":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 583
    .restart local v1    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeIntentForBabyAdd(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x1003

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    return-object v0
.end method

.method public static makeIntentForBabyEdit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "nickName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "birthday"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "avatar"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p5, "gender"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x1004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "KEY_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "KEY_NICK"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v1, "KEY_BIRTHDAY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "KEY_AVATAR"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "KEY_GENDER"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    return-object v0
.end method

.method public static makeIntentForGuestBabyAdd(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x1005

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    return-object v0
.end method

.method public static makeIntentForLegacyUserBabyAdd(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x1006

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    return-object v0
.end method

.method private oneMoreClickExit()V
    .locals 6

    .prologue
    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 591
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 592
    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u53fd\u91cc\u5471\u5566"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 593
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->lastTime:J

    .line 599
    :goto_0
    return-void

    .line 595
    :cond_0
    const v2, 0x8888

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 596
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    goto :goto_0
.end method

.method private reportAddBabySucceed()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Edit Baby"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private showDeleteBabyDlg()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 625
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x7f1000b4

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 626
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 627
    const v4, 0x7f0b0090

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 629
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 630
    .local v3, "width":I
    const/4 v2, -0x2

    .line 631
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 632
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 633
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 635
    const v4, 0x7f0900fa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$12;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$12;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "cur_bid":Ljava/lang/String;
    const v4, 0x7f090156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateChildAva(Ljava/lang/String;)V
    .locals 3
    .param p1, "ava"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 567
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 609
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->hideSoftInput()V

    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 611
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    .line 613
    :goto_0
    return-void

    .line 606
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->oneMoreClickExit()V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1005
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChildAvatarUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 707
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 707
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 709
    iget v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mType:I

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 713
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->j()Lrx/e;

    move-result-object v1

    .line 714
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 715
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 716
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$3;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 772
    :goto_0
    return-void

    .line 741
    :cond_2
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$4;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 742
    invoke-virtual {v0, v1, p1, v2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 793
    :goto_0
    :pswitch_0
    return-void

    .line 790
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x7f090092
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const v12, 0x7f0f003a

    const v11, 0x7f0f0039

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 378
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 380
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Edit Baby View"

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 381
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    .line 382
    :cond_0
    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 383
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    .line 385
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 386
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->addPicEventObserver()V

    .line 387
    const-string v6, "KEY_TYPE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mType:I

    .line 388
    const v6, 0x7f0b0025

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setContentView(I)V

    .line 393
    const v6, 0x7f09008e

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyRegisterContainer:Landroid/view/View;

    .line 394
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyRegisterContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 395
    const v6, 0x7f09008f

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    .line 396
    const v6, 0x7f090088

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyBirthday:Landroid/widget/EditText;

    .line 397
    const v6, 0x7f090087

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarTv:Landroid/view/View;

    .line 398
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarTv:Landroid/view/View;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v6, 0x7f090086

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 400
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mChildAvatarIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v6, 0x7f0901ab

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    .line 402
    const v6, 0x7f09008c

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroup:Landroid/widget/RadioGroup;

    .line 403
    const v6, 0x7f090235

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroupFocusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v6, 0x7f090234

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroupFocusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v6, 0x7f090095

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackEditBaby:Landroid/widget/ImageView;

    .line 406
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackEditBaby:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v6, 0x7f090092

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBack:Landroid/widget/ImageView;

    .line 408
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v6, 0x7f090043

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    .line 410
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnAddBabyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0b007a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 415
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 419
    const v6, 0x7f090014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackBtn:Landroid/view/View;

    .line 420
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackBtn:Landroid/view/View;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v6, 0x7f090031

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    .line 422
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    const v7, 0x7f0f003e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 426
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    const v6, 0x7f090592

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 428
    .local v4, "titleTv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    .line 430
    iget v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 491
    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 492
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    .line 495
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAvatar:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 496
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAvatar:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->updateChildAva(Ljava/lang/String;)V

    .line 501
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/a/e;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v6

    .line 502
    invoke-virtual {v6, p0}, Lcom/jiliguala/niuwa/common/a/e;->a(Lcom/jiliguala/niuwa/common/a/e$a;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDatePickerDialog:Lcom/jiliguala/niuwa/common/a/e;

    .line 503
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyBirthday:Landroid/widget/EditText;

    new-instance v7, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 541
    new-instance v6, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, v8}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 542
    new-instance v6, Lcom/jiliguala/niuwa/common/helper/c/b;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/b;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/b;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 543
    new-instance v6, Lcom/jiliguala/niuwa/common/helper/c/a;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/a;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyBirthday:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/a;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 544
    new-instance v6, Lcom/jiliguala/niuwa/common/helper/c/e;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyInfoChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/e;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGenderGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/helper/c/e;->a(Landroid/widget/RadioGroup;)Lcom/jiliguala/niuwa/common/helper/c/e;

    .line 560
    return-void

    .line 432
    :pswitch_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 433
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Add Baby View"

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    const-string v6, "KEY_ID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBid:Ljava/lang/String;

    .line 440
    const-string v6, "KEY_NICK"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mNick:Ljava/lang/String;

    .line 441
    const-string v6, "KEY_BIRTHDAY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBirthday:Ljava/lang/String;

    .line 442
    const-string v6, "KEY_AVATAR"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAvatar:Ljava/lang/String;

    .line 443
    const-string v6, "KEY_GENDER"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mGender:Ljava/lang/String;

    .line 444
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBirthday:Ljava/lang/String;

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 445
    .local v2, "longBirthday":J
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/f;->c(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBirthday:Ljava/lang/String;

    .line 446
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    new-instance v7, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 464
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    const v7, 0x7f0f00c3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 465
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->K()I

    move-result v6

    if-le v6, v13, :cond_3

    .line 466
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :goto_1
    const v6, 0x7f0f0052

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 468
    :cond_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 473
    .end local v2    # "longBirthday":J
    :pswitch_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackBtn:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 481
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Add Baby View"

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :pswitch_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBackBtn:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mAddBabyBtn:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mDeleteBaby:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 488
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Add Baby View"

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1003
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 541
    :array_0
    .array-data 4
        0x68
        0x69
        0x6a
    .end array-data
.end method

.method public onDateSet(Landroid/app/Dialog;III)Z
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 776
    const/16 v0, 0x7bc

    if-ge v0, p2, :cond_0

    const/16 v0, 0x7f5

    if-ge p2, v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyBirthday:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    .line 780
    :cond_0
    const v0, 0x7f0f0051

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 781
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->mBabyName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 576
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 617
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 621
    return-void
.end method
