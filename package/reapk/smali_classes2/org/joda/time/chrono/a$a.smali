.class Lorg/joda/time/chrono/a$a;
.super Lorg/joda/time/field/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final b:J = 0x812436e7a068fe6L


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 760
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/chrono/a;->access$000()Lorg/joda/time/e;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/chrono/a;->access$100()Lorg/joda/time/e;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/h;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/e;Lorg/joda/time/e;)V

    .line 761
    return-void
.end method


# virtual methods
.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    invoke-static {p2}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/m;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 772
    invoke-static {p1}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/m;->f()I

    move-result v0

    return v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 768
    invoke-static {p4}, Lorg/joda/time/chrono/m;->a(Ljava/util/Locale;)Lorg/joda/time/chrono/m;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/joda/time/chrono/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/a$a;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
