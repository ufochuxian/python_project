.class public final Lorg/jsoup/select/d$y;
.super Lorg/jsoup/select/d$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 442
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$n;-><init>(II)V

    .line 443
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    const-string v0, "nth-child"

    return-object v0
.end method

.method protected b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I
    .locals 1
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 446
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->B()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
