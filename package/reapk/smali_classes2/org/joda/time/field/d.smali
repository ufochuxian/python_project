.class public Lorg/joda/time/field/d;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# static fields
.field private static final c:J = 0x7371290d64b04a35L


# instance fields
.field final a:I

.field final b:Lorg/joda/time/e;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 59
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/d;->b:Lorg/joda/time/e;

    .line 71
    :goto_0
    iput p3, p0, Lorg/joda/time/field/d;->a:I

    .line 73
    invoke-virtual {p1}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    .line 74
    if-ltz v0, :cond_2

    div-int/2addr v0, p3

    .line 76
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v1

    .line 77
    if-ltz v1, :cond_3

    div-int/2addr v1, p3

    .line 79
    :goto_2
    iput v0, p0, Lorg/joda/time/field/d;->d:I

    .line 80
    iput v1, p0, Lorg/joda/time/field/d;->e:I

    .line 81
    return-void

    .line 67
    :cond_1
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/e;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/d;->b:Lorg/joda/time/e;

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    div-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public constructor <init>(Lorg/joda/time/field/j;Lorg/joda/time/DateTimeFieldType;)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/joda/time/field/j;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 92
    iget v1, p1, Lorg/joda/time/field/j;->a:I

    iput v1, p0, Lorg/joda/time/field/d;->a:I

    .line 93
    iget-object v0, p1, Lorg/joda/time/field/j;->b:Lorg/joda/time/e;

    iput-object v0, p0, Lorg/joda/time/field/d;->b:Lorg/joda/time/e;

    .line 95
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    .line 97
    if-ltz v0, :cond_0

    div-int/2addr v0, v1

    .line 99
    :goto_0
    invoke-virtual {v2}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v2

    .line 100
    if-ltz v2, :cond_1

    div-int v1, v2, v1

    .line 102
    :goto_1
    iput v0, p0, Lorg/joda/time/field/d;->d:I

    .line 103
    iput v1, p0, Lorg/joda/time/field/d;->e:I

    .line 104
    return-void

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    div-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 223
    if-ltz p1, :cond_0

    .line 224
    iget v0, p0, Lorg/joda/time/field/d;->a:I

    rem-int v0, p1, v0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/joda/time/field/d;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/joda/time/field/d;->a:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/d;->a:I

    mul-int/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/d;->a:I

    int-to-long v2, v1

    mul-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/d;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/d;->d:I

    iget v2, p0, Lorg/joda/time/field/d;->e:I

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/e;->a(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/d;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lorg/joda/time/field/d;->a:I

    return v0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    .line 114
    if-ltz v0, :cond_0

    .line 115
    iget v1, p0, Lorg/joda/time/field/d;->a:I

    div-int/2addr v0, v1

    .line 117
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/joda/time/field/d;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/d;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/d;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/joda/time/field/d;->b:Lorg/joda/time/e;

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/joda/time/field/d;->e:I

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/joda/time/field/d;->d:I

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/d;->get(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/d;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/d;->get(J)I

    move-result v1

    iget v2, p0, Lorg/joda/time/field/d;->a:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 174
    iget v0, p0, Lorg/joda/time/field/d;->d:I

    iget v1, p0, Lorg/joda/time/field/d;->e:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 175
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/d;->a(I)I

    move-result v0

    .line 176
    invoke-virtual {p0}, Lorg/joda/time/field/d;->a()Lorg/joda/time/c;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/d;->a:I

    mul-int/2addr v2, p3

    add-int/2addr v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
