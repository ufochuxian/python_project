.class public Lnet/simonvt/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/datepicker/DatePicker$b;,
        Lnet/simonvt/datepicker/DatePicker$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final c:I = 0x76c

.field private static final d:I = 0x834

.field private static final e:Z = true

.field private static final f:Z = true

.field private static final g:Z = true

.field private static final h:Z = true

.field private static final i:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private final j:Landroid/widget/LinearLayout;

.field private final k:Lnet/simonvt/numberpicker/NumberPicker;

.field private final l:Lnet/simonvt/numberpicker/NumberPicker;

.field private final m:Lnet/simonvt/numberpicker/NumberPicker;

.field private final n:Landroid/widget/EditText;

.field private final o:Landroid/widget/EditText;

.field private final p:Landroid/widget/EditText;

.field private final q:Lnet/simonvt/calendarview/CalendarView;

.field private final r:Ljava/text/DateFormat;

.field private s:Ljava/util/Locale;

.field private t:Lnet/simonvt/datepicker/DatePicker$a;

.field private u:[Ljava/lang/String;

.field private v:I

.field private w:Ljava/util/Calendar;

.field private x:Ljava/util/Calendar;

.field private y:Ljava/util/Calendar;

.field private z:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/simonvt/datepicker/DatePicker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    sget v0, Lnet/simonvt/datepicker/d$a;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MM/dd/yyyy"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->r:Ljava/text/DateFormat;

    .line 122
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/simonvt/datepicker/DatePicker;->A:Z

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 143
    sget-object v8, Lnet/simonvt/datepicker/d$h;->DatePicker:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_spinnersShown:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 146
    .local v7, "spinnersShown":Z
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_show_day:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lnet/simonvt/datepicker/DatePicker;->B:Z

    .line 147
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_limit_year:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lnet/simonvt/datepicker/DatePicker;->C:Z

    .line 148
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_calendarViewShown:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 149
    .local v1, "calendarViewShown":Z
    iget-boolean v8, p0, Lnet/simonvt/datepicker/DatePicker;->C:Z

    if-nez v8, :cond_3

    .line 150
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_startYear:I

    const/16 v9, 0x76c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lnet/simonvt/datepicker/DatePicker;->D:I

    .line 151
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_endYear:I

    const/16 v9, 0x834

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lnet/simonvt/datepicker/DatePicker;->E:I

    .line 156
    :goto_0
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_minDate:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "minDate":Ljava/lang/String;
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_maxDate:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "maxDate":Ljava/lang/String;
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_internalLayout:I

    sget v9, Lnet/simonvt/datepicker/d$e;->date_picker_holo:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 159
    .local v3, "layoutResourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    const-string v8, "layout_inflater"

    .line 162
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 163
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x1

    invoke-virtual {v2, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 165
    new-instance v6, Lnet/simonvt/datepicker/DatePicker$1;

    invoke-direct {v6, p0}, Lnet/simonvt/datepicker/DatePicker$1;-><init>(Lnet/simonvt/datepicker/DatePicker;)V

    .line 201
    .local v6, "onChangeListener":Lnet/simonvt/numberpicker/NumberPicker$g;
    sget v8, Lnet/simonvt/datepicker/d$d;->pickers:I

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    .line 204
    sget v8, Lnet/simonvt/datepicker/d$d;->calendar_view:I

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/simonvt/calendarview/CalendarView;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    .line 205
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    new-instance v9, Lnet/simonvt/datepicker/DatePicker$2;

    invoke-direct {v9, p0}, Lnet/simonvt/datepicker/DatePicker$2;-><init>(Lnet/simonvt/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Lnet/simonvt/calendarview/CalendarView;->setOnDateChangeListener(Lnet/simonvt/calendarview/CalendarView$a;)V

    .line 214
    sget v8, Lnet/simonvt/datepicker/d$d;->day:I

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    .line 215
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Lnet/simonvt/numberpicker/NumberPicker;->getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$d;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setFormatter(Lnet/simonvt/numberpicker/NumberPicker$d;)V

    .line 216
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 217
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v8, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$g;)V

    .line 218
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    sget v9, Lnet/simonvt/datepicker/d$d;->np__numberpicker_input:I

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->n:Landroid/widget/EditText;

    .line 220
    iget-object v9, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-boolean v8, p0, Lnet/simonvt/datepicker/DatePicker;->B:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    .line 223
    sget v8, Lnet/simonvt/datepicker/d$d;->month:I

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    .line 224
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 225
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->v:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 226
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v9, p0, Lnet/simonvt/datepicker/DatePicker;->u:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 227
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 228
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v8, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$g;)V

    .line 229
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    sget v9, Lnet/simonvt/datepicker/d$d;->np__numberpicker_input:I

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->o:Landroid/widget/EditText;

    .line 232
    sget v8, Lnet/simonvt/datepicker/d$d;->year:I

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    .line 233
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 234
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v8, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$g;)V

    .line 235
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    sget v9, Lnet/simonvt/datepicker/d$d;->np__numberpicker_input:I

    invoke-virtual {v8, v9}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->p:Landroid/widget/EditText;

    .line 239
    if-nez v7, :cond_5

    if-nez v1, :cond_5

    .line 240
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->setSpinnersShown(Z)V

    .line 247
    :goto_2
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 249
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-direct {p0, v5, v8}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 250
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->D:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 255
    :cond_0
    :goto_3
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 258
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 260
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-direct {p0, v4, v8}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 261
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->E:I

    const/16 v10, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 266
    :cond_1
    :goto_4
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    .line 269
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v11, 0x5

    .line 271
    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    .line 270
    invoke-virtual {p0, v8, v9, v10, v11}, Lnet/simonvt/datepicker/DatePicker;->a(IIILnet/simonvt/datepicker/DatePicker$a;)V

    .line 274
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->a()V

    .line 277
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->e()V

    .line 280
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 281
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lnet/simonvt/datepicker/DatePicker;->setImportantForAccessibility(I)V

    .line 283
    :cond_2
    return-void

    .line 153
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layoutResourceId":I
    .end local v4    # "maxDate":Ljava/lang/String;
    .end local v5    # "minDate":Ljava/lang/String;
    .end local v6    # "onChangeListener":Lnet/simonvt/numberpicker/NumberPicker$g;
    :cond_3
    sget v8, Lnet/simonvt/datepicker/d$h;->DatePicker_dp_startYear:I

    const/16 v9, 0x76c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lnet/simonvt/datepicker/DatePicker;->D:I

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/simonvt/datepicker/DatePicker;->E:I

    goto/16 :goto_0

    .line 220
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "layoutResourceId":I
    .restart local v4    # "maxDate":Ljava/lang/String;
    .restart local v5    # "minDate":Ljava/lang/String;
    .restart local v6    # "onChangeListener":Lnet/simonvt/numberpicker/NumberPicker$g;
    :cond_4
    const/16 v8, 0x8

    goto/16 :goto_1

    .line 242
    :cond_5
    invoke-virtual {p0, v7}, Lnet/simonvt/datepicker/DatePicker;->setSpinnersShown(Z)V

    .line 243
    invoke-virtual {p0, v1}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_2

    .line 253
    :cond_6
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->D:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_3

    .line 264
    :cond_7
    iget-object v8, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->E:I

    const/16 v10, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Calendar;->set(III)V

    goto :goto_4
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 494
    :goto_0
    return-object v2

    .line 491
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 492
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 493
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 504
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 515
    const/4 v3, 0x3

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 516
    .local v1, "order":[C
    array-length v2, v1

    .line 517
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 518
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 532
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 520
    :sswitch_0
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lnet/simonvt/datepicker/DatePicker;->a(Lnet/simonvt/numberpicker/NumberPicker;II)V

    .line 517
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :sswitch_1
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lnet/simonvt/datepicker/DatePicker;->a(Lnet/simonvt/numberpicker/NumberPicker;II)V

    goto :goto_1

    .line 528
    :sswitch_2
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lnet/simonvt/datepicker/DatePicker;->a(Lnet/simonvt/numberpicker/NumberPicker;II)V

    goto :goto_1

    .line 535
    :cond_0
    return-void

    .line 515
    :array_0
    .array-data 2
        0x79s
        0x4ds
        0x64s
    .end array-data

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 745
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 749
    :cond_0
    return-void
.end method

.method static synthetic a(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->f()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/datepicker/DatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->c(III)V

    return-void
.end method

.method private a(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 716
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 717
    const/4 v0, 0x5

    .line 721
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lnet/simonvt/datepicker/d$d;->np__numberpicker_input:I

    invoke-virtual {p1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 722
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 723
    return-void

    .line 719
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->r:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    const/4 v1, 0x1

    .line 605
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lnet/simonvt/datepicker/DatePicker;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 626
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 628
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 629
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 630
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 632
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 633
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 654
    :goto_0
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->u:[Ljava/lang/String;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    .line 655
    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 654
    invoke-static {v1, v2, v3}, Lnet/simonvt/datepicker/b;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 656
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 660
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 661
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 664
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 665
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 666
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 667
    return-void

    .line 634
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 636
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 637
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 638
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 640
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 641
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 643
    :cond_1
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 644
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 645
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 646
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 648
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 649
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method

.method private b(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 610
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 611
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v2, 0x5

    .line 612
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 673
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Lnet/simonvt/calendarview/CalendarView;->a(JZZ)V

    .line 674
    return-void
.end method

.method private c(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 617
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method static synthetic d(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 701
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/simonvt/datepicker/DatePicker;->sendAccessibilityEvent(I)V

    .line 702
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->t:Lnet/simonvt/datepicker/DatePicker$a;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->t:Lnet/simonvt/datepicker/DatePicker$a;

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lnet/simonvt/datepicker/DatePicker$a;->a(Lnet/simonvt/datepicker/DatePicker;III)V

    .line 705
    :cond_0
    return-void
.end method

.method static synthetic e(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    return-object v0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method static synthetic f(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 758
    .line 759
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 760
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 761
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 763
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 766
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 767
    :cond_2
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 769
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static synthetic g(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    return-void
.end method

.method static synthetic h(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    return-void
.end method

.method static synthetic i(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker;

    .prologue
    .line 73
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->d()V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 462
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->s:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    return-void

    .line 466
    :cond_1
    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->s:Ljava/util/Locale;

    .line 468
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    .line 469
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    .line 470
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    .line 471
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lnet/simonvt/datepicker/DatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    .line 473
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/simonvt/datepicker/DatePicker;->v:I

    .line 474
    iget v1, p0, Lnet/simonvt/datepicker/DatePicker;->v:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->u:[Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnet/simonvt/datepicker/DatePicker;->v:I

    if-ge v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->u:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 545
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->b(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->c(III)V

    .line 549
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    .line 550
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    .line 551
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->d()V

    goto :goto_0
.end method

.method public a(IIILnet/simonvt/datepicker/DatePicker$a;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lnet/simonvt/datepicker/DatePicker$a;

    .prologue
    .line 587
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->c(III)V

    .line 588
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    .line 589
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    .line 590
    iput-object p4, p0, Lnet/simonvt/datepicker/DatePicker;->t:Lnet/simonvt/datepicker/DatePicker$a;

    .line 591
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 558
    return-void
.end method

.method public getCalendarView()Lnet/simonvt/calendarview/CalendarView;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lnet/simonvt/datepicker/DatePicker;->A:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lnet/simonvt/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 407
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 394
    const-class v0, Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 400
    const-class v0, Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 385
    const/16 v0, 0x14

    .line 386
    .local v0, "flags":I
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    .line 387
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    .line 386
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 568
    move-object v0, p1

    check-cast v0, Lnet/simonvt/datepicker/DatePicker$b;

    .line 569
    .local v0, "ss":Lnet/simonvt/datepicker/DatePicker$b;
    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 570
    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker$b;->a(Lnet/simonvt/datepicker/DatePicker$b;)I

    move-result v1

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker$b;->b(Lnet/simonvt/datepicker/DatePicker$b;)I

    move-result v2

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker$b;->c(Lnet/simonvt/datepicker/DatePicker$b;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/datepicker/DatePicker;->c(III)V

    .line 571
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    .line 572
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    .line 573
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 562
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 563
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lnet/simonvt/datepicker/DatePicker$b;

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/datepicker/DatePicker$b;-><init>(Landroid/os/Parcelable;IIILnet/simonvt/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 425
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lnet/simonvt/calendarview/CalendarView;->setVisibility(I)V

    .line 426
    return-void

    .line 425
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    iget-boolean v0, p0, Lnet/simonvt/datepicker/DatePicker;->A:Z

    if-ne v0, p1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->k:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->l:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->m:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1}, Lnet/simonvt/calendarview/CalendarView;->setEnabled(Z)V

    .line 372
    iput-boolean p1, p0, Lnet/simonvt/datepicker/DatePicker;->A:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 343
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 344
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    .line 345
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 349
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setMaxDate(J)V

    .line 350
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->y:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    .line 354
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 307
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 308
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->w:Ljava/util/Calendar;

    .line 309
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 313
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->q:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setMinDate(J)V

    .line 314
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->z:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->x:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->c()V

    .line 318
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->b()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 453
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->j:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    return-void

    .line 453
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
