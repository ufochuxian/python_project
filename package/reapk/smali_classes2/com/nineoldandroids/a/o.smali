.class public Lcom/nineoldandroids/a/o;
.super Lcom/nineoldandroids/a/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/a/o$a;
    }
.end annotation


# instance fields
.field private p:Lcom/nineoldandroids/a/o$a;

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nineoldandroids/a/q;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/a/o;->q:J

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 50
    return-void
.end method

.method public a(Lcom/nineoldandroids/a/o$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/nineoldandroids/a/o$a;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nineoldandroids/a/o;->p:Lcom/nineoldandroids/a/o$a;

    .line 45
    return-void
.end method

.method c(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 18
    iget v0, p0, Lcom/nineoldandroids/a/o;->l:I

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/a/o;->l:I

    .line 20
    iget-wide v0, p0, Lcom/nineoldandroids/a/o;->k:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 21
    iput-wide p1, p0, Lcom/nineoldandroids/a/o;->j:J

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/a/o;->p:Lcom/nineoldandroids/a/o$a;

    if-eqz v0, :cond_1

    .line 29
    iget-wide v0, p0, Lcom/nineoldandroids/a/o;->j:J

    sub-long v2, p1, v0

    .line 30
    .local v2, "totalTime":J
    iget-wide v0, p0, Lcom/nineoldandroids/a/o;->q:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 31
    .local v4, "deltaTime":J
    :goto_1
    iput-wide p1, p0, Lcom/nineoldandroids/a/o;->q:J

    .line 32
    iget-object v0, p0, Lcom/nineoldandroids/a/o;->p:Lcom/nineoldandroids/a/o$a;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/nineoldandroids/a/o$a;->a(Lcom/nineoldandroids/a/o;JJ)V

    .line 34
    .end local v2    # "totalTime":J
    .end local v4    # "deltaTime":J
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_2
    iget-wide v0, p0, Lcom/nineoldandroids/a/o;->k:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/nineoldandroids/a/o;->j:J

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/a/o;->k:J

    goto :goto_0

    .line 30
    .restart local v2    # "totalTime":J
    :cond_3
    iget-wide v0, p0, Lcom/nineoldandroids/a/o;->q:J

    sub-long v4, p1, v0

    goto :goto_1
.end method

.method n()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
