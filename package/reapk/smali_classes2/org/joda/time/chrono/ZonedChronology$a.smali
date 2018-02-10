.class final Lorg/joda/time/chrono/ZonedChronology$a;
.super Lorg/joda/time/field/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/ZonedChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final g:J = -0x3714abfdb535d742L


# instance fields
.field final a:Lorg/joda/time/c;

.field final b:Lorg/joda/time/DateTimeZone;

.field final c:Lorg/joda/time/e;

.field final d:Z

.field final e:Lorg/joda/time/e;

.field final f:Lorg/joda/time/e;


# direct methods
.method constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeZone;Lorg/joda/time/e;Lorg/joda/time/e;Lorg/joda/time/e;)V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p1}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/b;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 388
    invoke-virtual {p1}, Lorg/joda/time/c;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 391
    :cond_0
    iput-object p1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    .line 392
    iput-object p2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    .line 393
    iput-object p3, p0, Lorg/joda/time/chrono/ZonedChronology$a;->c:Lorg/joda/time/e;

    .line 394
    invoke-static {p3}, Lorg/joda/time/chrono/ZonedChronology;->useTimeArithmetic(Lorg/joda/time/e;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    .line 395
    iput-object p4, p0, Lorg/joda/time/chrono/ZonedChronology$a;->e:Lorg/joda/time/e;

    .line 396
    iput-object p5, p0, Lorg/joda/time/chrono/ZonedChronology$a;->f:Lorg/joda/time/e;

    .line 397
    return-void
.end method

.method private a(J)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 590
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 591
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 593
    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    int-to-long v2, v0

    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 594
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    return v0
.end method


# virtual methods
.method public add(JI)J
    .locals 7

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    .line 429
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v2

    .line 430
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 434
    :goto_0
    return-wide v0

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 433
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v1

    .line 434
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public add(JJ)J
    .locals 7

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    .line 441
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v2

    .line 442
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 446
    :goto_0
    return-wide v0

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 445
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v1

    .line 446
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public addWrapField(JI)J
    .locals 7

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    .line 453
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v2

    .line 454
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 458
    :goto_0
    return-wide v0

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 457
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v1

    .line 458
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 405
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 415
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 410
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 7

    .prologue
    .line 483
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v1

    .line 484
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v4, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v4, v5, v0, v1}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 7

    .prologue
    .line 490
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v1

    .line 491
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v4, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v4, v5, v0, v1}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public final getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->c:Lorg/joda/time/e;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 511
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public final getLeapDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->f:Lorg/joda/time/e;

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 570
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;)I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumValue(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;[I)I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(Lorg/joda/time/n;[I)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 553
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/n;)I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/n;[I)I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;[I)I

    move-result v0

    return v0
.end method

.method public final getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->e:Lorg/joda/time/e;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 506
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->isLenient()Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 544
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 7

    .prologue
    .line 531
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    .line 533
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v2

    .line 534
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 538
    :goto_0
    return-wide v0

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 537
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v1

    .line 538
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 7

    .prologue
    .line 519
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$a;->a(J)I

    move-result v0

    .line 521
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v2

    .line 522
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 526
    :goto_0
    return-wide v0

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 525
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v1

    .line 526
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public set(JI)J
    .locals 7

    .prologue
    .line 463
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 464
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v1

    .line 465
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v4

    .line 466
    invoke-virtual {p0, v4, v5}, Lorg/joda/time/chrono/ZonedChronology$a;->get(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 467
    new-instance v0, Lorg/joda/time/IllegalInstantException;

    iget-object v3, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/IllegalInstantException;-><init>(JLjava/lang/String;)V

    .line 468
    new-instance v1, Lorg/joda/time/IllegalFieldValueException;

    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/joda/time/IllegalInstantException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, v0}, Lorg/joda/time/IllegalFieldValueException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 470
    throw v1

    .line 472
    :cond_0
    return-wide v4
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7

    .prologue
    .line 477
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 478
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v1

    .line 479
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$a;->b:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    return-wide v0
.end method
