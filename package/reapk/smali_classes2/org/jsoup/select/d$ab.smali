.class public Lorg/jsoup/select/d$ab;
.super Lorg/jsoup/select/d$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$n;-><init>(II)V

    .line 483
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string v0, "nth-of-type"

    return-object v0
.end method

.method protected b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I
    .locals 5
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "pos":I
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    .line 488
    .local v0, "family":Lorg/jsoup/select/c;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/select/c;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 489
    invoke-virtual {v0, v1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 490
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 492
    :cond_1
    return v2

    .line 488
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
