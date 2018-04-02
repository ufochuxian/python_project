.class public Lcom/jiliguala/niuwa/module/game/GameExitFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

.field public mIsShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->TAG:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GameExitFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 38
    sget-object v1, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 39
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/game/GameExitFragment;
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/game/GameExitFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;-><init>()V

    .line 42
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/game/GameExitFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/ac;->dismiss()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->mIsShowing:Z

    .line 97
    return-void
.end method

.method exit()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0901ed
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;->onExitClick()V

    .line 69
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->mIsShowing:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCancel(Landroid/content/DialogInterface;)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;->onCancel()V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->setStyle(II)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 55
    const v1, 0x7f0b00b2

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "gameExitFragment":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 59
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/ac;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    .line 126
    :cond_0
    return-void
.end method

.method resume()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09045c
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;->onResumeClick()V

    .line 77
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->callBack:Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;

    .line 33
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 3
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 82
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    sget-object v2, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 86
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->mIsShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ise":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->mIsShowing:Z

    goto :goto_0
.end method
