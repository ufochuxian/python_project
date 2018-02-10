.class public Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRoot:Landroid/view/View;

.field private mShelfContent:Landroid/widget/FrameLayout;

.field private mTopBack:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initUIComponent()V
    .locals 5

    .prologue
    const v4, 0x7f0904e7

    .line 64
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mTopBack:Landroid/view/View;

    if-nez v3, :cond_0

    .line 65
    const v3, 0x7f09058f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mTopBack:Landroid/view/View;

    .line 66
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mTopBack:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mRoot:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 69
    const v3, 0x7f0904e9

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mRoot:Landroid/view/View;

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mShelfContent:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->mShelfContent:Landroid/widget/FrameLayout;

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 78
    .local v1, "fragmentManager":Landroid/support/v4/app/ag;
    sget-object v3, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 79
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 80
    sget-object v3, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 84
    .local v2, "ft":Landroid/support/v4/app/an;
    const v3, 0x7f0904e7

    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 85
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :cond_3
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static launchStoryShelf(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 48
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 50
    :cond_0
    return-void
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->finish()V

    .line 114
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->performExit()V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 105
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->performExit()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x7f09058f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Read List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->initUIComponent()V

    .line 100
    return-void
.end method
