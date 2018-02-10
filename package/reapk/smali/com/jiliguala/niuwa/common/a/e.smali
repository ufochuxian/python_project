.class public Lcom/jiliguala/niuwa/common/a/e;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/a/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field c:Lnet/simonvt/datepicker/DatePicker;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Lcom/jiliguala/niuwa/common/a/e$a;

.field g:Landroid/app/Dialog;

.field h:I

.field i:I

.field j:I

.field k:Landroid/view/View$OnClickListener;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/common/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/e;->a:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/jiliguala/niuwa/common/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 38
    new-instance v0, Lcom/jiliguala/niuwa/common/a/e$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/a/e$1;-><init>(Lcom/jiliguala/niuwa/common/a/e;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/e;->k:Landroid/view/View$OnClickListener;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/e;->l:Z

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/e;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 59
    sget-object v1, Lcom/jiliguala/niuwa/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/e;

    .line 60
    .local v0, "f":Lcom/jiliguala/niuwa/common/a/e;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/common/a/e;

    .end local v0    # "f":Lcom/jiliguala/niuwa/common/a/e;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/e;-><init>()V

    .line 63
    .restart local v0    # "f":Lcom/jiliguala/niuwa/common/a/e;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(III)Lcom/jiliguala/niuwa/common/a/e;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/jiliguala/niuwa/common/a/e;->h:I

    .line 118
    iput p2, p0, Lcom/jiliguala/niuwa/common/a/e;->i:I

    .line 119
    iput p3, p0, Lcom/jiliguala/niuwa/common/a/e;->j:I

    .line 120
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/common/a/e$a;)Lcom/jiliguala/niuwa/common/a/e;
    .locals 0
    .param p1, "mOnDateSetListener"    # Lcom/jiliguala/niuwa/common/a/e$a;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/e;->f:Lcom/jiliguala/niuwa/common/a/e$a;

    .line 113
    return-object p0
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 72
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/e;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/e;->l:Z

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/e;->l:Z

    .line 74
    sget-object v1, Lcom/jiliguala/niuwa/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000b6

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 87
    const v3, 0x7f0b00cf

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 89
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 90
    .local v2, "width":I
    const/4 v1, -0x2

    .line 91
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    const v3, 0x7f090196

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/datepicker/DatePicker;

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->c:Lnet/simonvt/datepicker/DatePicker;

    .line 96
    const v3, 0x7f090157

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->d:Landroid/view/View;

    .line 97
    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->e:Landroid/view/View;

    .line 99
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/a/e;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->e:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/a/e;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget v3, p0, Lcom/jiliguala/niuwa/common/a/e;->h:I

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/a/e;->c:Lnet/simonvt/datepicker/DatePicker;

    iget v4, p0, Lcom/jiliguala/niuwa/common/a/e;->h:I

    iget v5, p0, Lcom/jiliguala/niuwa/common/a/e;->i:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/a/e;->j:I

    invoke-virtual {v3, v4, v5, v6}, Lnet/simonvt/datepicker/DatePicker;->a(III)V

    .line 106
    :cond_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/e;->g:Landroid/app/Dialog;

    .line 108
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/e;->l:Z

    .line 127
    return-void
.end method
