.class public Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;
    }
.end annotation


# instance fields
.field public a:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->a:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->a:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;->a(Landroid/view/KeyEvent;)V

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setKeyEventHandler(Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;)V
    .locals 0
    .param p1, "handler"    # Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->a:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;

    .line 26
    return-void
.end method
