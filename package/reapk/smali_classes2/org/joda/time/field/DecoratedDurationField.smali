.class public Lorg/joda/time/field/DecoratedDurationField;
.super Lorg/joda/time/field/BaseDurationField;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6f4cb35dbe61c66fL


# instance fields
.field private final iField:Lorg/joda/time/e;


# direct methods
.method public constructor <init>(Lorg/joda/time/e;Lorg/joda/time/DurationFieldType;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p2}, Lorg/joda/time/field/BaseDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/e;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    .line 60
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/e;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/e;->getMillis(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnitMillis()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0}, Lorg/joda/time/e;->getUnitMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(JJ)J
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/e;->getValueAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrappedField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    return-object v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDurationField;->iField:Lorg/joda/time/e;

    invoke-virtual {v0}, Lorg/joda/time/e;->isPrecise()Z

    move-result v0

    return v0
.end method
