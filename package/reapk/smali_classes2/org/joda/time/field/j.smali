.class public Lorg/joda/time/field/j;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# static fields
.field private static final c:J = 0x4f37bf28eb0078e6L


# instance fields
.field final a:I

.field final b:Lorg/joda/time/e;


# direct methods
.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 55
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/j;->b:Lorg/joda/time/e;

    .line 67
    :goto_0
    iput p3, p0, Lorg/joda/time/field/j;->a:I

    .line 68
    return-void

    .line 63
    :cond_1
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/e;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/j;->b:Lorg/joda/time/e;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/joda/time/field/d;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/joda/time/field/d;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/j;-><init>(Lorg/joda/time/field/d;Lorg/joda/time/DateTimeFieldType;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/field/d;Lorg/joda/time/DateTimeFieldType;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 89
    iget v0, p1, Lorg/joda/time/field/d;->a:I

    iput v0, p0, Lorg/joda/time/field/j;->a:I

    .line 90
    iget-object v0, p1, Lorg/joda/time/field/d;->b:Lorg/joda/time/e;

    iput-object v0, p0, Lorg/joda/time/field/j;->b:Lorg/joda/time/e;

    .line 91
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 196
    if-ltz p1, :cond_0

    .line 197
    iget v0, p0, Lorg/joda/time/field/j;->a:I

    div-int v0, p1, v0

    .line 199
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/joda/time/field/j;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/j;->get(J)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/joda/time/field/j;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/e;->a(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/j;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/joda/time/field/j;->a:I

    return v0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    .line 102
    if-ltz v0, :cond_0

    .line 103
    iget v1, p0, Lorg/joda/time/field/j;->a:I

    rem-int/2addr v0, v1

    .line 105
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/joda/time/field/j;->a:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/joda/time/field/j;->a:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lorg/joda/time/field/j;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/joda/time/field/j;->b:Lorg/joda/time/e;

    return-object v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfEven(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    iget v1, p0, Lorg/joda/time/field/j;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 132
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/j;->a(I)I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/j;->a:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
