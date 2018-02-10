.class public Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/jiliguala/niuwa/common/Activity/b;
.implements Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/common/Activity/a;",
        "Lcom/jiliguala/niuwa/common/Activity/b;",
        ">;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Lcom/jiliguala/niuwa/common/Activity/b;",
        "Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;"
    }
.end annotation


# static fields
.field public static final KEY_PORTRAIT:Ljava/lang/String; = "KEY_PORTRAIT"

.field public static final TAG:Ljava/lang/String;

.field private static final a:I = 0x2


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/view/SurfaceView;

.field private e:Landroid/view/SurfaceHolder;

.field private f:Z

.field private g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

.field private h:Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->h:Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 125
    const v1, 0x7f0900cf

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v1, 0x7f090324

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    const v1, 0x7f0905f7

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f09018a

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->j:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->i:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f090591

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->l:Landroid/widget/RelativeLayout;

    .line 141
    const v1, 0x7f09014b

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->n:Landroid/widget/ImageButton;

    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->i:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v1, 0x7f09053f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->q:Landroid/view/View;

    .line 149
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->p:Z

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->e:Landroid/view/SurfaceHolder;

    .line 157
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->e:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->p:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->e:Landroid/view/SurfaceHolder;

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 165
    :cond_1
    const v1, 0x7f090322

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->k:Landroid/widget/LinearLayout;

    .line 166
    const v1, 0x7f090401

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->r:Landroid/view/View;

    .line 167
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->e()V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->d()V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/jiliguala/niuwa/common/Activity/a;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/Activity/a;-><init>()V

    return-object v0
.end method

.method public addScreenStateWatcher()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 365
    return-void
.end method

.method protected b()Lcom/jiliguala/niuwa/common/Activity/b;
    .locals 0

    .prologue
    .line 79
    return-object p0
.end method

.method public changeStartVideoUI()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    return-void
.end method

.method protected synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->a()Lcom/jiliguala/niuwa/common/Activity/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b()Lcom/jiliguala/niuwa/common/Activity/b;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 173
    :sswitch_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    .line 174
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->d()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 173
    goto :goto_1

    .line 177
    :sswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->k:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 179
    .local v0, "isVisible":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 180
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "isVisible":Z
    :cond_2
    move v0, v2

    .line 178
    goto :goto_2

    .line 183
    .restart local v0    # "isVisible":Z
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 189
    .end local v0    # "isVisible":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->finish()V

    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900cf -> :sswitch_0
        0x7f09014b -> :sswitch_2
        0x7f0905f7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->o:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_PORTRAIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->p:Z

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->p:Z

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->setRequestedOrientation(I)V

    .line 97
    :goto_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 99
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c()V

    .line 103
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->addScreenStateWatcher()V

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;-><init>(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->h:Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->stopScreenStateWatcher()V

    .line 357
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->j()V

    .line 358
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 359
    return-void
.end method

.method public onPrepared(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->showProgressBar(Z)V

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->h:Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->h:Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->sendEmptyMessage(I)Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->i()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->changeStartVideoUI()V

    .line 304
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/Activity/a;->i()I

    move-result v3

    mul-int/2addr v3, p2

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 224
    .local v0, "new_pos":J
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->j:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 112
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    .line 316
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->e()V

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 235
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 241
    .local v0, "progress":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/Activity/a;->a(I)V

    .line 242
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->pauseVideo()V

    .line 291
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onWindowFocusChanged(Z)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 121
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->f:Z

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/Activity/a;->e()V

    .line 213
    return-void
.end method

.method public releaseSurfaceRes(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/Activity/a;->b()V

    .line 275
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 259
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->r:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void

    .line 259
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public stopScreenStateWatcher()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->g:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 371
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 265
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/Activity/a;->a(Landroid/view/SurfaceHolder;)V

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->showProgressBar(Z)V

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/Activity/a;->a(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->releaseSurfaceRes(Landroid/view/SurfaceHolder;)V

    .line 270
    return-void
.end method
