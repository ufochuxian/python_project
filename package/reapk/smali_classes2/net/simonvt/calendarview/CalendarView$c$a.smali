.class Lnet/simonvt/calendarview/CalendarView$c$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/calendarview/CalendarView$c;


# direct methods
.method constructor <init>(Lnet/simonvt/calendarview/CalendarView$c;)V
    .locals 0
    .param p1, "this$1"    # Lnet/simonvt/calendarview/CalendarView$c;

    .prologue
    .line 1478
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$c$a;->a:Lnet/simonvt/calendarview/CalendarView$c;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1481
    const/4 v0, 0x1

    return v0
.end method
