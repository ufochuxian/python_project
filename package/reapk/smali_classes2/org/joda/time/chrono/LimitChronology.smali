.class public final Lorg/joda/time/chrono/LimitChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/LimitChronology$a;,
        Lorg/joda/time/chrono/LimitChronology$b;,
        Lorg/joda/time/chrono/LimitChronology$c;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a7464792af0f66aL


# instance fields
.field final iLowerLimit:Lorg/joda/time/DateTime;

.field final iUpperLimit:Lorg/joda/time/DateTime;

.field private transient iWithUTC:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method private constructor <init>(Lorg/joda/time/a;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 101
    iput-object p2, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    .line 102
    iput-object p3, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    .line 103
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
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/c;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 280
    :goto_0
    return-object v0

    .line 271
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/c;

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$a;

    invoke-virtual {p1}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v4

    invoke-virtual {p1}, Lorg/joda/time/c;->getLeapDurationField()Lorg/joda/time/e;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/LimitChronology$a;-><init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/c;Lorg/joda/time/e;Lorg/joda/time/e;Lorg/joda/time/e;)V

    .line 279
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;
    .locals 1
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
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/e;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/e;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$b;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/chrono/LimitChronology$b;-><init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/e;)V

    .line 263
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance(Lorg/joda/time/a;Lorg/joda/time/j;Lorg/joda/time/j;)Lorg/joda/time/chrono/LimitChronology;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    .line 72
    :goto_0
    if-nez p2, :cond_2

    .line 74
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v0, v1}, Lorg/joda/time/j;->isBefore(Lorg/joda/time/l;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lower limit must be come before than the upper limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/joda/time/j;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Lorg/joda/time/j;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_3
    new-instance v2, Lorg/joda/time/chrono/LimitChronology;

    check-cast v0, Lorg/joda/time/DateTime;

    check-cast v1, Lorg/joda/time/DateTime;

    invoke-direct {v2, p0, v0, v1}, Lorg/joda/time/chrono/LimitChronology;-><init>(Lorg/joda/time/a;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    return-object v2
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$a;)V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->l:Lorg/joda/time/e;

    .line 214
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->k:Lorg/joda/time/e;

    .line 215
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->j:Lorg/joda/time/e;

    .line 216
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->i:Lorg/joda/time/e;

    .line 217
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->h:Lorg/joda/time/e;

    .line 218
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->g:Lorg/joda/time/e;

    .line 219
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->f:Lorg/joda/time/e;

    .line 221
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->e:Lorg/joda/time/e;

    .line 222
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->d:Lorg/joda/time/e;

    .line 223
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->c:Lorg/joda/time/e;

    .line 224
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->b:Lorg/joda/time/e;

    .line 225
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/e;Ljava/util/HashMap;)Lorg/joda/time/e;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->a:Lorg/joda/time/e;

    .line 229
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->E:Lorg/joda/time/c;

    .line 230
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->F:Lorg/joda/time/c;

    .line 231
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->G:Lorg/joda/time/c;

    .line 232
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->H:Lorg/joda/time/c;

    .line 233
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->I:Lorg/joda/time/c;

    .line 234
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->x:Lorg/joda/time/c;

    .line 235
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->y:Lorg/joda/time/c;

    .line 236
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->z:Lorg/joda/time/c;

    .line 237
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->D:Lorg/joda/time/c;

    .line 238
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->A:Lorg/joda/time/c;

    .line 239
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->B:Lorg/joda/time/c;

    .line 240
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->C:Lorg/joda/time/c;

    .line 242
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->m:Lorg/joda/time/c;

    .line 243
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->n:Lorg/joda/time/c;

    .line 244
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->o:Lorg/joda/time/c;

    .line 245
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->p:Lorg/joda/time/c;

    .line 246
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->q:Lorg/joda/time/c;

    .line 247
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->r:Lorg/joda/time/c;

    .line 248
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->s:Lorg/joda/time/c;

    .line 249
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->u:Lorg/joda/time/c;

    .line 250
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->t:Lorg/joda/time/c;

    .line 251
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->v:Lorg/joda/time/c;

    .line 252
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/chrono/LimitChronology;->convertField(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$a;->w:Lorg/joda/time/c;

    .line 253
    return-void
.end method

.method checkLimits(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 286
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lorg/joda/time/chrono/LimitChronology$c;-><init>(Lorg/joda/time/chrono/LimitChronology;Ljava/lang/String;Z)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 289
    new-instance v0, Lorg/joda/time/chrono/LimitChronology$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lorg/joda/time/chrono/LimitChronology$c;-><init>(Lorg/joda/time/chrono/LimitChronology;Ljava/lang/String;Z)V

    throw v0

    .line 291
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p0, p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    instance-of v2, p1, Lorg/joda/time/chrono/LimitChronology;

    if-nez v2, :cond_2

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_2
    check-cast p1, Lorg/joda/time/chrono/LimitChronology;

    .line 310
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 178
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 179
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
    .line 187
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

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

    .line 190
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 191
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
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/a;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    .line 202
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 203
    return-wide v0
.end method

.method public getLowerLimit()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getUpperLimit()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 323
    const v2, 0x12ea67c5

    .line 324
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 325
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 326
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 327
    return v0

    :cond_1
    move v0, v1

    .line 324
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NoLimit"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NoLimit"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getLowerLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getUpperLimit()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public withUTC()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/LimitChronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;
    .locals 3

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 170
    :goto_0
    return-object p0

    .line 145
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    if-eqz v0, :cond_2

    .line 146
    iget-object p0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iLowerLimit:Lorg/joda/time/DateTime;

    .line 150
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lorg/joda/time/MutableDateTime;->setZoneRetainFields(Lorg/joda/time/DateTimeZone;)V

    .line 153
    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    .line 156
    :cond_3
    iget-object v1, p0, Lorg/joda/time/chrono/LimitChronology;->iUpperLimit:Lorg/joda/time/DateTime;

    .line 157
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p1}, Lorg/joda/time/MutableDateTime;->setZoneRetainFields(Lorg/joda/time/DateTimeZone;)V

    .line 160
    invoke-virtual {v1}, Lorg/joda/time/MutableDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    .line 163
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology;->getBase()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/a;Lorg/joda/time/j;Lorg/joda/time/j;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    .line 166
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v1, :cond_5

    .line 167
    iput-object v0, p0, Lorg/joda/time/chrono/LimitChronology;->iWithUTC:Lorg/joda/time/chrono/LimitChronology;

    :cond_5
    move-object p0, v0

    .line 170
    goto :goto_0
.end method
