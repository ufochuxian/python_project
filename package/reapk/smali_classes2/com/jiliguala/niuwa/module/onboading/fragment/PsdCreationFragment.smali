.class public Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;",
        ">;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionNext:Landroid/widget/Button;

.field private mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field private mCode:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mPassword:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPsdEdit:Landroid/widget/EditText;

.field private mRoot:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->TAG:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Lcom/jiliguala/niuwa/common/helper/a/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method private isOnBoarding()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 145
    .local v0, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->isOnBoardingFlow()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    .end local v0    # "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v1

    .line 149
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private reportEvent()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "onboarding"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->isOnBoarding()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Password View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;
    .locals 0

    .prologue
    .line 57
    return-object p0
.end method

.method public onCreateFailed()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 167
    return-void
.end method

.method public onCreateSucceed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Sign Up"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->reportEvent()V

    .line 90
    const v0, 0x7f0b00c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mIcon:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mTitle:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090541

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mSubTitle:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090412

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPsdEdit:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 110
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/a/e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mActionNext:Landroid/widget/Button;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x67

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/helper/a/e;-><init>(Landroid/view/View;[I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 111
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/c/h;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPsdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPsdEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->a(Landroid/widget/EditText;)V

    .line 77
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onStop()V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPsdEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mCode:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->mPhoneNumber:Ljava/lang/String;

    .line 66
    return-void
.end method
