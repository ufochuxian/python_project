.class Landroid/support/v4/view/bd$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bd$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "mode"    # I

    .prologue
    .line 77
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "split"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "isTransitionGroup"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    instance-of v0, p1, Landroid/support/v4/view/ac;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Landroid/support/v4/view/ac;

    .end local p1    # "group":Landroid/view/ViewGroup;
    invoke-interface {p1}, Landroid/support/v4/view/ac;->getNestedScrollAxes()I

    move-result v0

    .line 93
    :goto_0
    return v0

    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
