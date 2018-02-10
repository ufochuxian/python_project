.class Lorg/joda/time/a/n;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/g;
.implements Lorg/joda/time/a/m;


# static fields
.field static final a:Lorg/joda/time/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/a/n;

    invoke-direct {v0}, Lorg/joda/time/a/n;-><init>()V

    sput-object v0, Lorg/joda/time/a/n;->a:Lorg/joda/time/a/n;

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
    .line 56
    check-cast p1, Lorg/joda/time/k;

    invoke-interface {p1}, Lorg/joda/time/k;->getMillis()J

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
    .line 88
    const-class v0, Lorg/joda/time/k;

    return-object v0
.end method

.method public a(Lorg/joda/time/i;Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 4

    .prologue
    .line 72
    check-cast p2, Lorg/joda/time/k;

    .line 73
    invoke-static {p3}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    .line 74
    invoke-interface {p2}, Lorg/joda/time/k;->getMillis()J

    move-result-wide v2

    .line 75
    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/a;->get(Lorg/joda/time/o;J)[I

    move-result-object v1

    .line 76
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 77
    aget v2, v1, v0

    invoke-interface {p1, v0, v2}, Lorg/joda/time/i;->setValue(II)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method
