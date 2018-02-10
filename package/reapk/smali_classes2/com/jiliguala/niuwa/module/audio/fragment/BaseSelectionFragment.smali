.class public Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;
    }
.end annotation


# static fields
.field public static final HAS_NO_CURRENT_PLAYING_CHANNEL:I = -0x1


# instance fields
.field protected mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->c([Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .line 27
    :cond_0
    return-void
.end method
