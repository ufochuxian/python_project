.class public Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPayResultDesc:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0109

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0903c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mPayResultDesc:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f090273

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    .line 61
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 66
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableCancel(Z)V
    .locals 1
    .param p1, "cancable"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public hideIcon()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 96
    return-void
.end method

.method public setOnDismisslListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 105
    return-void
.end method

.method public setPayResultDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mPayResultDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mPayResultDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mPayResultDesc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "desc":Ljava/lang/String;
    const-string v1, "\u6b63\u5728\u786e\u8ba4\u8d2d\u4e70\u7ed3\u679c,\u8bf7\u8010\u5fc3\u7b49\u5f85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 135
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "desc":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public showIcon()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method
