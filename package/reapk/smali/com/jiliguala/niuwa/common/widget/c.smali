.class public Lcom/jiliguala/niuwa/common/widget/c;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final d:I = 0xbb8


# instance fields
.field private c:Landroid/view/View;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:Lcom/jiliguala/niuwa/common/widget/c$a;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/common/widget/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/c;->a:Ljava/lang/String;

    .line 30
    const-class v0, Lcom/jiliguala/niuwa/common/widget/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/c;)Lcom/jiliguala/niuwa/common/widget/c$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/c;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->g:Lcom/jiliguala/niuwa/common/widget/c$a;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/c;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 42
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/c;

    .line 43
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/widget/c;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/c;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/c;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/c;-><init>()V

    .line 46
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/c;
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->c:Landroid/view/View;

    const v1, 0x7f0905cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->i:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->c:Landroid/view/View;

    const v1, 0x7f0905ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->h:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->e:Ljava/util/Timer;

    .line 101
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/c;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/c;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/widget/c$a;)V
    .locals 0
    .param p1, "mOnUnlockListener"    # Lcom/jiliguala/niuwa/common/widget/c$a;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/c;->g:Lcom/jiliguala/niuwa/common/widget/c$a;

    .line 148
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 52
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/c;->setStyle(II)V

    .line 65
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
    .line 86
    const v0, 0x7f0b0126

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->c:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/c;->a()V

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/common/widget/c$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/widget/c$1;-><init>(Lcom/jiliguala/niuwa/common/widget/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v2, 0x7f08039c

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905cb

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/c$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/c$2;-><init>(Lcom/jiliguala/niuwa/common/widget/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->f:Ljava/util/TimerTask;

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/c;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->f:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->f:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
