.class Lnet/simonvt/calendarview/CalendarView$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/calendarview/CalendarView$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/calendarview/CalendarView;

.field private b:I

.field private c:Landroid/view/GestureDetector;

.field private d:I

.field private final e:Ljava/util/Calendar;

.field private f:I


# direct methods
.method public constructor <init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1355
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    .line 1356
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/simonvt/calendarview/CalendarView$c$a;

    invoke-direct {v2, p0}, Lnet/simonvt/calendarview/CalendarView$c$a;-><init>(Lnet/simonvt/calendarview/CalendarView$c;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->c:Landroid/view/GestureDetector;

    .line 1357
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$c;->b()V

    .line 1358
    return-void
.end method

.method static synthetic a(Lnet/simonvt/calendarview/CalendarView$c;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/calendarview/CalendarView$c;

    .prologue
    .line 1343
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1364
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->b:I

    .line 1365
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->f(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->f:I

    .line 1366
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->g(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->h(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    .line 1367
    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->f(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->h(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1368
    :cond_0
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->f:I

    .line 1370
    :cond_1
    return-void
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1470
    invoke-virtual {p0, p1}, Lnet/simonvt/calendarview/CalendarView$c;->a(Ljava/util/Calendar;)V

    .line 1471
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1}, Lnet/simonvt/calendarview/CalendarView;->b(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)V

    .line 1472
    return-void
.end method

.method static synthetic b(Lnet/simonvt/calendarview/CalendarView$c;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/calendarview/CalendarView$c;

    .prologue
    .line 1343
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$c;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 1438
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->d:I

    if-ne v0, p1, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1441
    :cond_0
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$c;->d:I

    .line 1442
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1378
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1379
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1383
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->a(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->b:I

    .line 1384
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->d:I

    .line 1385
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$c;->f:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1402
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1407
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    .line 1412
    const/4 v2, 0x0

    .line 1413
    .local v2, "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 1414
    check-cast v2, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 1425
    :goto_0
    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->b:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->e:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1427
    .local v1, "selectedWeekDay":I
    :goto_1
    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->d:I

    invoke-virtual {v2, p1, v1, v3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->a(III)V

    .line 1429
    return-object v2

    .line 1416
    .end local v1    # "selectedWeekDay":I
    :cond_0
    new-instance v2, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .end local v2    # "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    iget-object v4, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v4}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/simonvt/calendarview/CalendarView$WeekView;-><init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V

    .line 1417
    .restart local v2    # "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1420
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setClickable(Z)V

    .line 1422
    invoke-virtual {v2, p0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 1425
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1447
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->i(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$c;->c:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1448
    check-cast v0, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 1450
    .local v0, "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->j(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->a(FLjava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1461
    .end local v0    # "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    :cond_0
    :goto_0
    return v1

    .line 1455
    .restart local v0    # "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    :cond_1
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->j(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->g(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->j(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->f(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$c;->a:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->j(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/simonvt/calendarview/CalendarView$c;->b(Ljava/util/Calendar;)V

    goto :goto_0

    .line 1461
    .end local v0    # "weekView":Lnet/simonvt/calendarview/CalendarView$WeekView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
