.class public abstract Lcom/jiliguala/niuwa/module/story/views/FullScreenDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/views/FullScreenDialog;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 23
    .local v0, "window":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000c1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 35
    .local v1, "window":Landroid/view/Window;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 36
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 37
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 48
    return-void
.end method
