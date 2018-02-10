.class public Landroid/support/v7/widget/MenuPopupWindow;
.super Landroid/support/v7/widget/z;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aa;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MenuPopupWindow"

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private p:Landroid/support/v7/widget/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 59
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setTouchModal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 74
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 75
    .local v0, "view":Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/support/v7/widget/aa;)V

    .line 76
    return-object v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->p:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->p:Landroid/support/v7/widget/aa;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    .line 123
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/aa;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/support/v7/widget/aa;

    .prologue
    .line 92
    iput-object p1, p0, Landroid/support/v7/widget/MenuPopupWindow;->p:Landroid/support/v7/widget/aa;

    .line 93
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "enterTransition"    # Ljava/lang/Object;

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->h:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "enterTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 83
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->p:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->p:Landroid/support/v7/widget/aa;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/aa;->b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    .line 115
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "exitTransition"    # Ljava/lang/Object;

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->h:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "exitTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 89
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 6
    .param p1, "touchModal"    # Z

    .prologue
    .line 100
    sget-object v1, Landroid/support/v7/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/widget/MenuPopupWindow;->h:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
