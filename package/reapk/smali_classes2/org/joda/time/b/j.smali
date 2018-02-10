.class public Lorg/joda/time/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "org.joda.time.format.messages"

.field private static final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/joda/time/b/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/b/j;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lorg/joda/time/b/k;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lorg/joda/time/b/j;->a(Ljava/util/Locale;)Lorg/joda/time/b/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Locale;)Lorg/joda/time/b/k;
    .locals 5

    .prologue
    .line 95
    sget-object v0, Lorg/joda/time/b/j;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/b/k;

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v0, "org.joda.time.format.messages"

    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 98
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PeriodFormat.space"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PeriodFormat.comma"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "PeriodFormat.commandand"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "PeriodFormat.commaspaceand"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    new-instance v2, Lorg/joda/time/b/l;

    invoke-direct {v2}, Lorg/joda/time/b/l;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/b/l;->j()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.year"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.years"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->k()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.month"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.months"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->l()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.week"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.weeks"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->m()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.day"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.days"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->n()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.hour"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.hours"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->o()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.minute"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.minutes"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/b/l;->p()Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.second"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.seconds"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v2

    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/b/l;->s()Lorg/joda/time/b/l;

    move-result-object v1

    const-string v2, "PeriodFormat.millisecond"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PeriodFormat.milliseconds"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->a()Lorg/joda/time/b/k;

    move-result-object v0

    .line 126
    sget-object v1, Lorg/joda/time/b/j;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-object v0
.end method

.method public static b()Lorg/joda/time/b/k;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/b/j;->a(Ljava/util/Locale;)Lorg/joda/time/b/k;

    move-result-object v0

    return-object v0
.end method
