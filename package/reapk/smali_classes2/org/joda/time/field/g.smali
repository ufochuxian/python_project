.class public Lorg/joda/time/field/g;
.super Lorg/joda/time/field/c;
.source "SourceFile"


# static fields
.field private static final a:J = 0x2ba8177560f527a6L


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lorg/joda/time/c;I)V
    .locals 6

    .prologue
    .line 47
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/field/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;III)V

    .line 48
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 6

    .prologue
    .line 59
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/field/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;III)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;III)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/c;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 76
    if-nez p3, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput p3, p0, Lorg/joda/time/field/g;->b:I

    .line 82
    invoke-virtual {p1}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    add-int/2addr v0, p3

    if-ge p4, v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lorg/joda/time/field/g;->c:I

    .line 87
    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    add-int/2addr v0, p3

    if-le p5, v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lorg/joda/time/field/g;->d:I

    .line 92
    :goto_1
    return-void

    .line 85
    :cond_1
    iput p4, p0, Lorg/joda/time/field/g;->c:I

    goto :goto_0

    .line 90
    :cond_2
    iput p5, p0, Lorg/joda/time/field/g;->d:I

    goto :goto_1
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/c;->add(JI)J

    move-result-wide v0

    .line 114
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/g;->get(J)I

    move-result v2

    iget v3, p0, Lorg/joda/time/field/g;->c:I

    iget v4, p0, Lorg/joda/time/field/g;->d:I

    invoke-static {p0, v2, v3, v4}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 115
    return-wide v0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/c;->add(JJ)J

    move-result-wide v0

    .line 128
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/g;->get(J)I

    move-result v2

    iget v3, p0, Lorg/joda/time/field/g;->c:I

    iget v4, p0, Lorg/joda/time/field/g;->d:I

    invoke-static {p0, v2, v3, v4}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 129
    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/g;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/g;->c:I

    iget v2, p0, Lorg/joda/time/field/g;->d:I

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/e;->a(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/g;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/joda/time/field/g;->b:I

    return v0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lorg/joda/time/field/c;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/g;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLeapAmount(J)I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->getLeapDurationField()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/joda/time/field/g;->d:I

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/joda/time/field/g;->c:I

    return v0
.end method

.method public isLeap(J)Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfEven(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/joda/time/field/g;->a()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 153
    iget v0, p0, Lorg/joda/time/field/g;->c:I

    iget v1, p0, Lorg/joda/time/field/g;->d:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/e;->a(Lorg/joda/time/c;III)V

    .line 154
    iget v0, p0, Lorg/joda/time/field/g;->b:I

    sub-int v0, p3, v0

    invoke-super {p0, p1, p2, v0}, Lorg/joda/time/field/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
