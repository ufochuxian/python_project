.class Lorg/joda/time/a/k;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/g;
.implements Lorg/joda/time/a/h;
.implements Lorg/joda/time/a/i;
.implements Lorg/joda/time/a/l;
.implements Lorg/joda/time/a/m;


# static fields
.field static final a:Lorg/joda/time/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/joda/time/a/k;

    invoke-direct {v0}, Lorg/joda/time/a/k;-><init>()V

    sput-object v0, Lorg/joda/time/a/k;->a:Lorg/joda/time/a/k;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/joda/time/a/a;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

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
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lorg/joda/time/h;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 2

    .prologue
    .line 83
    invoke-interface {p1, p3}, Lorg/joda/time/h;->setChronology(Lorg/joda/time/a;)V

    .line 84
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    .line 85
    invoke-interface {p1, v0, v1, v0, v1}, Lorg/joda/time/h;->setInterval(JJ)V

    .line 86
    return-void
.end method

.method public a(Lorg/joda/time/i;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Period;

    invoke-interface {p1, v0}, Lorg/joda/time/i;->setPeriod(Lorg/joda/time/o;)V

    .line 70
    return-void
.end method
