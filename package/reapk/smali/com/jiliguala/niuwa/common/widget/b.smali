.class public Lcom/jiliguala/niuwa/common/widget/b;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/common/widget/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/b;->a:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/jiliguala/niuwa/common/widget/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 27
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->f:D

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/b;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 41
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/b;

    .line 42
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/b;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/b;-><init>()V

    .line 45
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/ag;ID)Lcom/jiliguala/niuwa/common/widget/b;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "resId"    # I
    .param p2, "ratio"    # D

    .prologue
    .line 31
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/b;

    .line 32
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/b;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/b;-><init>()V

    .line 34
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/b;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/b;->a(I)V

    .line 35
    invoke-virtual {v0, p2, p3}, Lcom/jiliguala/niuwa/common/widget/b;->a(D)V

    .line 37
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .param p1, "ratio"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/b;->f:D

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/b;->e:I

    .line 62
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 51
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->c:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/common/widget/b$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/widget/b$1;-><init>(Lcom/jiliguala/niuwa/common/widget/b;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/b;->setStyle(II)V

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->d:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->d:I

    goto :goto_0
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
    .line 97
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->e:I

    if-lez v0, :cond_0

    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->e:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->c:Landroid/view/View;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->c:Landroid/view/View;

    return-object v0

    .line 100
    :cond_0
    const v0, 0x7f0b011f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 82
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/b;->d:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/b;->f:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 90
    .local v0, "width":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/b;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 92
    return-void

    .line 88
    .end local v0    # "width":I
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/b;->d:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/b;->f:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .restart local v0    # "width":I
    goto :goto_0
.end method
