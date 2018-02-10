.class Lorg/joda/time/a/r;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/m;


# static fields
.field static final a:Lorg/joda/time/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/a/r;

    invoke-direct {v0}, Lorg/joda/time/a/r;-><init>()V

    sput-object v0, Lorg/joda/time/a/r;->a:Lorg/joda/time/a/r;

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
    .line 81
    const-class v0, Lorg/joda/time/o;

    return-object v0
.end method

.method public a(Lorg/joda/time/i;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Lorg/joda/time/o;

    invoke-interface {p1, p2}, Lorg/joda/time/i;->setPeriod(Lorg/joda/time/o;)V

    .line 59
    return-void
.end method

.method public a_(Ljava/lang/Object;)Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lorg/joda/time/o;

    .line 71
    invoke-interface {p1}, Lorg/joda/time/o;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method
