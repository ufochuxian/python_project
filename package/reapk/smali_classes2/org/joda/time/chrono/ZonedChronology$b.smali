.class Lorg/joda/time/chrono/ZonedChronology$b;
.super Lorg/joda/time/field/BaseDurationField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/ZonedChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bc4afd2782615eL


# instance fields
.field final a:Lorg/joda/time/e;

.field final b:Z

.field final c:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/e;Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p1}, Lorg/joda/time/e;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 282
    invoke-virtual {p1}, Lorg/joda/time/e;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_0
    iput-object p1, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    .line 286
    invoke-static {p1}, Lorg/joda/time/chrono/ZonedChronology;->useTimeArithmetic(Lorg/joda/time/e;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    .line 287
    iput-object p2, p0, Lorg/joda/time/chrono/ZonedChronology$b;->c:Lorg/joda/time/DateTimeZone;

    .line 288
    return-void
.end method

.method private a(J)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 341
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 342
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 344
    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    int-to-long v2, v0

    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    return v0
.end method

.method private b(J)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 351
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffsetFromLocal(J)I

    move-result v0

    .line 352
    int-to-long v2, v0

    sub-long v2, p1, v2

    .line 354
    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    int-to-long v2, v0

    xor-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return v0
.end method

.method private c(J)J
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v0

    .line 316
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v2

    .line 317
    iget-boolean v1, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/joda/time/chrono/ZonedChronology$b;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v0

    .line 322
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lorg/joda/time/e;->add(JJ)J

    move-result-wide v2

    .line 323
    iget-boolean v1, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/joda/time/chrono/ZonedChronology$b;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 7

    .prologue
    .line 327
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v1

    .line 328
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v4, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v4, v5, v0, v1}, Lorg/joda/time/e;->getDifference(JJ)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 7

    .prologue
    .line 334
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v1

    .line 335
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v4, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v4, v5, v0, v1}, Lorg/joda/time/e;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$b;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMillis(IJ)J
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-direct {p0, p2, p3}, Lorg/joda/time/chrono/ZonedChronology$b;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/e;->getMillis(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$b;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/joda/time/e;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnitMillis()J
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-virtual {v0}, Lorg/joda/time/e;->getUnitMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(JJ)I
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$b;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/joda/time/e;->getValue(JJ)I

    move-result v0

    return v0
.end method

.method public getValueAsLong(JJ)J
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$b;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/joda/time/e;->getValueAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-virtual {v0}, Lorg/joda/time/e;->isPrecise()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->a:Lorg/joda/time/e;

    invoke-virtual {v0}, Lorg/joda/time/e;->isPrecise()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$b;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
