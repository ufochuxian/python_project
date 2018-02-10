.class public Lcom/jiliguala/niuwa/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/a/b/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/jiliguala/niuwa/a/b/f$a;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/content/DialogInterface$OnDismissListener;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/f;->e:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/a/b/f;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 42
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0124

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 47
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 52
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/f;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 63
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    .line 72
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/f$a;)V
    .locals 0
    .param p1, "mClickListener"    # Lcom/jiliguala/niuwa/a/b/f$a;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/f;->a:Lcom/jiliguala/niuwa/a/b/f$a;

    .line 145
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .param p1, "canCancel"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->a:Lcom/jiliguala/niuwa/a/b/f$a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->a:Lcom/jiliguala/niuwa/a/b/f$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/a/b/f$a;->onBtnClick()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f090157
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/f;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 116
    :cond_0
    return-void
.end method
