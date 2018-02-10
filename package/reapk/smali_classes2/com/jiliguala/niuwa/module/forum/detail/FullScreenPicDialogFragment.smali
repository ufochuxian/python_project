.class public Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final CONTAINER_ID:I = 0x1000

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static mUrl:Ljava/lang/String;


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private isShowing:Z

.field private mCallback:Lcom/jiliguala/niuwa/common/util/c$a;

.field private mContainer:Landroid/widget/RelativeLayout;

.field mOnclickListener:Landroid/view/View$OnClickListener;

.field private mPD:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private saveIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->TAG:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 42
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mCallback:Lcom/jiliguala/niuwa/common/util/c$a;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mOnclickListener:Landroid/view/View$OnClickListener;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mPD:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/util/c$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mCallback:Lcom/jiliguala/niuwa/common/util/c$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    sput-object p1, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mUrl:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .line 90
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;-><init>()V

    .line 93
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    :cond_0
    return-object v0
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mPD:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mPD:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mPD:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 200
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->dismissAllowingStateLoss()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x0

    const v1, 0x7f1000b8

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->setStyle(II)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 131
    const v1, 0x7f0b00cc

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903e6

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->saveIcon:Landroid/widget/ImageView;

    .line 136
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->saveIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f090283

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 138
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/450x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mUrl:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mUrl:Ljava/lang/String;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 192
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->mContainer:Landroid/widget/RelativeLayout;

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isShowing:Z

    .line 99
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 124
    const/4 v1, -0x1

    .line 125
    .local v1, "width":I
    const/4 v0, -0x1

    .line 126
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 127
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 104
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 108
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method
