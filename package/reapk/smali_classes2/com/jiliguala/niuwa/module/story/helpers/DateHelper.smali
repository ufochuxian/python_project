.class public Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARSER:Lorg/joda/time/b/b;

.field private static final PRINTER:Lorg/joda/time/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lorg/joda/time/b/h;->g()Lorg/joda/time/b/b;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;->PARSER:Lorg/joda/time/b/b;

    .line 19
    invoke-static {}, Lorg/joda/time/b/h;->p()Lorg/joda/time/b/b;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;->PRINTER:Lorg/joda/time/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatISO8601Date(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 1
    .param p0, "dt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 26
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;->PRINTER:Lorg/joda/time/b/b;

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimezoneOffset()I
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getWholeHoursBetween(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)J
    .locals 2
    .param p0, "dt1"    # Lorg/joda/time/DateTime;
    .param p1, "dt2"    # Lorg/joda/time/DateTime;

    .prologue
    .line 37
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(Lorg/joda/time/l;Lorg/joda/time/l;)V

    invoke-virtual {v0}, Lorg/joda/time/Duration;->getStandardHours()J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseISO8601Date(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param

    .prologue
    .line 22
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;->PARSER:Lorg/joda/time/b/b;

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->e(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method
