.class public Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
.super Lcom/jiliguala/niuwa/common/base/a;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mTitleResId:I


# instance fields
.field private isShowing:Z

.field private login:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSource:Ljava/lang/String;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->TAG:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleResId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/a;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->login:Z

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->loginNow(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->login:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->addEvent(I)V

    return-void
.end method

.method private addEvent(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Clicks on Sign In_Up View"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    return-void

    .line 115
    :sswitch_0
    const-string v1, "Type"

    const-string v2, "WeChat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :sswitch_1
    const-string v1, "Type"

    const-string v2, "QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :sswitch_2
    const-string v1, "Type"

    const-string v2, "Weibo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :sswitch_3
    const-string v1, "Type"

    const-string v2, "Email Sign Up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :sswitch_4
    const-string v1, "Type"

    const-string v2, "Email Sign In"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d7 -> :sswitch_4
        0x7f0901d8 -> :sswitch_3
        0x7f0902fb -> :sswitch_1
        0x7f0902fc -> :sswitch_2
        0x7f0902fd -> :sswitch_0
    .end sparse-switch
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 227
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V

    .line 228
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 248
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;I)Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "resId"    # I

    .prologue
    .line 98
    sput p1, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleResId:I

    .line 99
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    .line 100
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;-><init>()V

    .line 104
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
    :cond_0
    return-object v0
.end method

.method private loginNow(I)V
    .locals 5
    .param p1, "loginType"    # I

    .prologue
    .line 202
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v2, "source"

    const-string v3, "login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/a;->onAttach(Landroid/app/Activity;)V

    .line 199
    return-void
.end method

.method public onChildGained()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->dismissAllowingStateLoss()V

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->setStyle(II)V

    .line 157
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Sign In_Up View"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
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

    .prologue
    .line 182
    const v1, 0x7f0b0144

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleTv:Landroid/widget/TextView;

    .line 184
    sget v1, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleTv:Landroid/widget/TextView;

    sget v2, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_0
    const v1, 0x7f0902fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v1, 0x7f0902fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v1, 0x7f0902fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mTitleTv:Landroid/widget/TextView;

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/a;->onDismiss(Landroid/content/DialogInterface;)V

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->login:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->isShowing:Z

    .line 219
    return-void
.end method

.method public onLoginSucceed()V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->dismissAllowingStateLoss()V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/a;->onStart()V

    .line 163
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    .line 164
    .local v1, "width":I
    const/4 v0, -0x2

    .line 165
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->addEventObserver()V

    .line 168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 177
    return-void
.end method

.method public setmOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "mOnDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 223
    return-void
.end method

.method public setmSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSource"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->mSource:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 141
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 146
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0
.end method
