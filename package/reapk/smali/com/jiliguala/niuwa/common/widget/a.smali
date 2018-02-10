.class public Lcom/jiliguala/niuwa/common/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Dialog;

.field private c:Lcom/jiliguala/niuwa/common/widget/a$a;

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/common/widget/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/a;->f:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/a;->a(Landroid/content/Context;)V

    .line 40
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

    .line 44
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1001c0

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b011e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->g:Landroid/widget/Button;

    .line 49
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->g:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->h:Landroid/widget/Button;

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->h:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 60
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/a;->d:Landroid/content/DialogInterface$OnCancelListener;

    .line 70
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/a;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 79
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/a$a;)V
    .locals 0
    .param p1, "actionCallBack"    # Lcom/jiliguala/niuwa/common/widget/a$a;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/a;->c:Lcom/jiliguala/niuwa/common/widget/a$a;

    .line 159
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->d:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 136
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/a;->b()V

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->c:Lcom/jiliguala/niuwa/common/widget/a$a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->c:Lcom/jiliguala/niuwa/common/widget/a$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/a$a;->onCancel()V

    goto :goto_0

    .line 142
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/a;->b()V

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->c:Lcom/jiliguala/niuwa/common/widget/a$a;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->c:Lcom/jiliguala/niuwa/common/widget/a$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/a$a;->onConfirm()V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->e:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/a;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 123
    :cond_0
    return-void
.end method
