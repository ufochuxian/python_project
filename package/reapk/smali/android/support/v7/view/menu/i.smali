.class Landroid/support/v7/view/menu/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/view/menu/o$a;


# instance fields
.field a:Landroid/support/v7/view/menu/f;

.field private b:Landroid/support/v7/view/menu/h;

.field private c:Landroid/support/v7/app/d;

.field private d:Landroid/support/v7/view/menu/o$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/h;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 52
    iget-object v3, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    .line 55
    .local v3, "menu":Landroid/support/v7/view/menu/h;
    new-instance v0, Landroid/support/v7/app/d$a;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Landroid/support/v7/app/d$a;
    new-instance v4, Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->a()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/v7/a/b$i;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    .line 60
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v4, p0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 61
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    iget-object v5, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    .line 62
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/support/v7/app/d$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 65
    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->p()Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/d$a;->a(Landroid/view/View;)Landroid/support/v7/app/d$a;

    .line 75
    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v7/app/d$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/d$a;

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    .line 79
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v4, p0}, Landroid/support/v7/app/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v4}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 82
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 86
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v4}, Landroid/support/v7/app/d;->show()V

    .line 89
    return-void

    .line 71
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/d$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d$a;

    move-result-object v4

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->n()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 149
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/i;->a()V

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 155
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/o$a;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/o$a;

    .line 129
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/h;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    iget-object v1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;I)Z

    .line 167
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 145
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 92
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 95
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v4}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 96
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 100
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 123
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 106
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/d;

    invoke-virtual {v4}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 108
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 110
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 112
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 123
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method
