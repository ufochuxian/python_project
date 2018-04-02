.class public final Lnet/simonvt/datepicker/d$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/datepicker/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final CalendarView:[I

.field public static final CalendarView_cv_dateTextAppearance:I = 0x0

.field public static final CalendarView_cv_dividerHorizontal:I = 0x1

.field public static final CalendarView_cv_firstDayOfWeek:I = 0x2

.field public static final CalendarView_cv_focusedMonthDateColor:I = 0x3

.field public static final CalendarView_cv_maxDate:I = 0x4

.field public static final CalendarView_cv_minDate:I = 0x5

.field public static final CalendarView_cv_selectedDateVerticalBar:I = 0x6

.field public static final CalendarView_cv_selectedWeekBackgroundColor:I = 0x7

.field public static final CalendarView_cv_showWeekNumber:I = 0x8

.field public static final CalendarView_cv_shownWeekCount:I = 0x9

.field public static final CalendarView_cv_unfocusedMonthDateColor:I = 0xa

.field public static final CalendarView_cv_weekDayTextAppearance:I = 0xb

.field public static final CalendarView_cv_weekNumberColor:I = 0xc

.field public static final CalendarView_cv_weekSeparatorLineColor:I = 0xd

.field public static final DatePicker:[I

.field public static final DatePicker_dp_calendarViewShown:I = 0x0

.field public static final DatePicker_dp_endYear:I = 0x1

.field public static final DatePicker_dp_internalLayout:I = 0x2

.field public static final DatePicker_dp_limit_year:I = 0x3

.field public static final DatePicker_dp_maxDate:I = 0x4

.field public static final DatePicker_dp_minDate:I = 0x5

.field public static final DatePicker_dp_show_day:I = 0x6

.field public static final DatePicker_dp_spinnersShown:I = 0x7

.field public static final DatePicker_dp_startYear:I = 0x8

.field public static final NumberPicker:[I

.field public static final NumberPicker_internalLayout:I = 0x0

.field public static final NumberPicker_internalMaxHeight:I = 0x1

.field public static final NumberPicker_internalMaxWidth:I = 0x2

.field public static final NumberPicker_internalMinHeight:I = 0x3

.field public static final NumberPicker_internalMinWidth:I = 0x4

.field public static final NumberPicker_selectionDivider:I = 0x5

.field public static final NumberPicker_selectionDividerHeight:I = 0x6

.field public static final NumberPicker_selectionDividersDistance:I = 0x7

.field public static final NumberPicker_solidColor:I = 0x8

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9

.field public static final TextAppearanceCompatStyleable:[I

.field public static final TextAppearanceCompatStyleable_android_textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/datepicker/d$h;->CalendarView:[I

    .line 133
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/simonvt/datepicker/d$h;->DatePicker:[I

    .line 143
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/simonvt/datepicker/d$h;->NumberPicker:[I

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, v0, v1

    sput-object v0, Lnet/simonvt/datepicker/d$h;->TextAppearanceCompatStyleable:[I

    return-void

    .line 118
    nop

    :array_0
    .array-data 4
        0x7f04007e
        0x7f04007f
        0x7f040080
        0x7f040081
        0x7f040082
        0x7f040083
        0x7f040084
        0x7f040085
        0x7f040086
        0x7f040087
        0x7f040088
        0x7f040089
        0x7f04008a
        0x7f04008b
    .end array-data

    .line 133
    :array_1
    .array-data 4
        0x7f040096
        0x7f040097
        0x7f040098
        0x7f040099
        0x7f04009a
        0x7f04009b
        0x7f04009c
        0x7f04009d
        0x7f04009e
    .end array-data

    .line 143
    :array_2
    .array-data 4
        0x7f0400e0
        0x7f0400e1
        0x7f0400e2
        0x7f0400e3
        0x7f0400e4
        0x7f0401cf
        0x7f0401d0
        0x7f0401d1
        0x7f0401de
        0x7f040238
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
