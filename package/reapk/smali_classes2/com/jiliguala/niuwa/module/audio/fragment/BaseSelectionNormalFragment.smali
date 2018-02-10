.class public Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;
    }
.end annotation


# static fields
.field public static final HAS_NO_CURRENT_PLAYING_CHANNEL:I = -0x1

.field public static final OFFSET_ITEM_FROM_TOP:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;->c([Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .line 35
    :cond_0
    return-void
.end method
