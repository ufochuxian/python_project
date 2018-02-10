.class public Landroid/support/v7/widget/ag;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# instance fields
.field final b:Landroid/support/v7/widget/RecyclerView;

.field final c:Landroid/support/v4/view/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    .line 84
    new-instance v0, Landroid/support/v7/widget/ag$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ag$1;-><init>(Landroid/support/v7/widget/ag;)V

    iput-object v0, p0, Landroid/support/v7/widget/ag;->c:Landroid/support/v4/view/b;

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 57
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/widget/ag;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v4/view/a/h;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ag;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->B()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v4/view/b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/ag;->c:Landroid/support/v4/view/b;

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ag;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 69
    .local v0, "rv":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .end local v0    # "rv":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    return-void
.end method
