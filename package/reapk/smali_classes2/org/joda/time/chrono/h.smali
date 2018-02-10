.class final Lorg/joda/time/chrono/h;
.super Lorg/joda/time/field/i;
.source "SourceFile"


# static fields
.field private static final b:J = -0x1607b5620ca7cd60L


# instance fields
.field private final c:Lorg/joda/time/chrono/a;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/i;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;)V

    .line 44
    iput-object p1, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    .line 45
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->weekOfWeekyear()Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(JI)I
    .locals 1

    .prologue
    const/16 v0, 0x34

    .line 112
    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/h;->getMaximumValue(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getWeekOfWeekyear(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x35

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getWeekyear(J)I

    move-result v0

    .line 89
    iget-object v1, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/a;->getWeeksInYear(I)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;)I
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/n;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/n;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/a;->getWeeksInYear(I)I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x35

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/n;[I)I
    .locals 4

    .prologue
    .line 101
    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v1

    .line 102
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 103
    invoke-interface {p1, v0}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 104
    aget v0, p2, v0

    .line 105
    iget-object v1, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/a;->getWeeksInYear(I)I

    move-result v0

    .line 108
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/16 v0, 0x35

    goto :goto_1
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/joda/time/chrono/h;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->weekyears()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 76
    const-wide/32 v0, 0xf731400

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Lorg/joda/time/field/i;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 5

    .prologue
    const-wide/32 v2, 0xf731400

    .line 71
    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lorg/joda/time/field/i;->roundCeiling(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 5

    .prologue
    const-wide/32 v2, 0xf731400

    .line 66
    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lorg/joda/time/field/i;->roundFloor(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method
