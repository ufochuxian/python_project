.class public final Lorg/joda/time/DateTime;
.super Lorg/joda/time/base/BaseDateTime;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTime$Property;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47c3879b95a42207L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 307
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 308
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8

    .prologue
    .line 381
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 382
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .prologue
    .line 460
    invoke-direct/range {p0 .. p7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 461
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 489
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/a;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 518
    return-void
.end method

.method public constructor <init>(IIIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    .line 407
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 409
    return-void
.end method

.method public constructor <init>(IIIIIILorg/joda/time/a;)V
    .locals 9

    .prologue
    .line 435
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 437
    return-void
.end method

.method public constructor <init>(IIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 331
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 333
    return-void
.end method

.method public constructor <init>(IIIIILorg/joda/time/a;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 357
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 359
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    .line 194
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 207
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/a;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/a;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 286
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/a;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/a;)V

    .line 183
    return-void
.end method

.method public static now()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/a;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Lorg/joda/time/a;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lorg/joda/time/b/h;->g()Lorg/joda/time/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/b;->f()Lorg/joda/time/b/b;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/b/b;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/b/b;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p1, p0}, Lorg/joda/time/b/b;->e(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1851
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->centuryOfEra()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public dayOfMonth()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1923
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1932
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->dayOfWeek()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1914
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->dayOfYear()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public era()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1842
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->era()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public hourOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1943
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public millisOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1988
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->millisOfDay()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1997
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public minus(J)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/k;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1211
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withDurationAdded(Lorg/joda/time/k;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/o;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1238
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1356
    if-nez p1, :cond_0

    .line 1360
    :goto_0
    return-object p0

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->days()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1360
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusHours(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1388
    if-nez p1, :cond_0

    .line 1392
    :goto_0
    return-object p0

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->hours()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1392
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMillis(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1469
    if-nez p1, :cond_0

    .line 1473
    :goto_0
    return-object p0

    .line 1472
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millis()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1473
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMinutes(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1415
    if-nez p1, :cond_0

    .line 1419
    :goto_0
    return-object p0

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->minutes()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1419
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMonths(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1299
    :goto_0
    return-object p0

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->months()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1299
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusSeconds(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1446
    :goto_0
    return-object p0

    .line 1445
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->seconds()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1446
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusWeeks(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1321
    if-nez p1, :cond_0

    .line 1325
    :goto_0
    return-object p0

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weeks()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1325
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusYears(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1265
    if-nez p1, :cond_0

    .line 1269
    :goto_0
    return-object p0

    .line 1268
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->years()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->subtract(JI)J

    move-result-wide v0

    .line 1269
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minuteOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1952
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->minuteOfDay()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public minuteOfHour()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1961
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1896
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public plus(J)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/k;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withDurationAdded(Lorg/joda/time/k;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/o;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1067
    if-nez p1, :cond_0

    .line 1071
    :goto_0
    return-object p0

    .line 1070
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->days()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1071
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusHours(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1098
    if-nez p1, :cond_0

    .line 1102
    :goto_0
    return-object p0

    .line 1101
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->hours()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1102
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMillis(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1178
    if-nez p1, :cond_0

    .line 1182
    :goto_0
    return-object p0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millis()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1182
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMinutes(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1125
    if-nez p1, :cond_0

    .line 1129
    :goto_0
    return-object p0

    .line 1128
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->minutes()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1129
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMonths(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1010
    :goto_0
    return-object p0

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->months()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1010
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusSeconds(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1152
    if-nez p1, :cond_0

    .line 1156
    :goto_0
    return-object p0

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->seconds()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1156
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusWeeks(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1032
    if-nez p1, :cond_0

    .line 1036
    :goto_0
    return-object p0

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weeks()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 1036
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 980
    :goto_0
    return-object p0

    .line 979
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->years()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 980
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTime$Property;
    .locals 3

    .prologue
    .line 1485
    if-nez p1, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    .line 1489
    invoke-virtual {v0}, Lorg/joda/time/c;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_1
    new-instance v1, Lorg/joda/time/DateTime$Property;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v1
.end method

.method public secondOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1970
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->secondOfDay()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1979
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public toDateMidnight()Lorg/joda/time/DateMidnight;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1505
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .locals 0

    .prologue
    .line 527
    return-object p0
.end method

.method public toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 550
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 551
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 554
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, v0}, Lorg/joda/time/base/BaseDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toDateTime(Lorg/joda/time/a;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 564
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 568
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, v0}, Lorg/joda/time/base/BaseDateTime;->toDateTime(Lorg/joda/time/a;)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toDateTimeISO()Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 540
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0}, Lorg/joda/time/base/BaseDateTime;->toDateTimeISO()Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 1551
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toLocalDateTime()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1540
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .locals 4

    .prologue
    .line 1562
    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toTimeOfDay()Lorg/joda/time/TimeOfDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1529
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/TimeOfDay;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toYearMonthDay()Lorg/joda/time/YearMonthDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1517
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/YearMonthDay;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public weekOfWeekyear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1905
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1887
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->weekyear()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1595
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->centuryOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withChronology(Lorg/joda/time/a;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 595
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    .line 596
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/a;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDate(III)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 709
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 711
    invoke-virtual {v0}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 712
    invoke-virtual {v0}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p2}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 713
    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 714
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1734
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1750
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfWeek()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1718
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->dayOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/DateTime;
    .locals 7

    .prologue
    .line 850
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-object p0

    .line 853
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/a;->add(JJI)J

    move-result-wide v0

    .line 854
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withDurationAdded(Lorg/joda/time/k;I)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 868
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lorg/joda/time/k;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withEarlierOffsetAtOverlap()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeZone;->adjustOffset(JZ)J

    move-result-wide v0

    .line 666
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1579
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->era()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 802
    if-nez p1, :cond_0

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 806
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    if-nez p2, :cond_1

    .line 835
    :goto_0
    return-object p0

    .line 834
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 835
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withFields(Lorg/joda/time/n;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 779
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/a;->set(Lorg/joda/time/n;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withHourOfDay(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1767
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 685
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeZone;->adjustOffset(JZ)J

    move-result-wide v0

    .line 686
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMillis(J)Lorg/joda/time/DateTime;
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/a;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMillisOfDay(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1831
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millisOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1815
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1783
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1681
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/o;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 890
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-object p0

    .line 893
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lorg/joda/time/a;->add(Lorg/joda/time/o;JI)J

    move-result-wide v0

    .line 894
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1799
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTime(IIII)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 738
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 739
    invoke-virtual {v0}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 740
    invoke-virtual {v0}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p2}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 741
    invoke-virtual {v0}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 742
    invoke-virtual {v0}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p4}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 743
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTimeAtStartOfDay()Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1702
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1665
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->weekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1643
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1627
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->yearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1611
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->yearOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime;->withChronology(Lorg/joda/time/a;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneRetainFields(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 5

    .prologue
    .line 639
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 640
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/d;->a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 641
    if-ne v1, v0, :cond_0

    .line 646
    :goto_0
    return-object p0

    .line 645
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v2

    .line 646
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/a;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public year()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1878
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1860
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->yearOfCentury()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1869
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->yearOfEra()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/c;)V

    return-object v0
.end method
