.class public abstract Lorg/joda/time/base/BaseDuration;
.super Lorg/joda/time/base/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/k;


# static fields
.field private static final serialVersionUID:J = 0x259193af48eL


# instance fields
.field private volatile iMillis:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/joda/time/base/b;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 63
    return-void
.end method

.method protected constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/joda/time/base/b;-><init>()V

    .line 74
    neg-long v0, p1

    invoke-static {p3, p4, v0, v1}, Lorg/joda/time/field/e;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/joda/time/base/b;-><init>()V

    .line 104
    invoke-static {}, Lorg/joda/time/a/d;->a()Lorg/joda/time/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a/d;->c(Ljava/lang/Object;)Lorg/joda/time/a/g;

    move-result-object v0

    .line 105
    invoke-interface {v0, p1}, Lorg/joda/time/a/g;->a(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 106
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/l;Lorg/joda/time/l;)V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/joda/time/base/b;-><init>()V

    .line 86
    if-ne p1, p2, :cond_0

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    .line 90
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v2

    .line 91
    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/e;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    goto :goto_0
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    return-wide v0
.end method

.method protected setMillis(J)V
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lorg/joda/time/base/BaseDuration;->iMillis:J

    .line 126
    return-void
.end method

.method public toIntervalFrom(Lorg/joda/time/l;)Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, p1, p0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/l;Lorg/joda/time/k;)V

    return-object v0
.end method

.method public toIntervalTo(Lorg/joda/time/l;)Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/k;Lorg/joda/time/l;)V

    return-object v0
.end method

.method public toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/BaseDuration;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public toPeriod(Lorg/joda/time/PeriodType;Lorg/joda/time/a;)Lorg/joda/time/Period;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/BaseDuration;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1, p2}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/a;)V

    return-object v0
.end method

.method public toPeriod(Lorg/joda/time/a;)Lorg/joda/time/Period;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/BaseDuration;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/a;)V

    return-object v0
.end method

.method public toPeriodFrom(Lorg/joda/time/l;)Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p1, p0}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/l;Lorg/joda/time/k;)V

    return-object v0
.end method

.method public toPeriodFrom(Lorg/joda/time/l;Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p1, p0, p2}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/l;Lorg/joda/time/k;Lorg/joda/time/PeriodType;)V

    return-object v0
.end method

.method public toPeriodTo(Lorg/joda/time/l;)Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/k;Lorg/joda/time/l;)V

    return-object v0
.end method

.method public toPeriodTo(Lorg/joda/time/l;Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/k;Lorg/joda/time/l;Lorg/joda/time/PeriodType;)V

    return-object v0
.end method
