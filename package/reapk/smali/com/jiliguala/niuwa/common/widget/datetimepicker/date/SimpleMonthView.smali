.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;
    }
.end annotation


# static fields
.field private static final R:I = 0x3c

.field public static final a:Ljava/lang/String; = "height"

.field public static final b:Ljava/lang/String; = "month"

.field public static final c:Ljava/lang/String; = "year"

.field public static final d:Ljava/lang/String; = "selected_day"

.field public static final e:Ljava/lang/String; = "week_start"

.field public static final f:Ljava/lang/String; = "num_days"

.field public static final g:Ljava/lang/String; = "focus_month"

.field public static final h:Ljava/lang/String; = "show_wk_num"

.field protected static final i:I = 0x6

.field protected static j:I

.field protected static k:I

.field protected static l:I

.field protected static m:I

.field protected static n:I

.field protected static o:I

.field protected static p:I

.field protected static q:I

.field protected static r:F


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:Z

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:I

.field protected M:I

.field protected N:I

.field protected O:I

.field protected P:I

.field protected Q:I

.field private final S:Ljava/lang/StringBuilder;

.field private final T:Ljava/util/Formatter;

.field private final U:Ljava/util/Calendar;

.field private final V:Ljava/util/Calendar;

.field private W:I

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:I

.field private ad:Ljava/text/DateFormatSymbols;

.field private ae:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;

.field protected s:I

.field protected t:I

.field protected u:Landroid/graphics/Paint;

.field protected v:Landroid/graphics/Paint;

.field protected w:Landroid/graphics/Paint;

.field protected x:Landroid/graphics/Paint;

.field protected y:Landroid/graphics/Paint;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x20

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->j:I

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->l:I

    .line 41
    const/16 v0, 0xa

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->n:I

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->r:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    sget v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->j:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    .line 51
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    .line 61
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->D:I

    .line 62
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->E:I

    .line 63
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->F:I

    .line 64
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->G:Z

    .line 65
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->H:I

    .line 66
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->I:I

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    .line 68
    const/4 v1, 0x7

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    .line 69
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    .line 70
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->M:I

    .line 71
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->N:I

    .line 75
    const/4 v1, 0x6

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->W:I

    .line 78
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ac:I

    .line 79
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ad:Ljava/text/DateFormatSymbols;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->V:Ljava/util/Calendar;

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    .line 89
    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->aa:Ljava/lang/String;

    .line 90
    const v1, 0x7f0f01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ab:Ljava/lang/String;

    .line 91
    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->z:I

    .line 92
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->C:I

    .line 93
    const v1, 0x7f0600fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->B:I

    .line 94
    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->A:I

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->S:Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->S:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->T:Ljava/util/Formatter;

    .line 99
    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->m:I

    .line 100
    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->q:I

    .line 101
    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->o:I

    .line 102
    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    .line 103
    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->k:I

    .line 105
    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v2, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    .line 107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->a()V

    .line 108
    return-void
.end method

.method private a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 1
    .param p1, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ae:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ae:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;

    invoke-interface {v0, p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 151
    :cond_0
    return-void
.end method

.method private a(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 154
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->Q:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->O:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x7

    .line 118
    sget v5, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->o:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 119
    .local v4, "y":I
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    mul-int/lit8 v6, v6, 0x2

    div-int v1, v5, v6

    .line 121
    .local v1, "dayWidthHalf":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    if-ge v2, v5, :cond_0

    .line 122
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    rem-int v0, v5, v6

    .line 123
    .local v0, "calendarDay":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    add-int v3, v5, v6

    .line 124
    .local v3, "x":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->V:Ljava/util/Calendar;

    invoke-virtual {v5, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ad:Ljava/text/DateFormatSymbols;

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->V:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "calendarDay":I
    .end local v3    # "x":I
    :cond_0
    return-void
.end method

.method private c()I
    .locals 5

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->d()I

    move-result v1

    .line 112
    .local v1, "offset":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    div-int v0, v3, v4

    .line 113
    .local v0, "dividend":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    rem-int v2, v3, v4

    .line 114
    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 132
    .local v0, "x":I
    sget v2, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    sget v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->o:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->q:I

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    .line 133
    .local v1, "y":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method private d()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ac:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ac:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ac:I

    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 141
    const/16 v6, 0x34

    .line 142
    .local v6, "flags":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->S:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 144
    .local v2, "millis":J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(FF)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 186
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    .line 187
    .local v1, "padding":I
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 188
    :cond_0
    const/4 v3, 0x0

    .line 194
    :goto_0
    return-object v3

    .line 191
    :cond_1
    sget v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    div-int v2, v3, v4

    .line 192
    .local v2, "yDay":I
    int-to-float v3, v1

    sub-float v3, p1, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->d()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    mul-int/2addr v4, v2

    add-int v0, v3, v4

    .line 194
    .local v0, "day":I
    new-instance v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->Q:I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->O:I

    invoke-direct {v3, v4, v5, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;-><init>(III)V

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    sget v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ab:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    sget v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->aa:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    sget v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 237
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->m:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->l:I

    sub-int/2addr v5, v6

    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    add-int v4, v5, v6

    .line 159
    .local v4, "y":I
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    mul-int/lit8 v6, v6, 0x2

    div-int v2, v5, v6

    .line 160
    .local v2, "paddingDay":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->d()I

    move-result v1

    .line 161
    .local v1, "dayOffset":I
    const/4 v0, 0x1

    .line 163
    .local v0, "day":I
    :goto_0
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    if-gt v0, v5, :cond_3

    .line 164
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->t:I

    add-int v3, v5, v6

    .line 165
    .local v3, "x":I
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->H:I

    if-ne v5, v0, :cond_0

    .line 166
    int-to-float v5, v3

    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->m:I

    div-int/lit8 v6, v6, 0x3

    sub-int v6, v4, v6

    int-to-float v6, v6

    sget v7, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->k:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    :cond_0
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->G:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->I:I

    if-ne v5, v0, :cond_2

    .line 169
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->C:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    :goto_1
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->K:I

    if-ne v1, v5, :cond_1

    .line 178
    const/4 v1, 0x0

    .line 179
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    add-int/2addr v4, v5

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_0

    .line 171
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->z:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 183
    .end local v3    # "x":I
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x6

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->W:I

    .line 265
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->requestLayout()V

    .line 266
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->c(Landroid/graphics/Canvas;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->b(Landroid/graphics/Canvas;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->a(Landroid/graphics/Canvas;)V

    .line 243
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->W:I

    mul-int/2addr v1, v2

    sget v2, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->p:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setMeasuredDimension(II)V

    .line 247
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->P:I

    .line 251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->a(FF)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    move-result-object v0

    .line 256
    .local v0, "calendarDay":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 260
    .end local v0    # "calendarDay":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    :cond_0
    return v3
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 269
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "You must specify month and year for this view"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->setTag(Ljava/lang/Object;)V

    .line 274
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    .line 276
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    sget v4, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->n:I

    if-ge v3, v4, :cond_1

    .line 277
    sget v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->n:I

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->s:I

    .line 280
    :cond_1
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->H:I

    .line 284
    :cond_2
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->O:I

    .line 285
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->Q:I

    .line 287
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "today":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 289
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->G:Z

    .line 290
    const/4 v3, -0x1

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->I:I

    .line 292
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->O:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 293
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->Q:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 294
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 295
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ac:I

    .line 297
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 298
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    .line 303
    :goto_0
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->O:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->Q:I

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a(II)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->L:I

    if-ge v1, v3, :cond_5

    .line 305
    add-int/lit8 v0, v1, 0x1

    .line 306
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->a(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->G:Z

    .line 308
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->I:I

    .line 304
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->U:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->J:I

    goto :goto_0

    .line 312
    .restart local v1    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->c()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->W:I

    .line 313
    return-void
.end method

.method public setOnDayClickListener(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;)V
    .locals 0
    .param p1, "onDayClickListener"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->ae:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView$a;

    .line 317
    return-void
.end method
