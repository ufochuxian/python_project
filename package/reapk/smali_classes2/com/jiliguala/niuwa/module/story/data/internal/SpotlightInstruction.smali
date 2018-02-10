.class public Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:J

.field public end:J

.field public offset:I

.field public span:I

.field public start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;)V
    .locals 8
    .param p1, "pinspotInstruction"    # Ljava/lang/String;
    .param p2, "previousInstruction"    # Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    .line 13
    iput v4, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    .line 14
    iput v4, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->span:I

    .line 15
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->start:J

    .line 17
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->duration:J

    .line 20
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 25
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->duration:J

    .line 26
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    :goto_1
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    .line 27
    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iput v4, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->span:I

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    iget-wide v2, p2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->start:J

    .line 35
    iget-wide v2, p2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->duration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    .line 36
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    iget v2, p2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    .line 38
    :cond_1
    return-void

    .line 25
    :cond_2
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 26
    :cond_3
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 27
    :cond_4
    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method
