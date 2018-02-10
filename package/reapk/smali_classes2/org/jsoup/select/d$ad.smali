.class public final Lorg/jsoup/select/d$ad;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 8
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 571
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v2

    .line 572
    .local v2, "p":Lorg/jsoup/nodes/f;
    if-eqz v2, :cond_0

    instance-of v6, v2, Lorg/jsoup/nodes/Document;

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 579
    :cond_1
    :goto_0
    return v4

    .line 574
    :cond_2
    const/4 v3, 0x0

    .line 575
    .local v3, "pos":I
    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->t()Lorg/jsoup/select/c;

    move-result-object v0

    .line 576
    .local v0, "family":Lorg/jsoup/select/c;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/select/c;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 577
    invoke-virtual {v0, v1}, Lorg/jsoup/select/c;->b(I)Lorg/jsoup/nodes/f;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v6

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jsoup/b/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 576
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    :cond_4
    if-eq v3, v4, :cond_1

    move v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    const-string v0, ":only-of-type"

    return-object v0
.end method
