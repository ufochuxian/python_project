.class abstract Lorg/joda/time/chrono/a;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/a$b;,
        Lorg/joda/time/chrono/a$a;
    }
.end annotation


# static fields
.field private static final CACHE_MASK:I = 0x3ff

.field private static final CACHE_SIZE:I = 0x400

.field private static final cClockhourOfDayField:Lorg/joda/time/c;

.field private static final cClockhourOfHalfdayField:Lorg/joda/time/c;

.field private static final cDaysField:Lorg/joda/time/e;

.field private static final cHalfdayOfDayField:Lorg/joda/time/c;

.field private static final cHalfdaysField:Lorg/joda/time/e;

.field private static final cHourOfDayField:Lorg/joda/time/c;

.field private static final cHourOfHalfdayField:Lorg/joda/time/c;

.field private static final cHoursField:Lorg/joda/time/e;

.field private static final cMillisField:Lorg/joda/time/e;

.field private static final cMillisOfDayField:Lorg/joda/time/c;

.field private static final cMillisOfSecondField:Lorg/joda/time/c;

.field private static final cMinuteOfDayField:Lorg/joda/time/c;

.field private static final cMinuteOfHourField:Lorg/joda/time/c;

.field private static final cMinutesField:Lorg/joda/time/e;

.field private static final cSecondOfDayField:Lorg/joda/time/c;

.field private static final cSecondOfMinuteField:Lorg/joda/time/c;

.field private static final cSecondsField:Lorg/joda/time/e;

.field private static final cWeeksField:Lorg/joda/time/e;

.field private static final serialVersionUID:J = 0x72f3ed8da0b42f1fL


# instance fields
.field private final iMinDaysInFirstWeek:I

.field private final transient iYearInfoCache:[Lorg/joda/time/chrono/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/e;

    sput-object v0, Lorg/joda/time/chrono/a;->cMillisField:Lorg/joda/time/e;

    .line 77
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cSecondsField:Lorg/joda/time/e;

    .line 79
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cMinutesField:Lorg/joda/time/e;

    .line 81
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cHoursField:Lorg/joda/time/e;

    .line 83
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cHalfdaysField:Lorg/joda/time/e;

    .line 85
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    .line 87
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/a;->cWeeksField:Lorg/joda/time/e;

    .line 90
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cMillisField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cSecondsField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cMillisOfSecondField:Lorg/joda/time/c;

    .line 93
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cMillisField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cMillisOfDayField:Lorg/joda/time/c;

    .line 96
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cSecondsField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cMinutesField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cSecondOfMinuteField:Lorg/joda/time/c;

    .line 99
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cSecondsField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cSecondOfDayField:Lorg/joda/time/c;

    .line 102
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cMinutesField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cHoursField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cMinuteOfHourField:Lorg/joda/time/c;

    .line 105
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cMinutesField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cMinuteOfDayField:Lorg/joda/time/c;

    .line 108
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cHoursField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cHourOfDayField:Lorg/joda/time/c;

    .line 111
    new-instance v0, Lorg/joda/time/field/h;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/a;->cHoursField:Lorg/joda/time/e;

    sget-object v3, Lorg/joda/time/chrono/a;->cHalfdaysField:Lorg/joda/time/e;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cHourOfHalfdayField:Lorg/joda/time/c;

    .line 114
    new-instance v0, Lorg/joda/time/field/k;

    sget-object v1, Lorg/joda/time/chrono/a;->cHourOfDayField:Lorg/joda/time/c;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cClockhourOfDayField:Lorg/joda/time/c;

    .line 117
    new-instance v0, Lorg/joda/time/field/k;

    sget-object v1, Lorg/joda/time/chrono/a;->cHourOfHalfdayField:Lorg/joda/time/c;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/a;->cClockhourOfHalfdayField:Lorg/joda/time/c;

    .line 120
    new-instance v0, Lorg/joda/time/chrono/a$a;

    invoke-direct {v0}, Lorg/joda/time/chrono/a$a;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/a;->cHalfdayOfDayField:Lorg/joda/time/c;

    .line 121
    return-void
.end method

.method constructor <init>(Lorg/joda/time/a;Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 126
    const/16 v0, 0x400

    new-array v0, v0, [Lorg/joda/time/chrono/a$b;

    iput-object v0, p0, Lorg/joda/time/chrono/a;->iYearInfoCache:[Lorg/joda/time/chrono/a$b;

    .line 133
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v0, 0x7

    if-le p3, v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid min days in first week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput p3, p0, Lorg/joda/time/chrono/a;->iMinDaysInFirstWeek:I

    .line 139
    return-void
.end method

.method static synthetic access$000()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/joda/time/chrono/a;->cHalfdaysField:Lorg/joda/time/e;

    return-object v0
.end method

.method static synthetic access$100()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    return-object v0
.end method

.method private getYearInfo(I)Lorg/joda/time/chrono/a$b;
    .locals 4

    .prologue
    .line 747
    iget-object v0, p0, Lorg/joda/time/chrono/a;->iYearInfoCache:[Lorg/joda/time/chrono/a$b;

    and-int/lit16 v1, p1, 0x3ff

    aget-object v0, v0, v1

    .line 748
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/joda/time/chrono/a$b;->a:I

    if-eq v1, p1, :cond_1

    .line 749
    :cond_0
    new-instance v0, Lorg/joda/time/chrono/a$b;

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->calculateFirstDayOfYearMillis(I)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/joda/time/chrono/a$b;-><init>(IJ)V

    .line 750
    iget-object v1, p0, Lorg/joda/time/chrono/a;->iYearInfoCache:[Lorg/joda/time/chrono/a$b;

    and-int/lit16 v2, p1, 0x3ff

    aput-object v0, v1, v2

    .line 752
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$a;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 250
    sget-object v0, Lorg/joda/time/chrono/a;->cMillisField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    .line 251
    sget-object v0, Lorg/joda/time/chrono/a;->cSecondsField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    .line 252
    sget-object v0, Lorg/joda/time/chrono/a;->cMinutesField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    .line 253
    sget-object v0, Lorg/joda/time/chrono/a;->cHoursField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    .line 254
    sget-object v0, Lorg/joda/time/chrono/a;->cHalfdaysField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    .line 255
    sget-object v0, Lorg/joda/time/chrono/a;->cDaysField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    .line 256
    sget-object v0, Lorg/joda/time/chrono/a;->cWeeksField:Lorg/joda/time/e;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    .line 258
    sget-object v0, Lorg/joda/time/chrono/a;->cMillisOfSecondField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    .line 259
    sget-object v0, Lorg/joda/time/chrono/a;->cMillisOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    .line 260
    sget-object v0, Lorg/joda/time/chrono/a;->cSecondOfMinuteField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    .line 261
    sget-object v0, Lorg/joda/time/chrono/a;->cSecondOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    .line 262
    sget-object v0, Lorg/joda/time/chrono/a;->cMinuteOfHourField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    .line 263
    sget-object v0, Lorg/joda/time/chrono/a;->cMinuteOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    .line 264
    sget-object v0, Lorg/joda/time/chrono/a;->cHourOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    .line 265
    sget-object v0, Lorg/joda/time/chrono/a;->cHourOfHalfdayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    .line 266
    sget-object v0, Lorg/joda/time/chrono/a;->cClockhourOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    .line 267
    sget-object v0, Lorg/joda/time/chrono/a;->cClockhourOfHalfdayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    .line 268
    sget-object v0, Lorg/joda/time/chrono/a;->cHalfdayOfDayField:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    .line 273
    new-instance v0, Lorg/joda/time/chrono/j;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/j;-><init>(Lorg/joda/time/chrono/a;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    .line 274
    new-instance v0, Lorg/joda/time/chrono/o;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    invoke-direct {v0, v1, p0}, Lorg/joda/time/chrono/o;-><init>(Lorg/joda/time/c;Lorg/joda/time/chrono/a;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    .line 277
    new-instance v0, Lorg/joda/time/field/g;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/g;-><init>(Lorg/joda/time/c;I)V

    .line 279
    new-instance v1, Lorg/joda/time/field/d;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    .line 282
    new-instance v1, Lorg/joda/time/field/j;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    check-cast v0, Lorg/joda/time/field/d;

    invoke-direct {v1, v0}, Lorg/joda/time/field/j;-><init>(Lorg/joda/time/field/d;)V

    .line 284
    new-instance v0, Lorg/joda/time/field/g;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    .line 287
    new-instance v0, Lorg/joda/time/chrono/l;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/l;-><init>(Lorg/joda/time/chrono/a;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    .line 288
    new-instance v0, Lorg/joda/time/chrono/k;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/k;-><init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    .line 289
    new-instance v0, Lorg/joda/time/chrono/b;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/b;-><init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    .line 290
    new-instance v0, Lorg/joda/time/chrono/c;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/c;-><init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    .line 291
    new-instance v0, Lorg/joda/time/chrono/n;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/n;-><init>(Lorg/joda/time/chrono/a;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    .line 292
    new-instance v0, Lorg/joda/time/chrono/i;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/i;-><init>(Lorg/joda/time/chrono/a;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    .line 293
    new-instance v0, Lorg/joda/time/chrono/h;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/h;-><init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    .line 295
    new-instance v0, Lorg/joda/time/field/j;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lorg/joda/time/field/j;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V

    .line 297
    new-instance v1, Lorg/joda/time/field/g;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/field/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    .line 303
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    .line 304
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    .line 305
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    .line 306
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    .line 307
    return-void
.end method

.method abstract calculateFirstDayOfYearMillis(I)J
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p0, p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 201
    check-cast p1, Lorg/joda/time/chrono/a;

    .line 202
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/a;->getMinimumDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method abstract getApproxMillisAtEpochDividedByTwo()J
.end method

.method abstract getAverageMillisPerMonth()J
.end method

.method abstract getAverageMillisPerYear()J
.end method

.method abstract getAverageMillisPerYearDividedByTwo()J
.end method

.method getDateMidnightMillis(III)J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 612
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMinYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMaxYear()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 613
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->getMaxMonth(I)I

    move-result v1

    invoke-static {v0, p2, v3, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 614
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getDaysInYearMonth(II)I

    move-result v1

    invoke-static {v0, p3, v3, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 615
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/a;->getYearMonthDayMillis(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getBase()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 159
    :goto_0
    return-wide v0

    .line 157
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x5265bff

    invoke-static {v0, p4, v1, v2}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/a;->getDateMidnightMillis(III)J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getBase()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 168
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 177
    :goto_0
    return-wide v0

    .line 172
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, p4, v2, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 173
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {v0, p5, v2, v3}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 174
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {v0, p6, v2, v3}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 175
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, p7, v2, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/DateTimeFieldType;III)V

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/a;->getDateMidnightMillis(III)J

    move-result-wide v0

    const v2, 0x36ee80

    mul-int/2addr v2, p4

    int-to-long v2, v2

    add-long/2addr v0, v2

    const v2, 0xea60

    mul-int/2addr v2, p5

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit16 v2, p6, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p7

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method getDayOfMonth(J)I
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    .line 458
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getMonthOfYear(JI)I

    move-result v1

    .line 459
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/chrono/a;->getDayOfMonth(JII)I

    move-result v0

    return v0
.end method

.method getDayOfMonth(JI)I
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/a;->getMonthOfYear(JI)I

    move-result v0

    .line 468
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/chrono/a;->getDayOfMonth(JII)I

    move-result v0

    return v0
.end method

.method getDayOfMonth(JII)I
    .locals 5

    .prologue
    .line 477
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v0

    .line 478
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/a;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 479
    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getDayOfWeek(J)I
    .locals 7

    .prologue
    const-wide/32 v2, 0x5265c00

    const-wide/16 v4, 0x7

    .line 543
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 544
    div-long v0, p1, v2

    .line 553
    :cond_0
    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    .line 546
    :cond_1
    const-wide/32 v0, 0x5265bff

    sub-long v0, p1, v0

    div-long/2addr v0, v2

    .line 548
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 549
    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method getDayOfYear(J)I
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getDayOfYear(JI)I

    move-result v0

    return v0
.end method

.method getDayOfYear(JI)I
    .locals 5

    .prologue
    .line 494
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v0

    .line 495
    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getDaysInMonthMax()I
    .locals 1

    .prologue
    .line 574
    const/16 v0, 0x1f

    return v0
.end method

.method abstract getDaysInMonthMax(I)I
.end method

.method getDaysInMonthMax(J)I
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    .line 585
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getMonthOfYear(JI)I

    move-result v1

    .line 586
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/a;->getDaysInYearMonth(II)I

    move-result v0

    return v0
.end method

.method getDaysInMonthMaxForSet(JI)I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getDaysInMonthMax(J)I

    move-result v0

    return v0
.end method

.method getDaysInYear(I)I
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method getDaysInYearMax()I
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x16e

    return v0
.end method

.method abstract getDaysInYearMonth(II)I
.end method

.method getFirstWeekOfYearMillis(I)J
    .locals 6

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 348
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v0

    .line 349
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/a;->getDayOfWeek(J)I

    move-result v2

    .line 351
    iget v3, p0, Lorg/joda/time/chrono/a;->iMinDaysInFirstWeek:I

    rsub-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_0

    .line 353
    rsub-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 357
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method getMaxMonth()I
    .locals 1

    .prologue
    .line 700
    const/16 v0, 0xc

    return v0
.end method

.method getMaxMonth(I)I
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMaxMonth()I

    move-result v0

    return v0
.end method

.method abstract getMaxYear()I
.end method

.method getMillisOfDay(J)I
    .locals 7

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 560
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 561
    rem-long v0, p1, v4

    long-to-int v0, v0

    .line 563
    :goto_0
    return v0

    :cond_0
    const v0, 0x5265bff

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method abstract getMinYear()I
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/joda/time/chrono/a;->iMinDaysInFirstWeek:I

    return v0
.end method

.method getMonthOfYear(J)I
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getMonthOfYear(JI)I

    move-result v0

    return v0
.end method

.method abstract getMonthOfYear(JI)I
.end method

.method abstract getTotalMillisByYearMonth(II)J
.end method

.method getWeekOfWeekyear(J)I
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getWeekOfWeekyear(JI)I

    move-result v0

    return v0
.end method

.method getWeekOfWeekyear(JI)I
    .locals 5

    .prologue
    .line 525
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/a;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    .line 526
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 527
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/a;->getWeeksInYear(I)I

    move-result v0

    .line 533
    :goto_0
    return v0

    .line 529
    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/a;->getFirstWeekOfYearMillis(I)J

    move-result-wide v2

    .line 530
    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 531
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    sub-long v0, p1, v0

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getWeeksInYear(I)I
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    .line 337
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/a;->getFirstWeekOfYearMillis(I)J

    move-result-wide v2

    .line 338
    sub-long v0, v2, v0

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getWeekyear(J)I
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    .line 503
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a;->getWeekOfWeekyear(JI)I

    move-result v1

    .line 504
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 505
    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/16 v2, 0x33

    if-le v1, v2, :cond_0

    .line 507
    const-wide/32 v0, 0x48190800

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    goto :goto_0
.end method

.method getYear(J)I
    .locals 11

    .prologue
    const-wide v2, 0x757b12c00L

    const-wide/16 v8, 0x0

    .line 408
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getAverageMillisPerYearDividedByTwo()J

    move-result-wide v4

    .line 409
    const/4 v0, 0x1

    shr-long v0, p1, v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getApproxMillisAtEpochDividedByTwo()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 410
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 411
    sub-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 413
    :cond_0
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 415
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v4

    .line 416
    sub-long v6, p1, v4

    .line 418
    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 419
    add-int/lit8 v0, v0, -0x1

    .line 437
    :cond_1
    :goto_0
    return v0

    .line 420
    :cond_2
    cmp-long v1, v6, v2

    if-ltz v1, :cond_1

    .line 423
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/a;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    const-wide v2, 0x75cd78800L

    .line 429
    :cond_3
    add-long/2addr v2, v4

    .line 431
    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method abstract getYearDifference(JJ)J
.end method

.method getYearMillis(I)J
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lorg/joda/time/chrono/a;->getYearInfo(I)Lorg/joda/time/chrono/a$b;

    move-result-object v0

    iget-wide v0, v0, Lorg/joda/time/chrono/a$b;->b:J

    return-wide v0
.end method

.method getYearMonthDayMillis(III)J
    .locals 6

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v0

    .line 395
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 396
    add-int/lit8 v2, p3, -0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getYearMonthMillis(II)J
    .locals 4

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/a;->getYearMillis(I)J

    move-result-wide v0

    .line 381
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/a;->getTotalMillisByYearMonth(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 382
    return-wide v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getBase()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMinimumDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method abstract isLeapYear(I)Z
.end method

.method abstract setYear(JI)J
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 229
    if-ltz v2, :cond_0

    .line 230
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMinimumDaysInFirstWeek()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 239
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lorg/joda/time/chrono/a;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
