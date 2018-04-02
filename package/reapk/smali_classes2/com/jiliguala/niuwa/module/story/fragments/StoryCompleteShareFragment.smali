.class public Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAbstract:Ljava/lang/String;

.field private mAge:Ljava/lang/String;

.field private mCat:Ljava/lang/String;

.field private mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

.field private mPid:Ljava/lang/String;

.field private mThumbUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->TAG:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 45
    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    .line 46
    .local v0, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    .end local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;-><init>()V

    .line 49
    .restart local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 111
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->dismissAllowingStateLoss()V

    .line 160
    :cond_0
    :goto_1
    return-void

    .line 138
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const v0, 0x7f0f01b6

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 142
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "read complete"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mPid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v11, "read complete"

    move-object v10, v9

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const v0, 0x7f0f01b5

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAbstract:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAge:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v11, "read complete"

    move-object v10, v9

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0904e7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 91
    const v1, 0x7f1000b4

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->setStyle(II)V

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 93
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 96
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 126
    const v1, 0x7f0b0133

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0904e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x7f0904ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 104
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 117
    .local v1, "width":I
    const/4 v0, -0x2

    .line 118
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 119
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 120
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 121
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "abt"    # Ljava/lang/String;
    .param p4, "pid"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "age"    # Ljava/lang/String;
    .param p7, "cat"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mThumbUrl:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mTitle:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAbstract:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mPid:Ljava/lang/String;

    .line 63
    iput p5, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mType:I

    .line 64
    iput-object p6, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mAge:Ljava/lang/String;

    .line 65
    iput-object p7, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mCat:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setOnDismissListener(Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->mOnDismissListener:Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;

    .line 71
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 79
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
