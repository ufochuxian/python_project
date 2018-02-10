.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0xc

.field protected static b:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

.field private e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x7

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->c:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->a()V

    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->d()Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 27
    return-void
.end method

.method private a(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;-><init>(J)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .line 84
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 0
    .param p1, "simpleMonthView"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
    .param p2, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 4
    .param p1, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->e()V

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    iget v2, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    iget v3, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->a(III)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 96
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 0
    .param p1, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x1

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 49
    check-cast v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;

    .line 50
    .local v3, "v":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 57
    .restart local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .restart local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    rem-int/lit8 v1, p1, 0xc

    .line 63
    .local v1, "month":I
    div-int/lit8 v5, p1, 0xc

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->c()I

    move-result v6

    add-int v4, v5, v6

    .line 65
    .local v4, "year":I
    const/4 v2, -0x1

    .line 66
    .local v2, "selectedDay":I
    invoke-direct {p0, v4, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->a(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->e:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    iget v2, v5, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a:I

    .line 70
    :cond_1
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->b()V

    .line 72
    const-string v5, "selected_day"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v5, "year"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "month"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v5, "week_start"

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 77
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->invalidate()V

    .line 79
    return-object v3

    .line 52
    .end local v1    # "month":I
    .end local v2    # "selectedDay":I
    .end local v3    # "v":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
    .end local v4    # "year":I
    :cond_2
    new-instance v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 53
    .restart local v3    # "v":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setClickable(Z)V

    .line 55
    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setOnDayClickListener(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;)V

    goto :goto_0
.end method
