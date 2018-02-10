.class public Lcom/jiliguala/niuwa/common/widget/d;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/d$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/Button;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jiliguala/niuwa/common/widget/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/d;->d:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/jiliguala/niuwa/common/widget/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/d;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/d;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 47
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/d;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/d;

    .line 48
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/widget/d;
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/d;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/d;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/d;-><init>()V

    .line 51
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/widget/d;
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/d;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/d;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->o:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "ALERT_TITLE_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->m:Ljava/lang/String;

    .line 84
    const-string v1, "ALERT_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->h:Ljava/lang/String;

    .line 85
    const-string v1, "CONFIRM_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->i:Ljava/lang/String;

    .line 86
    const-string v1, "CANCLE_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    const v1, 0x7f09057a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->n:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->a:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->b:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->c:Landroid/widget/Button;

    .line 177
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/d$a;)V
    .locals 1
    .param p1, "callback"    # Lcom/jiliguala/niuwa/common/widget/d$a;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    .line 220
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "mCancelFlag"    # Z

    .prologue
    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->k:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 57
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/d;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "mClickCancelFlag"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/d;->o:Z

    .line 135
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 188
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->b()V

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/d$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/d$a;->a()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->c()V

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/d$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/d$a;->b()V

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/d;->e()V

    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/d;->d()V

    .line 71
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/d;->setStyle(II)V

    .line 73
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->l:I

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->l:I

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
    .line 141
    const v0, 0x7f0b012d

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/d;->g()V

    .line 145
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/d;->f()V

    .line 147
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->a()V

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d;->g:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 98
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/d;->l:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    .line 102
    .local v1, "width":I
    :goto_0
    const/4 v0, -0x2

    .line 106
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/d;->k:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/common/widget/d$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/common/widget/d$1;-><init>(Lcom/jiliguala/niuwa/common/widget/d;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 119
    return-void

    .line 100
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/d;->l:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    .restart local v1    # "width":I
    goto :goto_0
.end method
