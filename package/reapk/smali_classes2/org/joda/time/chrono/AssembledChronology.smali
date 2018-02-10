.class public abstract Lorg/joda/time/chrono/AssembledChronology;
.super Lorg/joda/time/chrono/BaseChronology;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/AssembledChronology$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5d6050265d484707L


# instance fields
.field private final iBase:Lorg/joda/time/a;

.field private transient iBaseFlags:I

.field private transient iCenturies:Lorg/joda/time/e;

.field private transient iCenturyOfEra:Lorg/joda/time/c;

.field private transient iClockhourOfDay:Lorg/joda/time/c;

.field private transient iClockhourOfHalfday:Lorg/joda/time/c;

.field private transient iDayOfMonth:Lorg/joda/time/c;

.field private transient iDayOfWeek:Lorg/joda/time/c;

.field private transient iDayOfYear:Lorg/joda/time/c;

.field private transient iDays:Lorg/joda/time/e;

.field private transient iEra:Lorg/joda/time/c;

.field private transient iEras:Lorg/joda/time/e;

.field private transient iHalfdayOfDay:Lorg/joda/time/c;

.field private transient iHalfdays:Lorg/joda/time/e;

.field private transient iHourOfDay:Lorg/joda/time/c;

.field private transient iHourOfHalfday:Lorg/joda/time/c;

.field private transient iHours:Lorg/joda/time/e;

.field private transient iMillis:Lorg/joda/time/e;

.field private transient iMillisOfDay:Lorg/joda/time/c;

.field private transient iMillisOfSecond:Lorg/joda/time/c;

.field private transient iMinuteOfDay:Lorg/joda/time/c;

.field private transient iMinuteOfHour:Lorg/joda/time/c;

.field private transient iMinutes:Lorg/joda/time/e;

.field private transient iMonthOfYear:Lorg/joda/time/c;

.field private transient iMonths:Lorg/joda/time/e;

.field private final iParam:Ljava/lang/Object;

.field private transient iSecondOfDay:Lorg/joda/time/c;

.field private transient iSecondOfMinute:Lorg/joda/time/c;

.field private transient iSeconds:Lorg/joda/time/e;

.field private transient iWeekOfWeekyear:Lorg/joda/time/c;

.field private transient iWeeks:Lorg/joda/time/e;

.field private transient iWeekyear:Lorg/joda/time/c;

.field private transient iWeekyearOfCentury:Lorg/joda/time/c;

.field private transient iWeekyears:Lorg/joda/time/e;

.field private transient iYear:Lorg/joda/time/c;

.field private transient iYearOfCentury:Lorg/joda/time/c;

.field private transient iYearOfEra:Lorg/joda/time/c;

.field private transient iYears:Lorg/joda/time/e;


# direct methods
.method protected constructor <init>(Lorg/joda/time/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/joda/time/chrono/BaseChronology;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    .line 101
    iput-object p2, p0, Lorg/joda/time/chrono/AssembledChronology;->iParam:Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lorg/joda/time/chrono/AssembledChronology;->setFields()V

    .line 103
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 390
    invoke-direct {p0}, Lorg/joda/time/chrono/AssembledChronology;->setFields()V

    .line 391
    return-void
.end method

.method private setFields()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    new-instance v2, Lorg/joda/time/chrono/AssembledChronology$a;

    invoke-direct {v2}, Lorg/joda/time/chrono/AssembledChronology$a;-><init>()V

    .line 320
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/a;)V

    .line 323
    :cond_0
    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/AssembledChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$a;)V

    .line 327
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillis:Lorg/joda/time/e;

    .line 328
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSeconds:Lorg/joda/time/e;

    .line 329
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    if-eqz v0, :cond_3

    :goto_2
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinutes:Lorg/joda/time/e;

    .line 330
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    if-eqz v0, :cond_4

    :goto_3
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHours:Lorg/joda/time/e;

    .line 331
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    if-eqz v0, :cond_5

    :goto_4
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdays:Lorg/joda/time/e;

    .line 332
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    if-eqz v0, :cond_6

    :goto_5
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDays:Lorg/joda/time/e;

    .line 333
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    if-eqz v0, :cond_7

    :goto_6
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeeks:Lorg/joda/time/e;

    .line 334
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    if-eqz v0, :cond_8

    :goto_7
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyears:Lorg/joda/time/e;

    .line 335
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    if-eqz v0, :cond_9

    :goto_8
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonths:Lorg/joda/time/e;

    .line 336
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    if-eqz v0, :cond_a

    :goto_9
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYears:Lorg/joda/time/e;

    .line 337
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    if-eqz v0, :cond_b

    :goto_a
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturies:Lorg/joda/time/e;

    .line 338
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    if-eqz v0, :cond_c

    :goto_b
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEras:Lorg/joda/time/e;

    .line 343
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    if-eqz v0, :cond_d

    :goto_c
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/c;

    .line 344
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    if-eqz v0, :cond_e

    :goto_d
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/c;

    .line 345
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    if-eqz v0, :cond_f

    :goto_e
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/c;

    .line 346
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    if-eqz v0, :cond_10

    :goto_f
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfDay:Lorg/joda/time/c;

    .line 347
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    if-eqz v0, :cond_11

    :goto_10
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/c;

    .line 348
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    if-eqz v0, :cond_12

    :goto_11
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfDay:Lorg/joda/time/c;

    .line 349
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    if-eqz v0, :cond_13

    :goto_12
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/c;

    .line 350
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    if-eqz v0, :cond_14

    :goto_13
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfDay:Lorg/joda/time/c;

    .line 351
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    if-eqz v0, :cond_15

    :goto_14
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfHalfday:Lorg/joda/time/c;

    .line 352
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    if-eqz v0, :cond_16

    :goto_15
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfHalfday:Lorg/joda/time/c;

    .line 353
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    if-eqz v0, :cond_17

    :goto_16
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdayOfDay:Lorg/joda/time/c;

    .line 354
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    if-eqz v0, :cond_18

    :goto_17
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfWeek:Lorg/joda/time/c;

    .line 355
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    if-eqz v0, :cond_19

    :goto_18
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/c;

    .line 356
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    if-eqz v0, :cond_1a

    :goto_19
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfYear:Lorg/joda/time/c;

    .line 357
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    if-eqz v0, :cond_1b

    :goto_1a
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekOfWeekyear:Lorg/joda/time/c;

    .line 358
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    if-eqz v0, :cond_1c

    :goto_1b
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyear:Lorg/joda/time/c;

    .line 359
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    if-eqz v0, :cond_1d

    :goto_1c
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyearOfCentury:Lorg/joda/time/c;

    .line 360
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    if-eqz v0, :cond_1e

    :goto_1d
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/c;

    .line 361
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    if-eqz v0, :cond_1f

    :goto_1e
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/c;

    .line 362
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    if-eqz v0, :cond_20

    :goto_1f
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfEra:Lorg/joda/time/c;

    .line 363
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    if-eqz v0, :cond_21

    :goto_20
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfCentury:Lorg/joda/time/c;

    .line 364
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    if-eqz v0, :cond_22

    :goto_21
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturyOfEra:Lorg/joda/time/c;

    .line 365
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    if-eqz v0, :cond_23

    :goto_22
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEra:Lorg/joda/time/c;

    .line 369
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-nez v0, :cond_24

    .line 385
    :goto_23
    iput v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    .line 386
    return-void

    .line 327
    :cond_1
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millis()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :cond_2
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->seconds()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_1

    .line 329
    :cond_3
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minutes()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_2

    .line 330
    :cond_4
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hours()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_3

    .line 331
    :cond_5
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->halfdays()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_4

    .line 332
    :cond_6
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->days()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_5

    .line 333
    :cond_7
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weeks()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_6

    .line 334
    :cond_8
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyears()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_7

    .line 335
    :cond_9
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->months()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_8

    .line 336
    :cond_a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->years()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_9

    .line 337
    :cond_b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->centuries()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_a

    .line 338
    :cond_c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->eras()Lorg/joda/time/e;

    move-result-object v0

    goto/16 :goto_b

    .line 343
    :cond_d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_c

    .line 344
    :cond_e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millisOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_d

    .line 345
    :cond_f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_e

    .line 346
    :cond_10
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->secondOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_f

    .line 347
    :cond_11
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_10

    .line 348
    :cond_12
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minuteOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_11

    .line 349
    :cond_13
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hourOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_12

    .line 350
    :cond_14
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->clockhourOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_13

    .line 351
    :cond_15
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hourOfHalfday()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_14

    .line 352
    :cond_16
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->clockhourOfHalfday()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_15

    .line 353
    :cond_17
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->halfdayOfDay()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_16

    .line 354
    :cond_18
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfWeek()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_17

    .line 355
    :cond_19
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_18

    .line 356
    :cond_1a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfYear()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_19

    .line 357
    :cond_1b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1a

    .line 358
    :cond_1c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyear()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1b

    .line 359
    :cond_1d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1c

    .line 360
    :cond_1e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->monthOfYear()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1d

    .line 361
    :cond_1f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->year()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1e

    .line 362
    :cond_20
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->yearOfEra()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_1f

    .line 363
    :cond_21
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->yearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_20

    .line 364
    :cond_22
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->centuryOfEra()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_21

    .line 365
    :cond_23
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->era()Lorg/joda/time/c;

    move-result-object v0

    goto/16 :goto_22

    .line 372
    :cond_24
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_24
    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->millisOfDay()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    :goto_25
    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_25

    const/4 v1, 0x4

    :cond_25
    or-int/2addr v1, v0

    goto/16 :goto_23

    :cond_26
    move v0, v1

    goto :goto_24

    :cond_27
    move v2, v1

    goto :goto_25
.end method


# virtual methods
.method protected abstract assemble(Lorg/joda/time/chrono/AssembledChronology$a;)V
.end method

.method public final centuries()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturies:Lorg/joda/time/e;

    return-object v0
.end method

.method public final centuryOfEra()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturyOfEra:Lorg/joda/time/c;

    return-object v0
.end method

.method public final clockhourOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final clockhourOfHalfday()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfHalfday:Lorg/joda/time/c;

    return-object v0
.end method

.method public final dayOfMonth()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/c;

    return-object v0
.end method

.method public final dayOfWeek()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfWeek:Lorg/joda/time/c;

    return-object v0
.end method

.method public final dayOfYear()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfYear:Lorg/joda/time/c;

    return-object v0
.end method

.method public final days()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDays:Lorg/joda/time/e;

    return-object v0
.end method

.method public final era()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEra:Lorg/joda/time/c;

    return-object v0
.end method

.method public final eras()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEras:Lorg/joda/time/e;

    return-object v0
.end method

.method protected final getBase()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    return-object v0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    and-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

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
    .line 131
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 133
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDateTimeMillis(JIIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 148
    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    .line 151
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final halfdayOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdayOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final halfdays()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdays:Lorg/joda/time/e;

    return-object v0
.end method

.method public final hourOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final hourOfHalfday()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfHalfday:Lorg/joda/time/c;

    return-object v0
.end method

.method public final hours()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHours:Lorg/joda/time/e;

    return-object v0
.end method

.method public final millis()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillis:Lorg/joda/time/e;

    return-object v0
.end method

.method public final millisOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final millisOfSecond()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/c;

    return-object v0
.end method

.method public final minuteOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final minuteOfHour()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/c;

    return-object v0
.end method

.method public final minutes()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinutes:Lorg/joda/time/e;

    return-object v0
.end method

.method public final monthOfYear()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/c;

    return-object v0
.end method

.method public final months()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonths:Lorg/joda/time/e;

    return-object v0
.end method

.method public final secondOfDay()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfDay:Lorg/joda/time/c;

    return-object v0
.end method

.method public final secondOfMinute()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/c;

    return-object v0
.end method

.method public final seconds()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSeconds:Lorg/joda/time/e;

    return-object v0
.end method

.method public final weekOfWeekyear()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekOfWeekyear:Lorg/joda/time/c;

    return-object v0
.end method

.method public final weeks()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeeks:Lorg/joda/time/e;

    return-object v0
.end method

.method public final weekyear()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyear:Lorg/joda/time/c;

    return-object v0
.end method

.method public final weekyearOfCentury()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyearOfCentury:Lorg/joda/time/c;

    return-object v0
.end method

.method public final weekyears()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyears:Lorg/joda/time/e;

    return-object v0
.end method

.method public final year()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/c;

    return-object v0
.end method

.method public final yearOfCentury()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfCentury:Lorg/joda/time/c;

    return-object v0
.end method

.method public final yearOfEra()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfEra:Lorg/joda/time/c;

    return-object v0
.end method

.method public final years()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYears:Lorg/joda/time/e;

    return-object v0
.end method
