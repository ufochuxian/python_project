.class public Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;"
    }
.end annotation


# static fields
.field public static final STORY_LESSON_ORDER_TARGET:Ljava/lang/String; = "STORY_LESSON_TARGET"

.field public static final STORY_LESSON_URL:Ljava/lang/String; = "STORY_LESSON_URL"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mBid:Ljava/lang/String;

.field private mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mLessonId:Ljava/lang/String;

.field private mStoryLessonUrl:Ljava/lang/String;

.field private mStoryOrderTarget:Ljava/lang/String;

.field private mStoryTitle:Ljava/lang/String;

.field private mTopBar:Landroid/widget/TextView;

.field private mTopBarLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mLessonId:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryTitle:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "STORY_LESSON_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryLessonUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "STORY_LESSON_TARGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryOrderTarget:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    .prologue
    const v5, 0x7f01001e

    const v4, 0x7f01001d

    .line 119
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 120
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "STORY_LESSON_TARGET"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryOrderTarget:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 137
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const v3, 0x7f090158

    sget-object v4, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 139
    sget-object v3, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 143
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 144
    return-void

    .line 134
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mLessonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wuminlan Unlock View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method private reportStoryScanSuccessAmplitude()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mLessonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wuminlan Unlock Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;-><init>()V

    return-object v0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->onBackPressed()V

    .line 190
    return-void
.end method

.method public getConnectUsDialog()Lcom/jiliguala/niuwa/a/b/b;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/a/b/b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/a/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;
    .locals 0

    .prologue
    .line 58
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 156
    packed-switch p2, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mBid:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mLessonId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;->reportStoryScanSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->reportStoryScanSuccessAmplitude()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->finish()V

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 103
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->finish()V

    goto :goto_0

    .line 106
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getConnectUsDialog()Lcom/jiliguala/niuwa/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/b;->a()V

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_0
        0x7f09057e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->handleIntent()V

    .line 65
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->reportAmplitude()V

    .line 66
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mBid:Ljava/lang/String;

    .line 67
    const v2, 0x7f0b0021

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->setContentView(I)V

    .line 68
    const v2, 0x7f090595

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mTopBar:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mTopBar:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mBackIcon:Landroid/widget/ImageView;

    const v3, 0x7f0802d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f09057e

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "connectUs":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f090158

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    move-result-object v1

    .line 80
    .local v1, "qualityStoryUnLockedFragment":Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;)V

    .line 81
    return-void
.end method

.method public reportStoryScanSuccess()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SHOW_SUSPENSION_"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v1, "SHARE_TYPE"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v1, "SHARE_THUMB"

    const-string v2, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "key_url"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->mStoryLessonUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
