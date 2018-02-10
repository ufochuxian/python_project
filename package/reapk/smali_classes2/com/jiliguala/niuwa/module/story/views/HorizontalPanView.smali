.class public Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInterceptTouchMode:Z

.field mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

.field private mTouchIsDrag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setUp()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setUp()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setUp()V

    .line 43
    return-void
.end method

.method private setUp()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setOrientation(I)V

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mTouchIsDrag:Z

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;->onTouchStarted()V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    invoke-interface {v0, p3}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;->onPanFinished(F)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mInterceptTouchMode:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "distance":F
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;->onPanChanged(F)V

    .line 94
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mTouchIsDrag:Z

    .line 95
    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;->onTap(Landroid/view/MotionEvent;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 60
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mTouchIsDrag:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;->onPanFinished(F)V

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 66
    :cond_1
    return v0
.end method

.method public setInterceptTouchMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mInterceptTouchMode:Z

    .line 114
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->mListener:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;

    .line 110
    return-void
.end method
