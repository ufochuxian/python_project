.class Lnet/simonvt/calendarview/CalendarView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/calendarview/CalendarView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lnet/simonvt/calendarview/CalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/simonvt/calendarview/CalendarView;

    .prologue
    .line 1014
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$1;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 1017
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$1;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$1;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->b(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$c;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/calendarview/CalendarView$c;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1019
    .local v0, "selectedDay":Ljava/util/Calendar;
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$1;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$a;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$1;->a:Lnet/simonvt/calendarview/CalendarView;

    const/4 v3, 0x1

    .line 1020
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 1021
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1022
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1019
    invoke-interface {v1, v2, v3, v4, v5}, Lnet/simonvt/calendarview/CalendarView$a;->a(Lnet/simonvt/calendarview/CalendarView;III)V

    .line 1024
    .end local v0    # "selectedDay":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
