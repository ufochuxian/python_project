.class Lorg/joda/time/chrono/p;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# static fields
.field static final a:Lorg/joda/time/c;

.field private static final b:J = 0x61aa4edab52f7f95L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/joda/time/chrono/p;

    invoke-direct {v0}, Lorg/joda/time/chrono/p;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/p;->a:Lorg/joda/time/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lorg/joda/time/chrono/GregorianChronology;->getInstanceUTC()Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 48
    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/joda/time/chrono/p;->a:Lorg/joda/time/c;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->addWrapField(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    .line 52
    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 81
    invoke-virtual {p0}, Lorg/joda/time/chrono/p;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 82
    neg-int p3, p3

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
