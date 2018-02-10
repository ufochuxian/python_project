.class public Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment$OnDismissListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAbstract:Ljava/lang/String;

.field private mAge:Ljava/lang/String;

.field private mCat:Ljava/lang/String;

.field private mOnDismissListener:Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment$OnDismissListener;

.field private mPid:Ljava/lang/String;

.field protected mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

.field private mShareUrl:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mThumbUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private doShare(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mShareUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mSource:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 43
    sget-object v1, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    .line 44
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;-><init>()V

    .line 47
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/k;->a(Landroid/support/v4/app/Fragment;)V

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 99
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const v0, 0x7f0f01b6

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 103
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->doShare(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0904e2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 90
    const v1, 0x7f0b0122

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0904e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "thumbUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "abt"    # Ljava/lang/String;
    .param p5, "pid"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "age"    # Ljava/lang/String;
    .param p8, "cat"    # Ljava/lang/String;
    .param p9, "source"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mThumbUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mTitle:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mAbstract:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mPid:Ljava/lang/String;

    .line 55
    iput p6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mType:I

    .line 56
    iput-object p7, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mAge:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mCat:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mShareUrl:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mSource:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setOnDismissListener(Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment$OnDismissListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment$OnDismissListener;

    .line 65
    return-void
.end method

.method public setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->mShareSuccessListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .line 120
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 73
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    sget-object v1, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
