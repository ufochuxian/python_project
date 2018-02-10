.class public Lcom/jiliguala/niuwa/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/a/b/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/jiliguala/niuwa/a/b/a$a;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/content/DialogInterface$OnDismissListener;

.field private e:Landroid/content/Context;

.field private f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/a;->e:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/a/b/a;->a(Landroid/content/Context;)V

    .line 42
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

    .line 46
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b010a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0902a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    .line 52
    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->g:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f090428

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->h:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0905c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->i:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->h:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setRatio(F)V

    .line 82
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/a;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 91
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/a;->d:Landroid/content/DialogInterface$OnDismissListener;

    .line 100
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/a$a;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/jiliguala/niuwa/a/b/a$a;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/a;->a:Lcom/jiliguala/niuwa/a/b/a$a;

    .line 193
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 163
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "canCancel"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->a:Lcom/jiliguala/niuwa/a/b/a$a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->a:Lcom/jiliguala/niuwa/a/b/a$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/a/b/a$a;->obRequireCourseBtnClick()V

    goto :goto_0

    .line 186
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/a/b/a;->b()V

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x7f090428 -> :sswitch_0
        0x7f0905c1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/a;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 144
    :cond_0
    return-void
.end method
