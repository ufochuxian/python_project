.class public Lcom/jiliguala/niuwa/common/a/h;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/View;

.field private d:Lcom/jiliguala/niuwa/common/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/common/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/h;->a:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/common/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/h;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 34
    sget-object v1, Lcom/jiliguala/niuwa/common/a/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/h;

    .line 35
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/h;
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/common/a/h;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/h;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/h;-><init>()V

    .line 38
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/h;
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/h;->c:Landroid/view/View;

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "mCancel":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/h;->c:Landroid/view/View;

    const v3, 0x7f09023c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "mGoSetting":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/a/h$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/a/h$a;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/h;->d:Lcom/jiliguala/niuwa/common/a/h$a;

    .line 105
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 47
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/h;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lcom/jiliguala/niuwa/common/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 96
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/h;->dismissAllowingStateLoss()V

    .line 97
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/h;->d:Lcom/jiliguala/niuwa/common/a/h$a;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/h;->d:Lcom/jiliguala/niuwa/common/a/h$a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/a/h$a;->a()V

    .line 101
    :cond_0
    return-void

    .line 92
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/a/h;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f09023c -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/a/h;->setStyle(II)V

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 73
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    return-object v0
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
    .line 64
    const v0, 0x7f0b0094

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/h;->c:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/a/h;->a()V

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/h;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 110
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/h;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 112
    .local v0, "fm":Landroid/support/v4/app/ag;
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    sget-object v3, Lcom/jiliguala/niuwa/common/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 114
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 116
    .local v2, "ft":Landroid/support/v4/app/an;
    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v3

    goto :goto_0
.end method
