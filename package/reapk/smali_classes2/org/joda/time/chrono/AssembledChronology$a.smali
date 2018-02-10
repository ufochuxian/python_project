.class public final Lorg/joda/time/chrono/AssembledChronology$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/AssembledChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Lorg/joda/time/c;

.field public B:Lorg/joda/time/c;

.field public C:Lorg/joda/time/c;

.field public D:Lorg/joda/time/c;

.field public E:Lorg/joda/time/c;

.field public F:Lorg/joda/time/c;

.field public G:Lorg/joda/time/c;

.field public H:Lorg/joda/time/c;

.field public I:Lorg/joda/time/c;

.field public a:Lorg/joda/time/e;

.field public b:Lorg/joda/time/e;

.field public c:Lorg/joda/time/e;

.field public d:Lorg/joda/time/e;

.field public e:Lorg/joda/time/e;

.field public f:Lorg/joda/time/e;

.field public g:Lorg/joda/time/e;

.field public h:Lorg/joda/time/e;

.field public i:Lorg/joda/time/e;

.field public j:Lorg/joda/time/e;

.field public k:Lorg/joda/time/e;

.field public l:Lorg/joda/time/e;

.field public m:Lorg/joda/time/c;

.field public n:Lorg/joda/time/c;

.field public o:Lorg/joda/time/c;

.field public p:Lorg/joda/time/c;

.field public q:Lorg/joda/time/c;

.field public r:Lorg/joda/time/c;

.field public s:Lorg/joda/time/c;

.field public t:Lorg/joda/time/c;

.field public u:Lorg/joda/time/c;

.field public v:Lorg/joda/time/c;

.field public w:Lorg/joda/time/c;

.field public x:Lorg/joda/time/c;

.field public y:Lorg/joda/time/c;

.field public z:Lorg/joda/time/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method private static a(Lorg/joda/time/c;)Z
    .locals 1

    .prologue
    .line 562
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/c;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lorg/joda/time/e;)Z
    .locals 1

    .prologue
    .line 558
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/e;->isSupported()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/joda/time/a;)V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p1}, Lorg/joda/time/a;->millis()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    .line 448
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/a;->seconds()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    .line 451
    :cond_1
    invoke-virtual {p1}, Lorg/joda/time/a;->minutes()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    .line 454
    :cond_2
    invoke-virtual {p1}, Lorg/joda/time/a;->hours()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    .line 457
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/a;->halfdays()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    .line 460
    :cond_4
    invoke-virtual {p1}, Lorg/joda/time/a;->days()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    .line 463
    :cond_5
    invoke-virtual {p1}, Lorg/joda/time/a;->weeks()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    .line 466
    :cond_6
    invoke-virtual {p1}, Lorg/joda/time/a;->weekyears()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 467
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    .line 469
    :cond_7
    invoke-virtual {p1}, Lorg/joda/time/a;->months()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    .line 472
    :cond_8
    invoke-virtual {p1}, Lorg/joda/time/a;->years()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 473
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    .line 475
    :cond_9
    invoke-virtual {p1}, Lorg/joda/time/a;->centuries()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 476
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    .line 478
    :cond_a
    invoke-virtual {p1}, Lorg/joda/time/a;->eras()Lorg/joda/time/e;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/e;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 479
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    .line 485
    :cond_b
    invoke-virtual {p1}, Lorg/joda/time/a;->millisOfSecond()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 486
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    .line 488
    :cond_c
    invoke-virtual {p1}, Lorg/joda/time/a;->millisOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 489
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    .line 491
    :cond_d
    invoke-virtual {p1}, Lorg/joda/time/a;->secondOfMinute()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 492
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    .line 494
    :cond_e
    invoke-virtual {p1}, Lorg/joda/time/a;->secondOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 495
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    .line 497
    :cond_f
    invoke-virtual {p1}, Lorg/joda/time/a;->minuteOfHour()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 498
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    .line 500
    :cond_10
    invoke-virtual {p1}, Lorg/joda/time/a;->minuteOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 501
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    .line 503
    :cond_11
    invoke-virtual {p1}, Lorg/joda/time/a;->hourOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 504
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    .line 506
    :cond_12
    invoke-virtual {p1}, Lorg/joda/time/a;->clockhourOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 507
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    .line 509
    :cond_13
    invoke-virtual {p1}, Lorg/joda/time/a;->hourOfHalfday()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 510
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    .line 512
    :cond_14
    invoke-virtual {p1}, Lorg/joda/time/a;->clockhourOfHalfday()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 513
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    .line 515
    :cond_15
    invoke-virtual {p1}, Lorg/joda/time/a;->halfdayOfDay()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 516
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    .line 518
    :cond_16
    invoke-virtual {p1}, Lorg/joda/time/a;->dayOfWeek()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 519
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    .line 521
    :cond_17
    invoke-virtual {p1}, Lorg/joda/time/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 522
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    .line 524
    :cond_18
    invoke-virtual {p1}, Lorg/joda/time/a;->dayOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 525
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    .line 527
    :cond_19
    invoke-virtual {p1}, Lorg/joda/time/a;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 528
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    .line 530
    :cond_1a
    invoke-virtual {p1}, Lorg/joda/time/a;->weekyear()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 531
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    .line 533
    :cond_1b
    invoke-virtual {p1}, Lorg/joda/time/a;->weekyearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 534
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    .line 536
    :cond_1c
    invoke-virtual {p1}, Lorg/joda/time/a;->monthOfYear()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 537
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    .line 539
    :cond_1d
    invoke-virtual {p1}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 540
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    .line 542
    :cond_1e
    invoke-virtual {p1}, Lorg/joda/time/a;->yearOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 543
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    .line 545
    :cond_1f
    invoke-virtual {p1}, Lorg/joda/time/a;->yearOfCentury()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 546
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    .line 548
    :cond_20
    invoke-virtual {p1}, Lorg/joda/time/a;->centuryOfEra()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 549
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    .line 551
    :cond_21
    invoke-virtual {p1}, Lorg/joda/time/a;->era()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$a;->a(Lorg/joda/time/c;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 552
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    .line 555
    :cond_22
    return-void
.end method
