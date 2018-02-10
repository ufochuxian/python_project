.class public final Lorg/jsoup/select/d$ac;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 2
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 559
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 560
    .local v0, "p":Lorg/jsoup/nodes/f;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->x()Lorg/jsoup/select/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/c;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const-string v0, ":only-child"

    return-object v0
.end method
