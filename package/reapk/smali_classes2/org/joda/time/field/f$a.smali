.class final Lorg/joda/time/field/f$a;
.super Lorg/joda/time/field/BaseDurationField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/field/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2d4174679fa09b6L


# instance fields
.field final synthetic a:Lorg/joda/time/field/f;


# direct methods
.method constructor <init>(Lorg/joda/time/field/f;Lorg/joda/time/DurationFieldType;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    .line 153
    invoke-direct {p0, p2}, Lorg/joda/time/field/BaseDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 154
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/field/f;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/field/f;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/field/f;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/field/f;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p2, p3, p1}, Lorg/joda/time/field/f;->add(JI)J

    move-result-wide v0

    sub-long/2addr v0, p2

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/joda/time/field/f;->add(JJ)J

    move-result-wide v0

    sub-long/2addr v0, p3

    return-wide v0
.end method

.method public getUnitMillis()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    iget-wide v0, v0, Lorg/joda/time/field/f;->b:J

    return-wide v0
.end method

.method public getValue(JJ)I
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    add-long v2, p3, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/joda/time/field/f;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getValueAsLong(JJ)J
    .locals 5

    .prologue
    .line 170
    iget-object v0, p0, Lorg/joda/time/field/f$a;->a:Lorg/joda/time/field/f;

    add-long v2, p3, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/joda/time/field/f;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
