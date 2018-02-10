.class public abstract Lorg/joda/time/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/c;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 67
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/n;Ljava/lang/Object;Lorg/joda/time/a;)[I
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/a/a;->a(Ljava/lang/Object;Lorg/joda/time/a;)J

    move-result-wide v0

    .line 102
    invoke-virtual {p3, p1, v0, v1}, Lorg/joda/time/a;->get(Lorg/joda/time/n;J)[I

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/n;Ljava/lang/Object;Lorg/joda/time/a;Lorg/joda/time/b/b;)[I
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/a/a;->a(Lorg/joda/time/n;Ljava/lang/Object;Lorg/joda/time/a;)[I

    move-result-object v0

    return-object v0
.end method

.method public a_(Ljava/lang/Object;)Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 82
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Lorg/joda/time/a;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
