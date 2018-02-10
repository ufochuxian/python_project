.class public Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInteract:Z

.field private mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field private mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->TAG:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 34
    sget-object v1, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    .line 35
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;-><init>()V

    .line 38
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;
    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 12

    .prologue
    .line 92
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f090096

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "backIcon":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f090273

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 95
    .local v7, "mIcon":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f090135

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v4, "mChinestTxt":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f0901e4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 97
    .local v6, "mEngTxt":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v9, :cond_0

    .line 98
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    invoke-virtual {v9, v10, v7, v11}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 103
    :cond_0
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f090020

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 104
    .local v3, "mActionComplete":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    const v10, 0x7f0905cd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 107
    .local v5, "mDescImg":Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->isInteract:Z

    if-eqz v9, :cond_1

    .line 108
    const v9, 0x7f080409

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :cond_1
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 111
    .local v1, "height":I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 112
    .local v8, "width":I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 113
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v9, v1

    div-int/2addr v9, v8

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->dismissAllowingStateLoss()V

    .line 135
    return-void

    .line 121
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;->onCancel()V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;->onComplete()V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090020 -> :sswitch_1
        0x7f090096 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->setStyle(II)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 84
    const v0, 0x7f0b0139

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->initView()V

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 68
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 70
    .local v1, "win":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Z)V
    .locals 0
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .param p2, "isInteract"    # Z

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 43
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->isInteract:Z

    .line 44
    return-void
.end method

.method public setOnActionListener(Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->mOnActionListener:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;

    .line 139
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 49
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 51
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method
