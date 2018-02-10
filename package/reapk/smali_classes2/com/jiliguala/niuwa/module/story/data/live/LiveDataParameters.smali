.class public Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_PARAMETERS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;


# instance fields
.field protected one:Ljava/lang/Object;

.field protected three:Ljava/lang/Object;

.field protected two:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->NO_PARAMETERS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "one"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "one"    # Ljava/lang/Object;
    .param p2, "two"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "one"    # Ljava/lang/Object;
    .param p2, "two"    # Ljava/lang/Object;
    .param p3, "three"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    instance-of v3, p1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-nez v3, :cond_2

    move v1, v2

    .line 48
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    .line 52
    .local v0, "that":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 53
    goto :goto_0

    .line 52
    :cond_4
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 55
    goto :goto_0

    .line 54
    :cond_7
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 56
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 57
    goto :goto_0

    .line 56
    :cond_9
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    return-object v0
.end method

.method public getThird()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->one:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 65
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->two:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 66
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->three:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 67
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 64
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 65
    goto :goto_1
.end method
