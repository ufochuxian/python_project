.class public abstract Lorg/joda/time/base/a;
.super Lorg/joda/time/base/c;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/j;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/joda/time/base/c;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 4

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->centuryOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfWeek()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->era()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getHourOfDay()I
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfDay()I
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millisOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfDay()I
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->minuteOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getMonthOfYear()I
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfDay()I
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->secondOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekOfWeekyear()I
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->yearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->yearOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/a;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public toCalendar(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lorg/joda/time/base/a;->toDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 276
    return-object v0
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/joda/time/base/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 296
    invoke-virtual {p0}, Lorg/joda/time/base/a;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 297
    return-object v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/joda/time/base/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

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
    .line 322
    if-nez p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lorg/joda/time/base/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/b/b;->a(Ljava/util/Locale;)Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
