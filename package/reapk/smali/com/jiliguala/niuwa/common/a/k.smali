.class public Lcom/jiliguala/niuwa/common/a/k;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/a/k$b;,
        Lcom/jiliguala/niuwa/common/a/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "HAS_BUTTONS"

.field public static final b:Ljava/lang/String; = "TITLE"

.field public static final c:Ljava/lang/String; = "SUBTITLE"

.field public static final d:Ljava/lang/String; = "DATA_SOURCE"

.field public static final e:Ljava/lang/String; = "INT_SELECT_INDEX"

.field public static final f:Ljava/lang/String; = "GRAVITY"

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String; = "KEY_SHOW_TOP_TITLES"


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/ViewGroup;

.field private q:Lcom/jiliguala/niuwa/common/a/k$a;

.field private r:Z

.field private s:Lcom/jiliguala/niuwa/common/a/k$b;

.field private t:I

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/k;->g:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/k;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/k;->r:Z

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/common/a/k$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/a/k$1;-><init>(Lcom/jiliguala/niuwa/common/a/k;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/a/k;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/k;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/jiliguala/niuwa/common/a/k;->t:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/k;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 89
    sget-object v1, Lcom/jiliguala/niuwa/common/a/k;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/k;

    .line 90
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/k;
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;
    .locals 5
    .param p0, "fm"    # Landroid/support/v4/app/ag;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "config"    # Lcom/jiliguala/niuwa/common/a/k$b;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v1

    .line 101
    .local v1, "fragment":Lcom/jiliguala/niuwa/common/a/k;
    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/jiliguala/niuwa/common/a/k;

    .end local v1    # "fragment":Lcom/jiliguala/niuwa/common/a/k;
    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/a/k;-><init>()V

    .line 103
    .restart local v1    # "fragment":Lcom/jiliguala/niuwa/common/a/k;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "HAS_BUTTONS"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->d()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v2, "TITLE"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "SUBTITLE"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "DATA_SOURCE"

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    const-string v2, "INT_SELECT_INDEX"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->e()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v2, "GRAVITY"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v2, "remaining_time"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "KEY_SHOW_TOP_TITLES"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/a/k$b;->h()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/a/k;->setArguments(Landroid/os/Bundle;)V

    .line 114
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/a/k;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/k;

    .prologue
    .line 37
    iget v0, p0, Lcom/jiliguala/niuwa/common/a/k;->t:I

    return v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/k;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/k;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->dismissAllowingStateLoss()V

    .line 142
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setSelection(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/a/k$a;)V
    .locals 0
    .param p1, "callback"    # Lcom/jiliguala/niuwa/common/a/k$a;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    .line 272
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 125
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/k;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget-object v1, Lcom/jiliguala/niuwa/common/a/k;->h:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 127
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 129
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/k;->r:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/k;->r:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/a/k$a;->a()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->a()V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const/4 v1, 0x1

    const v2, 0x7f1000b4

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/common/a/k;->setStyle(II)V

    .line 148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const-string v2, "DATA_SOURCE"

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "TITLE"

    .line 151
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "SUBTITLE"

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "HAS_BUTTONS"

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "INT_SELECT_INDEX"

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "GRAVITY"

    const/16 v3, 0x11

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "remaining_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    const-string v2, "KEY_SHOW_TOP_TITLES"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    .line 156
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/k$b;->e()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/a/k;->t:I

    .line 157
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 182
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 185
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
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
    const/4 v4, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 198
    const v1, 0x7f0b0138

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->o:Landroid/view/ViewGroup;

    .line 200
    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->l:Landroid/widget/Button;

    .line 201
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->m:Landroid/widget/Button;

    .line 202
    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->p:Landroid/view/ViewGroup;

    .line 203
    const v1, 0x7f09057a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->j:Landroid/widget/TextView;

    .line 204
    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->k:Landroid/widget/TextView;

    .line 205
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setOffset(I)V

    .line 212
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->o:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/k$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setItems(Ljava/util/List;)V

    .line 214
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->o:Landroid/view/ViewGroup;

    new-instance v2, Lcom/jiliguala/niuwa/common/a/k$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/common/a/k$2;-><init>(Lcom/jiliguala/niuwa/common/a/k;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->n:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    new-instance v2, Lcom/jiliguala/niuwa/common/a/k$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/common/a/k$3;-><init>(Lcom/jiliguala/niuwa/common/a/k;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setOnWheelViewListener(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;)V

    .line 238
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/k$b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5269\u4f59\u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/a/k$b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/k$b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/k;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->l:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/k;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :goto_2
    return-object v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k;->q:Lcom/jiliguala/niuwa/common/a/k$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/a/k$a;->b()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/k;->r:Z

    .line 296
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 163
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v2, v4, 0xa

    .line 164
    .local v2, "width":I
    const/4 v1, -0x2

    .line 165
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 170
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 174
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/a/k;->s:Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/k$b;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 175
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
