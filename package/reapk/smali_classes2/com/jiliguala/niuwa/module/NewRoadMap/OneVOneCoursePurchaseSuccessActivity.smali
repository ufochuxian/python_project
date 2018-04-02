.class public Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "KEY_LANDSCAPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->isLandscape:Z

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public onClickBack()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->finish()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->handleIntent()V

    .line 34
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 40
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->setRequestedOrientation(I)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
