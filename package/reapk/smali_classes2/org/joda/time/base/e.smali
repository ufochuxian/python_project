.class public abstract Lorg/joda/time/base/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/joda/time/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/n;",
        ">;",
        "Lorg/joda/time/n;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lorg/joda/time/n;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->compareTo(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/n;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 311
    if-ne p0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 315
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "ReadablePartial objects must have matching field types"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 318
    invoke-virtual {p0, v1}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 319
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "ReadablePartial objects must have matching field types"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v2

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v3

    invoke-interface {p1, v1}, Lorg/joda/time/n;->getValue(I)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 325
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :cond_5
    invoke-virtual {p0, v1}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v3

    invoke-interface {p1, v1}, Lorg/joda/time/n;->getValue(I)I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 328
    const/4 v0, -0x1

    goto :goto_0

    .line 323
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 255
    if-ne p0, p1, :cond_1

    .line 256
    const/4 v0, 0x1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    instance-of v1, p1, Lorg/joda/time/n;

    if-eqz v1, :cond_0

    .line 261
    check-cast p1, Lorg/joda/time/n;

    .line 262
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 266
    invoke-virtual {p0, v1}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v3

    invoke-interface {p1, v1}, Lorg/joda/time/n;->getValue(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/base/e;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/n;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/field/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField(I)Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/joda/time/base/e;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/e;->getField(ILorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getField(ILorg/joda/time/a;)Lorg/joda/time/c;
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/e;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/e;->getField(ILorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v0

    new-array v1, v0, [Lorg/joda/time/DateTimeFieldType;

    .line 91
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public getFields()[Lorg/joda/time/c;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v0

    new-array v1, v0, [Lorg/joda/time/c;

    .line 117
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getField(I)Lorg/joda/time/c;

    move-result-object v2

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object v1
.end method

.method public getValues()[I
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 133
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v2

    aput v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 280
    const/16 v1, 0x9d

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 282
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getValue(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 283
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/e;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 286
    return v0
.end method

.method public indexOf(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 175
    :goto_1
    return v0

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/base/e;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 203
    invoke-virtual {p0, v0}, Lorg/joda/time/base/e;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 207
    :goto_1
    return v0

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 188
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    return v0
.end method

.method protected indexOfSupported(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 220
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    return v0
.end method

.method public isAfter(Lorg/joda/time/n;)Z
    .locals 2

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->compareTo(Lorg/joda/time/n;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/joda/time/n;)Z
    .locals 2

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->compareTo(Lorg/joda/time/n;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lorg/joda/time/n;)Z
    .locals 2

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->compareTo(Lorg/joda/time/n;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/joda/time/base/e;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDateTime(Lorg/joda/time/l;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 240
    invoke-static {p1}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    .line 241
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v2

    .line 242
    invoke-virtual {v0, p0, v2, v3}, Lorg/joda/time/a;->set(Lorg/joda/time/n;J)J

    move-result-wide v2

    .line 243
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/a;)V

    return-object v1
.end method

.method public toString(Lorg/joda/time/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/n;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
