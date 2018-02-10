.class final Lorg/joda/time/chrono/o;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# static fields
.field private static final a:J = -0x52b9e8405303a9abL


# instance fields
.field private final b:Lorg/joda/time/chrono/a;


# direct methods
.method constructor <init>(Lorg/joda/time/c;Lorg/joda/time/chrono/a;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 42
    iput-object p2, p0, Lorg/joda/time/chrono/o;->b:Lorg/joda/time/chrono/a;

    .line 43
    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/joda/time/chrono/o;->b:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->yearOfEra()Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->addWrapField(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    .line 47
    if-gtz v0, :cond_0

    .line 48
    rsub-int/lit8 v0, v0, 0x1

    .line 50
    :cond_0
    return v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/joda/time/chrono/o;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 87
    iget-object v0, p0, Lorg/joda/time/chrono/o;->b:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 88
    rsub-int/lit8 p3, p3, 0x1

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
