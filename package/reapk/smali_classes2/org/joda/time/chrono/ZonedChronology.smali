.class public final Lorg/joda/time/chrono/ZonedChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/ZonedChronology$a;,
        Lorg/joda/time/chrono/ZonedChronology$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xefa4c340f86ef80L


# direct methods
.method private constructor <init>(Lorg/joda/time/a;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/c;"
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/c;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 221
    :goto_0
    return-object v0

    .line 212
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/c;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/ZonedChronology$a;

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v4

    invoke-virtual {p1}, Lorg/joda/time/c;->getLeapDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/ZonedChronology$a;-><init>(Lorg/joda/time/c;Lorg/joda/time/DateTimeZone;Lorg/joda/time/e;Lorg/joda/time/e;Lorg/joda/time/e;)V

    .line 220
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/e;"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/e;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 205
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/e;

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/ZonedChronology$b;

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/chrono/ZonedChronology$b;-><init>(Lorg/joda/time/e;Lorg/joda/time/DateTimeZone;)V

    .line 204
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance(Lorg/joda/time/a;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;
    .locals 2

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTC chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-nez p1, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTimeZone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v1, Lorg/joda/time/chrono/ZonedChronology;

    invoke-direct {v1, v0, p1}, Lorg/joda/time/chrono/ZonedChronology;-><init>(Lorg/joda/time/a;Lorg/joda/time/DateTimeZone;)V

    return-object v1
.end method

.method private localToUTC(J)J
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffsetFromLocal(J)I

    move-result v1

    .line 140
    int-to-long v2, v1

    sub-long v2, p1, v2

    .line 141
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 142
    new-instance v1, Lorg/joda/time/IllegalInstantException;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/IllegalInstantException;-><init>(JLjava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    return-wide v2
.end method

.method static useTimeArithmetic(Lorg/joda/time/e;)Z
    .locals 4

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/e;->getUnitMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$a;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    .line 155
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    .line 156
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    .line 157
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    .line 158
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    .line 159
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    .line 160
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    .line 162
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    .line 163
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    .line 164
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    .line 165
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    .line 166
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    .line 170
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    .line 171
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    .line 172
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    .line 173
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    .line 174
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    .line 175
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    .line 176
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    .line 177
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    .line 178
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    .line 179
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    .line 180
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    .line 181
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    .line 183
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    .line 184
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    .line 185
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    .line 186
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    .line 187
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    .line 188
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    .line 189
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    .line 190
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    .line 191
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    .line 192
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    .line 193
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/ZonedChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    .line 194
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    instance-of v2, p1, Lorg/joda/time/chrono/ZonedChronology;

    if-nez v2, :cond_2

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    check-cast p1, Lorg/joda/time/chrono/ZonedChronology;

    .line 241
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->getDateTimeMillis(IIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/ZonedChronology;->localToUTC(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/ZonedChronology;->localToUTC(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeMillis(JIIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/ZonedChronology;->localToUTC(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 253
    const v0, 0x4fba5

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZonedChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withUTC()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;
    .locals 2

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getParam()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object p0

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/ZonedChronology;

    invoke-virtual {p0}, Lorg/joda/time/chrono/ZonedChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/chrono/ZonedChronology;-><init>(Lorg/joda/time/a;Lorg/joda/time/DateTimeZone;)V

    move-object p0, v0

    goto :goto_0
.end method
