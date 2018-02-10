.class final Lorg/joda/time/chrono/l;
.super Lorg/joda/time/field/b;
.source "SourceFile"


# static fields
.field private static final a:J = 0x3adb02c66a0dae08L


# instance fields
.field private final b:Lorg/joda/time/chrono/a;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/a;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/b;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 48
    iput-object p1, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    .line 49
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->era()Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p2}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/m;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/m;->a()I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->get(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/chrono/a;->setYear(JI)J

    move-result-wide v0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->get(J)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/chrono/a;->setYear(JI)J

    move-result-wide v0

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public roundHalfCeiling(J)J
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/l;->get(J)I

    move-result v0

    .line 84
    if-eq v0, p3, :cond_0

    .line 85
    iget-object v0, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getYear(J)I

    move-result v0

    .line 86
    iget-object v1, p0, Lorg/joda/time/chrono/l;->b:Lorg/joda/time/chrono/a;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/a;->setYear(JI)J

    move-result-wide p1

    .line 88
    :cond_0
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 93
    invoke-static {p4}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/joda/time/chrono/m;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/l;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
