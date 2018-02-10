.class public Lcom/jiliguala/niuwa/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/a/b/d$a;,
        Lcom/jiliguala/niuwa/a/b/d$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/jiliguala/niuwa/a/b/d$b;

.field public c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/content/DialogInterface$OnCancelListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/jiliguala/niuwa/a/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/a/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/a/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/d;->g:Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/a/b/d;->a(Landroid/content/Context;)V

    .line 49
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

    .line 57
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b1

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0110

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->h:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->updateStyle(I)V

    .line 70
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 72
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/a/b/d;->d()V

    .line 77
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 80
    iget-object v2, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 81
    .local v1, "win":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/d;->e:Landroid/content/DialogInterface$OnCancelListener;

    .line 97
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/d;->f:Landroid/content/DialogInterface$OnDismissListener;

    .line 106
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/d$a;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/a/b/d$a;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;

    .line 53
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/a/b/d$b;)V
    .locals 0
    .param p1, "mClickListener"    # Lcom/jiliguala/niuwa/a/b/d$b;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/d;->b:Lcom/jiliguala/niuwa/a/b/d$b;

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jiliguala/niuwa/a/b/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/game/GameUtil;->getBgColorByType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mHasFinishUnZipFile:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->hasRegister:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->unRegisterReceiver()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->stopApng()V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;

    if-eqz v0, :cond_3

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_3
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .param p1, "canCancel"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->hasRegister:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->unRegisterReceiver()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->stopApng()V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;

    if-eqz v0, :cond_3

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_3
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->e:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->e:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 198
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->f:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->f:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    invoke-static {p3}, Lcom/google/android/exoplayer/util/KeyEventUtils;->isKeyCodeBack(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/google/android/exoplayer/util/KeyEventUtils;->isActionUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/d;->i:Lcom/jiliguala/niuwa/a/b/d$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/a/b/d$a;->onBackBtnPress()V

    .line 208
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
