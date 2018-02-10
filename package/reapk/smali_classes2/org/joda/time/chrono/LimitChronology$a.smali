.class Lorg/joda/time/chrono/LimitChronology$a;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final b:J = -0x21cbf29565ca6e70L


# instance fields
.field final synthetic a:Lorg/joda/time/chrono/LimitChronology;

.field private final c:Lorg/joda/time/e;

.field private final d:Lorg/joda/time/e;

.field private final e:Lorg/joda/time/e;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/c;Lorg/joda/time/e;Lorg/joda/time/e;Lorg/joda/time/e;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    .line 455
    invoke-virtual {p2}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 456
    iput-object p3, p0, Lorg/joda/time/chrono/LimitChronology$a;->c:Lorg/joda/time/e;

    .line 457
    iput-object p4, p0, Lorg/joda/time/chrono/LimitChronology$a;->d:Lorg/joda/time/e;

    .line 458
    iput-object p5, p0, Lorg/joda/time/chrono/LimitChronology$a;->e:Lorg/joda/time/e;

    .line 459
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 477
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    .line 479
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 480
    return-wide v0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 484
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    .line 486
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 487
    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 5

    .prologue
    .line 491
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v0

    .line 493
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 494
    return-wide v0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 499
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 505
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->c:Lorg/joda/time/e;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public final getLeapDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->e:Lorg/joda/time/e;

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public final getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->d:Lorg/joda/time/e;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    .line 583
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 584
    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 5

    .prologue
    .line 553
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    .line 555
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 556
    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 5

    .prologue
    .line 546
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    .line 548
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 549
    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 5

    .prologue
    .line 567
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfCeiling(J)J

    move-result-wide v0

    .line 569
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 570
    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 5

    .prologue
    .line 574
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfEven(J)J

    move-result-wide v0

    .line 576
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 577
    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 5

    .prologue
    .line 560
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfFloor(J)J

    move-result-wide v0

    .line 562
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 563
    return-wide v0
.end method

.method public set(JI)J
    .locals 5

    .prologue
    .line 510
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 512
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 513
    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$a;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 519
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$a;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 520
    return-wide v0
.end method
