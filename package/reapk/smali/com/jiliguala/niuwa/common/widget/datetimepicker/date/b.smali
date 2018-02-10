.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;,
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1f4

.field public static final b:Ljava/lang/String; = "week_start"

.field public static final c:Ljava/lang/String; = "year_start"

.field public static final d:Ljava/lang/String; = "year_end"

.field public static final e:Ljava/lang/String; = "current_view"

.field public static final f:Ljava/lang/String; = "list_position"

.field public static final g:Ljava/lang/String; = "list_position_offset"

.field private static final h:Ljava/lang/String; = "year"

.field private static final i:Ljava/lang/String; = "month"

.field private static final j:Ljava/lang/String; = "day"

.field private static final k:Ljava/lang/String; = "vibrate"

.field private static final l:I = 0x7f5

.field private static final m:I = 0x76e

.field private static final n:I = -0x1

.field private static final o:I = 0x0

.field private static final p:I = 0x1

.field private static q:Ljava/text/SimpleDateFormat;

.field private static r:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:Z

.field private B:J

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/os/Vibrator;

.field private O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

.field private P:Landroid/widget/TextView;

.field private Q:Z

.field private R:Z

.field private final s:Ljava/util/Calendar;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/text/DateFormatSymbols;

.field private x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

.field private z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->q:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->r:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    .line 56
    const/16 v0, 0x7f5

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->t:I

    .line 57
    const/16 v0, 0x76e

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->u:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    .line 59
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->w:Ljava/text/DateFormatSymbols;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->x:Ljava/util/HashSet;

    .line 63
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->A:Z

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    .line 86
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;III)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;
    .locals 1
    .param p0, "onDateSetListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;IIIZ)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;IIIZ)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;
    .locals 6
    .param p0, "onDateSetListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "vibrate"    # Z

    .prologue
    .line 93
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;-><init>()V

    .local v0, "datePickerDialog":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;IIIZ)V

    .line 95
    return-object v0
.end method

.method private a(IZ)V
    .locals 9
    .param p1, "currentView"    # I
    .param p2, "forceRefresh"    # Z

    .prologue
    .line 115
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 116
    .local v4, "timeInMillis":J
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f866666    # 1.05f

    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(Landroid/view/View;FF)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 119
    .local v1, "monthDayAnim":Lcom/nineoldandroids/a/l;
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->A:Z

    if-eqz v6, :cond_0

    .line 120
    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 121
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->A:Z

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a()V

    .line 124
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    if-ne v6, p1, :cond_1

    if-eqz p2, :cond_2

    .line 125
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 126
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 127
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 128
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    .line 130
    :cond_2
    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v4, v5, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "monthDayDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->F:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    .end local v1    # "monthDayAnim":Lcom/nineoldandroids/a/l;
    .end local v2    # "monthDayDesc":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(Landroid/view/View;FF)Lcom/nineoldandroids/a/l;

    move-result-object v3

    .line 137
    .local v3, "yearAnim":Lcom/nineoldandroids/a/l;
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->A:Z

    if-eqz v6, :cond_3

    .line 138
    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 139
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->A:Z

    .line 141
    :cond_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a()V

    .line 142
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    if-ne v6, p1, :cond_4

    if-eqz p2, :cond_5

    .line 143
    :cond_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 144
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 146
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    .line 148
    :cond_5
    invoke-virtual {v3}, Lcom/nineoldandroids/a/l;->a()V

    .line 149
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->r:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "dayDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->E:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->G:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->g()V

    return-void
.end method

.method private b(II)V
    .locals 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x5

    .line 99
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 100
    .local v0, "day":I
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(II)I

    move-result v1

    .line 101
    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 104
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1, "currentView"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->a(IZ)V

    .line 112
    return-void
.end method

.method private c(Z)V
    .locals 9
    .param p1, "announce"    # Z

    .prologue
    .line 166
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->H:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 168
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->H:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->w:Ljava/text/DateFormatSymbols;

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->M:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->w:Ljava/text/DateFormatSymbols;

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->L:Landroid/widget/TextView;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->q:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->r:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 178
    .local v2, "millis":J
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v5, v2, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 179
    const/16 v0, 0x18

    .line 180
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "monthAndDayText":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    if-eqz p1, :cond_1

    .line 184
    const/16 v0, 0x14

    .line 185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v5, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 188
    .end local v1    # "fullDateText":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->x:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;->a()V

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->e()V

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->y:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->y:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;III)V

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->dismissAllowingStateLoss()V

    .line 331
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    return v0
.end method

.method public a(I)V
    .locals 3
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->b(II)V

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 370
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->f()V

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(I)V

    .line 372
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(Z)V

    .line 373
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "minYear"    # I
    .param p2, "maxYear"    # I

    .prologue
    .line 384
    if-ge p2, p1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Year end must be larger than year start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    const/16 v0, 0x7f5

    if-le p2, v0, :cond_1

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max year end must < 2037"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    const/16 v0, 0x76e

    if-ge p1, v0, :cond_2

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min year end must > 1902"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_2
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->u:I

    .line 391
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->t:I

    .line 392
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->b()V

    .line 394
    :cond_3
    return-void
.end method

.method public a(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 337
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->f()V

    .line 338
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->R:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->g()V

    .line 343
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;)V
    .locals 1
    .param p1, "onDateChangedListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->x:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;)V
    .locals 0
    .param p1, "onDateSetListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->y:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

    .line 381
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    .line 108
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->t:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .param p1, "startOfWeek"    # I

    .prologue
    .line 202
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->b()V

    .line 209
    :cond_2
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;IIIZ)V
    .locals 2
    .param p1, "onDateSetListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "vibrate"    # Z

    .prologue
    .line 224
    const/16 v0, 0x7f5

    if-le p2, v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year end must < 2037"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const/16 v0, 0x76e

    if-ge p2, v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year end must > 1902"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->y:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$b;

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 232
    iput-boolean p5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    .line 233
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "closeOnSingleTapDay"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->R:Z

    .line 415
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->u:I

    return v0
.end method

.method public d()Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 397
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->N:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    if-eqz v2, :cond_0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 399
    .local v0, "timeInMillis":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->B:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->N:Landroid/os/Vibrator;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 401
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->B:J

    .line 404
    .end local v0    # "timeInMillis":J
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->e()V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09019c

    if-ne v0, v1, :cond_1

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09019b

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 246
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 247
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->N:Landroid/os/Vibrator;

    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v2, 0x1

    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v2, 0x2

    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 251
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v2, 0x5

    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 252
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    .line 254
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 259
    const v8, 0x7f0b008a

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 261
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f090199

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->H:Landroid/widget/TextView;

    .line 262
    const v8, 0x7f09019b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    .line 263
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v8, 0x7f09019a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->M:Landroid/widget/TextView;

    .line 265
    const v8, 0x7f090198

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->L:Landroid/widget/TextView;

    .line 266
    const v8, 0x7f09019c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    .line 267
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->P:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const/4 v3, -0x1

    .line 270
    .local v3, "listPosition":I
    const/4 v1, 0x0

    .line 271
    .local v1, "currentView":I
    const/4 v4, 0x0

    .line 272
    .local v4, "listPositionOffset":I
    if-eqz p3, :cond_0

    .line 273
    const-string v8, "week_start"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    .line 274
    const-string v8, "year_start"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->u:I

    .line 275
    const-string v8, "year_end"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->t:I

    .line 276
    const-string v8, "current_view"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 277
    const-string v8, "list_position"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 278
    const-string v8, "list_position_offset"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 282
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-direct {v8, v0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    .line 283
    new-instance v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-direct {v8, v0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    .line 285
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 286
    .local v6, "resources":Landroid/content/res/Resources;
    const v8, 0x7f0f00aa

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->D:Ljava/lang/String;

    .line 287
    const v8, 0x7f0f01a8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->F:Ljava/lang/String;

    .line 288
    const v8, 0x7f0f0284

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->E:Ljava/lang/String;

    .line 289
    const v8, 0x7f0f01ac

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->G:Ljava/lang/String;

    .line 291
    const v8, 0x7f090059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    .line 292
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 293
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 294
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 296
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 297
    .local v2, "inAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 298
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v8, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 300
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 301
    .local v5, "outAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 302
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->z:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v8, v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 304
    const v8, 0x7f0901c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->J:Landroid/widget/Button;

    .line 305
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->J:Landroid/widget/Button;

    new-instance v9, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$1;

    invoke-direct {v9, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$1;-><init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->c(Z)V

    .line 312
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->a(IZ)V

    .line 314
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 315
    if-nez v1, :cond_1

    .line 316
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a(I)V

    .line 318
    :cond_1
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 319
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v8, v3, v4}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(II)V

    .line 322
    :cond_2
    return-object v7
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    const-string v1, "year"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v1, "month"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string v1, "day"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->s:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v1, "week_start"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string v1, "year_start"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v1, "year_end"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v1, "current_view"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const/4 v0, -0x1

    .line 356
    .local v0, "listPosition":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->I:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    .line 359
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->v:I

    if-ne v1, v4, :cond_1

    .line 360
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 361
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->O:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_1
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v1, "vibrate"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->Q:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 408
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v2, 0x9

    .line 409
    .local v1, "width":I
    const/4 v0, -0x2

    .line 410
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 411
    return-void
.end method
