.class final Lcom/bigkoo/pickerview/lib/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final a:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;)V
    .locals 0
    .param p1, "loopview"    # Lcom/bigkoo/pickerview/lib/WheelView;

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/b;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 11
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/b;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(F)V

    .line 16
    const/4 v0, 0x1

    return v0
.end method
