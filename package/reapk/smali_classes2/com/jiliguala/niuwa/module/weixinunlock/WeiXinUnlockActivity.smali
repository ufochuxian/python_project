.class public Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mCourseId:Ljava/lang/String;

.field private mCourseTitle:Ljava/lang/String;

.field private mSaveCodeAlbumBtn:Landroid/widget/Button;

.field private mSubsCompositeSubscription:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mCourseId:Ljava/lang/String;

    return-object v0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "course_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mCourseId:Ljava/lang/String;

    .line 65
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mCourseTitle:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method private requestQrCodeUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "courseID"    # Ljava/lang/String;
    .param p2, "courseTitle"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    const-string v2, "282d30813b3c42d086c9172bf37c779f"

    .line 91
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->y(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 92
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 93
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 94
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$1;-><init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 117
    return-void
.end method


# virtual methods
.method public generateQrCodeBmp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "qr_url"    # Ljava/lang/String;
    .param p2, "courseID"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 122
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 123
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 124
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;

    invoke-direct {v2, p0, p3}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$3;-><init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v2}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity$2;-><init>(Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;)V

    .line 138
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 164
    return-void
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mSubsCompositeSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mSubsCompositeSubscription:Lrx/i/b;

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mSubsCompositeSubscription:Lrx/i/b;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 73
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->finish()V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mCourseId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mCourseTitle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->requestQrCodeUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_0
        0x7f090486 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->handleIntent()V

    .line 50
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f090486

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mSaveCodeAlbumBtn:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mSaveCodeAlbumBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/weixinunlock/WeiXinUnlockActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 86
    return-void
.end method
