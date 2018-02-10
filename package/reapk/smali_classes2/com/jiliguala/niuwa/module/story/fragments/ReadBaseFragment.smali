.class public abstract Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;,
        Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$OnCloseTouchedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mCloseTouchedListener:Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$OnCloseTouchedListener;

.field private mGlobalLayoutListenView:Landroid/view/View;

.field protected mStoryOpener:Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMyApplication()Lcom/jiliguala/niuwa/MyApplication;
    .locals 2
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/MyApplication;

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getReaderBaseActivity()Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    return-object v0
.end method

.method protected goToUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, "activity":Landroid/app/Activity;
    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 136
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method protected hideView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method

.method protected listenForGlobalLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listenForGlobalLayout was already called on another view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected makeThisOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->makeThisOnClickListener(Landroid/view/View;Z)V

    .line 108
    return-void
.end method

.method protected makeThisOnClickListener(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "failIfMissing"    # Z

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    if-eqz p2, :cond_1

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null view passed to makeThisOnClickListener."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_1
    return-void
.end method

.method protected makeThisOnClickListener(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "buttonId"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->makeThisOnClickListener(Landroid/view/ViewGroup;IZ)V

    .line 94
    return-void
.end method

.method protected makeThisOnClickListener(Landroid/view/ViewGroup;IZ)V
    .locals 4
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "buttonId"    # I
    .param p3, "failIfMissing"    # Z

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 84
    if-eqz p3, :cond_1

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View does not exist. Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->makeThisOnClickListener(Landroid/view/View;Z)V

    .line 90
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 33
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$OnCloseTouchedListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$OnCloseTouchedListener;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mCloseTouchedListener:Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$OnCloseTouchedListener;

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mStoryOpener:Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;

    .line 41
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must override FarFariaFragment.onClick (and don\'t call super.onClick in the override method!)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDidLayOutFirstTime()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->onDidLayOutFirstTime()V

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->removeGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/View;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->mGlobalLayoutListenView:Landroid/view/View;

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onGlobalLayout() was called even though mGlobalLayoutListenView is unset."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
