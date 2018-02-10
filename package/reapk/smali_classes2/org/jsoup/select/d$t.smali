.class public final Lorg/jsoup/select/d$t;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 4
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 590
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->P()Ljava/util/List;

    move-result-object v0

    .line 591
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/h;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 592
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 593
    .local v2, "n":Lorg/jsoup/nodes/h;
    instance-of v3, v2, Lorg/jsoup/nodes/c;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/jsoup/nodes/j;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/jsoup/nodes/e;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 595
    .end local v2    # "n":Lorg/jsoup/nodes/h;
    :goto_1
    return v3

    .line 591
    .restart local v2    # "n":Lorg/jsoup/nodes/h;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "n":Lorg/jsoup/nodes/h;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    const-string v0, ":empty"

    return-object v0
.end method
