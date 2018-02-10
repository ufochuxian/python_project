.class Lorg/joda/time/a/o;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/h;
.implements Lorg/joda/time/a/l;


# static fields
.field static final a:Lorg/joda/time/a/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/a/o;

    invoke-direct {v0}, Lorg/joda/time/a/o;-><init>()V

    sput-object v0, Lorg/joda/time/a/o;->a:Lorg/joda/time/a/o;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/joda/time/a/a;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 2

    .prologue
    .line 100
    check-cast p1, Lorg/joda/time/l;

    invoke-interface {p1}, Lorg/joda/time/l;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    const-class v0, Lorg/joda/time/l;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;
    .locals 2

    .prologue
    .line 58
    check-cast p1, Lorg/joda/time/l;

    invoke-interface {p1}, Lorg/joda/time/l;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 63
    if-eq v1, p2, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    check-cast p1, Lorg/joda/time/l;

    invoke-interface {p1}, Lorg/joda/time/l;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p2

    .line 87
    :cond_0
    return-object p2
.end method
