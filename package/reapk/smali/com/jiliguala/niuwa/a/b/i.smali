.class public Lcom/jiliguala/niuwa/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/a/b/i$a;
    }
.end annotation


# instance fields
.field public a:Lcom/jiliguala/niuwa/a/b/i$a;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/content/DialogInterface$OnDismissListener;

.field private e:Landroid/content/Context;

.field private f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/i;->e:Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/a/b/i;->a(Landroid/content/Context;)V

    .line 41
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

    .line 45
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0137

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0904d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    .line 51
    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->g:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0904e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setRatio(F)V

    .line 77
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/i;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 86
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/i;->d:Landroid/content/DialogInterface$OnDismissListener;

    .line 95
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/i$a;)V
    .locals 0
    .param p1, "mClickListener"    # Lcom/jiliguala/niuwa/a/b/i$a;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/i;->a:Lcom/jiliguala/niuwa/a/b/i$a;

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 158
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->f:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "canCancel"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->a:Lcom/jiliguala/niuwa/a/b/i$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->a:Lcom/jiliguala/niuwa/a/b/i$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/a/b/i$a;->b()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x7f0904e4
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/i;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 139
    :cond_0
    return-void
.end method