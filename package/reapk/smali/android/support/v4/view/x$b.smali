.class Landroid/support/v4/view/x$b;
.super Landroid/support/v4/view/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/view/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    .prologue
    .line 63
    invoke-static {p1, p2}, Landroid/support/v4/view/y;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;II)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/y;->a(Landroid/view/MotionEvent;II)F

    move-result v0

    return v0
.end method
