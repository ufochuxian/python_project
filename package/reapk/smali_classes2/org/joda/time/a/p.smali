.class Lorg/joda/time/a/p;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/g;
.implements Lorg/joda/time/a/i;
.implements Lorg/joda/time/a/m;


# static fields
.field static final a:Lorg/joda/time/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/a/p;

    invoke-direct {v0}, Lorg/joda/time/a/p;-><init>()V

    sput-object v0, Lorg/joda/time/a/p;->a:Lorg/joda/time/a/p;

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
.method public a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 52
    check-cast p1, Lorg/joda/time/m;

    invoke-interface {p1}, Lorg/joda/time/m;->toDurationMillis()J

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
    .line 113
    const-class v0, Lorg/joda/time/m;

    return-object v0
.end method

.method public a(Lorg/joda/time/h;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 99
    check-cast p2, Lorg/joda/time/m;

    .line 100
    invoke-interface {p1, p2}, Lorg/joda/time/h;->setInterval(Lorg/joda/time/m;)V

    .line 101
    if-eqz p3, :cond_0

    .line 102
    invoke-interface {p1, p3}, Lorg/joda/time/h;->setChronology(Lorg/joda/time/a;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {p2}, Lorg/joda/time/m;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/h;->setChronology(Lorg/joda/time/a;)V

    goto :goto_0
.end method

.method public a(Lorg/joda/time/i;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 6

    .prologue
    .line 64
    check-cast p2, Lorg/joda/time/m;

    .line 65
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 66
    :goto_0
    invoke-interface {p2}, Lorg/joda/time/m;->getStartMillis()J

    move-result-wide v2

    .line 67
    invoke-interface {p2}, Lorg/joda/time/m;->getEndMillis()J

    move-result-wide v4

    move-object v1, p1

    .line 68
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/a;->get(Lorg/joda/time/o;JJ)[I

    move-result-object v1

    .line 69
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 70
    aget v2, v1, v0

    invoke-interface {p1, v0, v2}, Lorg/joda/time/i;->setValue(II)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_0
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/m;)Lorg/joda/time/a;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Object;Lorg/joda/time/a;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
