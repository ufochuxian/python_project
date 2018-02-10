.class final Lorg/joda/time/a/f;
.super Lorg/joda/time/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/a/h;
.implements Lorg/joda/time/a/l;


# static fields
.field static final a:Lorg/joda/time/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/joda/time/a/f;

    invoke-direct {v0}, Lorg/joda/time/a/f;-><init>()V

    sput-object v0, Lorg/joda/time/a/f;->a:Lorg/joda/time/a/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/joda/time/a/a;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 2

    .prologue
    .line 55
    check-cast p1, Ljava/util/Date;

    .line 56
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

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
    .line 66
    const-class v0, Ljava/util/Date;

    return-object v0
.end method
