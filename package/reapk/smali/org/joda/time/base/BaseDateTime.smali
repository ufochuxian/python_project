.class public abstract Lorg/joda/time/base/BaseDateTime;
.super Lorg/joda/time/base/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/j;


# static fields
.field private static final serialVersionUID:J = -0x61eb0a2d15dL


# instance fields
.field private volatile iChronology:Lorg/joda/time/a;

.field private volatile iMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 62
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .prologue
    .line 195
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 197
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    .line 223
    invoke-static/range {p8 .. p8}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 225
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/a;)V
    .locals 10

    .prologue
    .line 252
    invoke-direct {p0}, Lorg/joda/time/base/a;-><init>()V

    .line 253
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    .line 254
    iget-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lorg/joda/time/a;->getDateTimeMillis(IIIIIII)J

    move-result-wide v2

    .line 256
    iget-object v4, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    invoke-virtual {p0, v2, v3, v4}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/a;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 257
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 98
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 111
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/joda/time/base/a;-><init>()V

    .line 125
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    .line 126
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 4

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/joda/time/base/a;-><init>()V

    .line 147
    invoke-static {}, Lorg/joda/time/a/d;->a()Lorg/joda/time/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a/d;->a(Ljava/lang/Object;)Lorg/joda/time/a/h;

    move-result-object v0

    .line 148
    invoke-interface {v0, p1, p2}, Lorg/joda/time/a/h;->a(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    .line 149
    iput-object v1, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    .line 150
    invoke-interface {v0, p1, v1}, Lorg/joda/time/a/h;->a(Ljava/lang/Object;Lorg/joda/time/a;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/joda/time/base/a;-><init>()V

    .line 169
    invoke-static {}, Lorg/joda/time/a/d;->a()Lorg/joda/time/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a/d;->a(Ljava/lang/Object;)Lorg/joda/time/a/h;

    move-result-object v0

    .line 170
    invoke-interface {v0, p1, p2}, Lorg/joda/time/a/h;->b(Ljava/lang/Object;Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    .line 171
    invoke-interface {v0, p1, p2}, Lorg/joda/time/a/h;->a(Ljava/lang/Object;Lorg/joda/time/a;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/a;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method protected checkInstant(JLorg/joda/time/a;)J
    .locals 1

    .prologue
    .line 284
    return-wide p1
.end method

.method public getChronology()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    return-wide v0
.end method

.method protected setChronology(Lorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BaseDateTime;->checkChronology(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    .line 330
    return-void
.end method

.method protected setMillis(J)V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lorg/joda/time/base/BaseDateTime;->iChronology:Lorg/joda/time/a;

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/base/BaseDateTime;->checkInstant(JLorg/joda/time/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseDateTime;->iMillis:J

    .line 318
    return-void
.end method
