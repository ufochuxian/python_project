.class final Lorg/joda/time/chrono/b;
.super Lorg/joda/time/field/i;
.source "SourceFile"


# static fields
.field private static final b:J = -0x40e8d647222328cbL


# instance fields
.field private final c:Lorg/joda/time/chrono/a;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/a;Lorg/joda/time/e;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/i;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;)V

    .line 43
    iput-object p1, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    .line 44
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->dayOfMonth()Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(JI)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/a;->getDaysInMonthMaxForSet(JI)I

    move-result v0

    return v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getDayOfMonth(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->getDaysInMonthMax()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/a;->getDaysInMonthMax(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;)I
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/n;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/n;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 70
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/n;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/n;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 72
    iget-object v2, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v2, v1, v0}, Lorg/joda/time/chrono/a;->getDaysInYearMonth(II)I

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/a;->getDaysInMonthMax(I)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/b;->getMaximumValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/n;[I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v2

    move v1, v0

    .line 81
    :goto_0
    if-ge v1, v2, :cond_3

    .line 82
    invoke-interface {p1, v1}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 83
    aget v1, p2, v1

    .line 84
    :goto_1
    if-ge v0, v2, :cond_1

    .line 85
    invoke-interface {p1, v0}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 86
    aget v0, p2, v0

    .line 87
    iget-object v2, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/chrono/a;->getDaysInYearMonth(II)I

    move-result v0

    .line 93
    :goto_2
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/a;->getDaysInMonthMax(I)I

    move-result v0

    goto :goto_2

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/chrono/b;->getMaximumValue()I

    move-result v0

    goto :goto_2
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/joda/time/chrono/b;->c:Lorg/joda/time/chrono/a;

    invoke-virtual {v0}, Lorg/joda/time/chrono/a;->months()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method
