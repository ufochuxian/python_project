.class abstract Lorg/jsoup/c/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 435
    iput-object p1, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    if-ne p0, p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 451
    check-cast v0, Lorg/jsoup/c/b$e;

    .line 452
    .local v0, "other":Lorg/jsoup/c/b$e;
    iget-object v3, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 453
    iget-object v3, v0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 454
    :cond_4
    iget-object v3, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    iget-object v4, v0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 440
    const/16 v0, 0x1f

    .line 441
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 442
    .local v1, "result":I
    iget-object v2, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 443
    return v1

    .line 442
    :cond_0
    iget-object v2, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/jsoup/c/b$e;->a:Ljava/lang/String;

    return-object v0
.end method
