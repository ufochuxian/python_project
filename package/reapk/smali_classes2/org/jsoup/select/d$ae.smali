.class public final Lorg/jsoup/select/d$ae;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ae"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    const/4 v1, 0x0

    .line 547
    instance-of v2, p1, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/f;->a(I)Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 548
    .local v0, "r":Lorg/jsoup/nodes/f;
    :goto_0
    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .end local v0    # "r":Lorg/jsoup/nodes/f;
    :cond_1
    move-object v0, p1

    .line 547
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const-string v0, ":root"

    return-object v0
.end method
