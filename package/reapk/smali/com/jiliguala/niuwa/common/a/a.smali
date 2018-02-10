.class public abstract Lcom/jiliguala/niuwa/common/a/a;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Z

.field protected e:Z

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/a;->d:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "mOnCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    .line 101
    return-void
.end method

.method public abstract a(Landroid/support/v4/app/ag;)V
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "mOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/a;->f:Landroid/view/View$OnClickListener;

    .line 97
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mTouchOutside"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/a/a;->e:Z

    .line 34
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/a;->d:Z

    return v0
.end method

.method protected abstract b()I
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0f0088

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f0f0064

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->setStyle(II)V

    .line 54
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 73
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 74
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const v4, 0x7f090156

    const v3, 0x7f0900fa

    .line 79
    const v1, 0x7f0b011e

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->a:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->b:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->c:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/a;->f:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/a;->d:Z

    .line 44
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    .line 62
    .local v1, "width":I
    :goto_0
    const/4 v0, -0x2

    .line 63
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 65
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/a/a;->e:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    return-void

    .line 61
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    goto :goto_0
.end method
