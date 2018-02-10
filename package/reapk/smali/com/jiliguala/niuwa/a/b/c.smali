.class public Lcom/jiliguala/niuwa/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/a/b/c$a;
    }
.end annotation


# static fields
.field public static final a:F = 0.5f

.field public static final b:F = 0.75f

.field public static final c:Ljava/lang/String;


# instance fields
.field public d:Lcom/jiliguala/niuwa/a/b/c$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/content/DialogInterface$OnCancelListener;

.field private i:Landroid/content/DialogInterface$OnDismissListener;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/a/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/c;->j:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/jiliguala/niuwa/a/b/c;->e:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/jiliguala/niuwa/a/b/c;->f:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/a/b/c;->a(Landroid/content/Context;)V

    .line 59
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

    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/a/b/c;->c()V

    .line 64
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0123

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f090277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    .line 70
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    const v2, 0x7f09042e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->l:Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/a/b/c;->a(Landroid/widget/ImageView;)V

    .line 78
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->l:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/a/b/c;->b(Landroid/widget/ImageView;)V

    .line 80
    const v2, 0x7f0905bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->m:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->n:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->n:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 90
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "iconDescImg"    # Landroid/widget/ImageView;

    .prologue
    .line 96
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .line 97
    .local v2, "width":I
    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 99
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 102
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :cond_0
    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "mCenterIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int v2, v3, v4

    .line 122
    .local v2, "width":I
    int-to-float v3, v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 124
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 127
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 131
    const/4 v3, 0x3

    const v4, 0x7f090277

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "Source URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Recommended Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "Source URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Recommended Dialog Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/c;->h:Landroid/content/DialogInterface$OnCancelListener;

    .line 180
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/c;->i:Landroid/content/DialogInterface$OnDismissListener;

    .line 189
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/c$a;)V
    .locals 0
    .param p1, "mClickListener"    # Lcom/jiliguala/niuwa/a/b/c$a;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/c;->d:Lcom/jiliguala/niuwa/a/b/c$a;

    .line 264
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 200
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 152
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "canCancel"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->g:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/c;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 158
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "chineseTxt"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->h:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->h:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 240
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/a/b/c;->d()V

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->d:Lcom/jiliguala/niuwa/a/b/c$a;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->d:Lcom/jiliguala/niuwa/a/b/c$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/a/b/c$a;->a()V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f090163
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->i:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->i:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 297
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 277
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/a/b/c$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/a/b/c$1;-><init>(Lcom/jiliguala/niuwa/a/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 287
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/a/b/c$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/a/b/c$2;-><init>(Lcom/jiliguala/niuwa/a/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090277 -> :sswitch_0
        0x7f09042e -> :sswitch_1
    .end sparse-switch
.end method
