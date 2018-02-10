.class public final Lorg/joda/time/MonthDay;
.super Lorg/joda/time/base/BasePartial;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/MonthDay$Property;
    }
.end annotation


# static fields
.field public static final DAY_OF_MONTH:I = 0x1

.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final MONTH_OF_YEAR:I = 0x0

.field private static final PARSER:Lorg/joda/time/b/b;

.field private static final serialVersionUID:J = 0x2900b54d463b2031L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    .line 84
    new-instance v0, Lorg/joda/time/b/c;

    invoke-direct {v0}, Lorg/joda/time/b/c;-><init>()V

    invoke-static {}, Lorg/joda/time/b/h;->b()Lorg/joda/time/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/b/b;->d()Lorg/joda/time/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    const-string v1, "--MM-dd"

    invoke-static {v1}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/b/b;->d()Lorg/joda/time/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/c;->a()Lorg/joda/time/b/b;

    move-result-object v0

    sput-object v0, Lorg/joda/time/MonthDay;->PARSER:Lorg/joda/time/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    .line 222
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/MonthDay;-><init>(IILorg/joda/time/a;)V

    .line 335
    return-void
.end method

.method public constructor <init>(IILorg/joda/time/a;)V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/a;)V

    .line 353
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    .line 266
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/a;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/b/h;->b()Lorg/joda/time/b/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/a;Lorg/joda/time/b/b;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 2

    .prologue
    .line 319
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/b/h;->b()Lorg/joda/time/b/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/a;Lorg/joda/time/b/b;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 236
    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/a;)V

    .line 237
    return-void
.end method

.method constructor <init>(Lorg/joda/time/MonthDay;Lorg/joda/time/a;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/a;)V

    .line 373
    return-void
.end method

.method constructor <init>(Lorg/joda/time/MonthDay;[I)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    .line 363
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/a;)V

    .line 252
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The calendar must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object v0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object v0
.end method

.method public static now()Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0}, Lorg/joda/time/MonthDay;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/MonthDay;
    .locals 2

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/a;)Lorg/joda/time/MonthDay;
    .locals 2

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/a;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MonthDay;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lorg/joda/time/MonthDay;->PARSER:Lorg/joda/time/b/b;

    invoke-static {p0, v0}, Lorg/joda/time/MonthDay;->parse(Ljava/lang/String;Lorg/joda/time/b/b;)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/b/b;)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p1, p0}, Lorg/joda/time/b/b;->b(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object v0

    .line 161
    new-instance v1, Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v2

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;Lorg/joda/time/a;)V

    move-object p0, v0

    .line 383
    :cond_0
    return-object p0
.end method


# virtual methods
.method public dayOfMonth()Lorg/joda/time/MonthDay$Property;
    .locals 2

    .prologue
    .line 769
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/a;)Lorg/joda/time/c;
    .locals 3

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 414
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/time/o;)Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 630
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay;->withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/MonthDay;
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/e;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(I)Lorg/joda/time/MonthDay;
    .locals 2

    .prologue
    .line 652
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/e;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/MonthDay$Property;
    .locals 2

    .prologue
    .line 760
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/o;)Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay;->withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 612
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(I)Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 592
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MonthDay$Property;
    .locals 2

    .prologue
    .line 750
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x2

    return v0
.end method

.method public toLocalDate(I)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 683
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getMonthOfYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-static {v0, v2, v2}, Lorg/joda/time/b/h;->a(Ljava/util/Collection;ZZ)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    if-nez p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/n;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 808
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/b/b;->a(Ljava/util/Locale;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/n;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withChronologyRetainFields(Lorg/joda/time/a;)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 456
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 463
    :goto_0
    return-object p0

    .line 461
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;Lorg/joda/time/a;)V

    .line 462
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/joda/time/a;->validate(Lorg/joda/time/n;[I)V

    move-object p0, v0

    .line 463
    goto :goto_0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 737
    new-instance v1, Lorg/joda/time/MonthDay;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 487
    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 492
    :goto_0
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v1

    .line 491
    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v1

    .line 492
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 515
    if-nez p2, :cond_0

    .line 520
    :goto_0
    return-object p0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v1

    .line 519
    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/c;->add(Lorg/joda/time/n;I[II)[I

    move-result-object v1

    .line 520
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/MonthDay;
    .locals 3

    .prologue
    .line 718
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 720
    new-instance v1, Lorg/joda/time/MonthDay;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method

.method public withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/MonthDay;
    .locals 5

    .prologue
    .line 540
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-object p0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v1

    .line 544
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/joda/time/o;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 545
    invoke-interface {p1, v0}, Lorg/joda/time/o;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 546
    invoke-virtual {p0, v2}, Lorg/joda/time/MonthDay;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    .line 547
    if-ltz v2, :cond_2

    .line 548
    invoke-virtual {p0, v2}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/c;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/joda/time/o;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/e;->b(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v1, v4}, Lorg/joda/time/c;->add(Lorg/joda/time/n;I[II)[I

    move-result-object v1

    .line 544
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_3
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    move-object p0, v0

    goto :goto_0
.end method
