.class public Lorg/joda/time/field/DelegatedDateTimeField;
.super Lorg/joda/time/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x41a4eb7f342b7c67L


# instance fields
.field private final iField:Lorg/joda/time/c;

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method public constructor <init>(Lorg/joda/time/c;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeFieldType;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/joda/time/c;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    .line 67
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 68
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->addWrapField(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public addWrapPartial(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->addWrapPartial(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsShortText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Lorg/joda/time/n;ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsShortText(Lorg/joda/time/n;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Lorg/joda/time/n;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsShortText(Lorg/joda/time/n;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Lorg/joda/time/n;ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsText(Lorg/joda/time/n;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Lorg/joda/time/n;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsText(Lorg/joda/time/n;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getLeapDurationField()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;)I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumValue(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;[I)I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(Lorg/joda/time/n;[I)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/n;)I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/n;[I)I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;[I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public final getWrappedField()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->isLenient()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->isSupported()Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfEven(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundHalfFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->set(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Lorg/joda/time/n;I[II)[I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/joda/time/n;I[ILjava/lang/String;Ljava/util/Locale;)[I
    .locals 6

    .prologue
    .line 188
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->iField:Lorg/joda/time/c;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/DelegatedDateTimeField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
