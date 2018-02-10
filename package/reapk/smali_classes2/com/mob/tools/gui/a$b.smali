.class public Lcom/mob/tools/gui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput v2, p0, Lcom/mob/tools/gui/a$b;->a:I

    .line 509
    iput v2, p0, Lcom/mob/tools/gui/a$b;->b:I

    .line 510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/gui/a$b;->c:J

    .line 511
    iput v2, p0, Lcom/mob/tools/gui/a$b;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 514
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/a$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/mob/tools/gui/a$b;->a:I

    if-lez v1, :cond_0

    .line 520
    iget v1, p0, Lcom/mob/tools/gui/a$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    iget v1, p0, Lcom/mob/tools/gui/a$b;->b:I

    if-lez v1, :cond_1

    .line 523
    iget v1, p0, Lcom/mob/tools/gui/a$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    :cond_1
    iget-wide v2, p0, Lcom/mob/tools/gui/a$b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 526
    iget-wide v2, p0, Lcom/mob/tools/gui/a$b;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 528
    :cond_2
    iget v1, p0, Lcom/mob/tools/gui/a$b;->d:I

    if-lez v1, :cond_3

    .line 529
    iget v1, p0, Lcom/mob/tools/gui/a$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
