.class Lnet/simonvt/calendarview/CalendarView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/calendarview/CalendarView;->e()V
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
    .line 1073
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$2;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$2;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1, p2, p3, p4}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;III)V

    .line 1083
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$2;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;I)V

    .line 1076
    return-void
.end method
