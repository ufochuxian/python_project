.class Lorg/joda/time/chrono/LimitChronology$b;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6fb4d99c50a123ccL


# instance fields
.field final synthetic a:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/e;)V
    .locals 1

    .prologue
    .line 391
    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    .line 392
    invoke-virtual {p2}, Lorg/joda/time/e;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/e;Lorg/joda/time/DurationFieldType;)V

    .line 393
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 416
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    .line 418
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 419
    return-wide v0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 423
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->add(JJ)J

    move-result-wide v0

    .line 425
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 426
    return-wide v0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 437
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/e;->getMillis(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(JJ)I
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getValue(JJ)I

    move-result v0

    return v0
.end method

.method public getValueAsLong(JJ)J
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$b;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$b;->getWrappedField()Lorg/joda/time/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getValueAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method
