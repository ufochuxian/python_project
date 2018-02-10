.class public abstract Lorg/joda/time/base/BaseInterval;
.super Lorg/joda/time/base/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/m;


# static fields
.field private static final serialVersionUID:J = 0x80072c1bd3fbddeL


# instance fields
.field private volatile iChronology:Lorg/joda/time/a;

.field private volatile iEndMillis:J

.field private volatile iStartMillis:J


# direct methods
.method protected constructor <init>(JJLorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 72
    invoke-static {p5}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 74
    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 75
    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 76
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/a;)V
    .locals 4

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 190
    invoke-static {}, Lorg/joda/time/a/d;->a()Lorg/joda/time/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a/d;->e(Ljava/lang/Object;)Lorg/joda/time/a/i;

    move-result-object v1

    .line 191
    invoke-interface {v1, p1, p2}, Lorg/joda/time/a/i;->c(Ljava/lang/Object;Lorg/joda/time/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    check-cast p1, Lorg/joda/time/m;

    .line 193
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 194
    invoke-interface {p1}, Lorg/joda/time/m;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 195
    invoke-interface {p1}, Lorg/joda/time/m;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 205
    :goto_1
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 206
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/m;->getChronology()Lorg/joda/time/a;

    move-result-object p2

    goto :goto_0

    .line 196
    :cond_1
    instance-of v0, p0, Lorg/joda/time/h;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 197
    check-cast v0, Lorg/joda/time/h;

    invoke-interface {v1, v0, p1, p2}, Lorg/joda/time/a/i;->a(Lorg/joda/time/h;Ljava/lang/Object;Lorg/joda/time/a;)V

    goto :goto_1

    .line 199
    :cond_2
    new-instance v0, Lorg/joda/time/MutableInterval;

    invoke-direct {v0}, Lorg/joda/time/MutableInterval;-><init>()V

    .line 200
    invoke-interface {v1, v0, p1, p2}, Lorg/joda/time/a/i;->a(Lorg/joda/time/h;Ljava/lang/Object;Lorg/joda/time/a;)V

    .line 201
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 202
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 203
    invoke-virtual {v0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/joda/time/k;Lorg/joda/time/l;)V
    .locals 4

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 125
    invoke-static {p2}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 126
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 127
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/k;)J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/e;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 129
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/l;Lorg/joda/time/k;)V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 108
    invoke-static {p1}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 109
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 110
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/k;)J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/e;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 112
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/l;Lorg/joda/time/l;)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 87
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 88
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 89
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 92
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 93
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 94
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/l;Lorg/joda/time/o;)V
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 145
    invoke-static {p1}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    .line 146
    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 147
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 153
    :goto_0
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 154
    return-void

    .line 151
    :cond_0
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v3, v1}, Lorg/joda/time/a;->add(Lorg/joda/time/o;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/o;Lorg/joda/time/l;)V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/joda/time/base/d;-><init>()V

    .line 169
    invoke-static {p2}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v0

    .line 170
    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 171
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 177
    :goto_0
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 178
    return-void

    .line 175
    :cond_0
    iget-wide v2, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/joda/time/a;->add(Lorg/joda/time/o;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    goto :goto_0
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    return-object v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    return-wide v0
.end method

.method protected setInterval(JJLorg/joda/time/a;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    .line 249
    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    .line 250
    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    .line 251
    invoke-static {p5}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/a;

    .line 252
    return-void
.end method
