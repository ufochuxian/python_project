.class public abstract Lorg/jsoup/select/d$n;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/d$n;-><init>(II)V

    .line 407
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 401
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 402
    iput p1, p0, Lorg/jsoup/select/d$n;->a:I

    .line 403
    iput p2, p0, Lorg/jsoup/select/d$n;->b:I

    .line 404
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 6
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 412
    .local v0, "p":Lorg/jsoup/nodes/f;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/jsoup/nodes/Document;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 417
    :cond_1
    :goto_0
    return v2

    .line 414
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/d$n;->b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I

    move-result v1

    .line 415
    .local v1, "pos":I
    iget v4, p0, Lorg/jsoup/select/d$n;->a:I

    if-nez v4, :cond_3

    iget v4, p0, Lorg/jsoup/select/d$n;->b:I

    if-eq v1, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 417
    :cond_3
    iget v4, p0, Lorg/jsoup/select/d$n;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lorg/jsoup/select/d$n;->a:I

    mul-int/2addr v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Lorg/jsoup/select/d$n;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lorg/jsoup/select/d$n;->a:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected abstract b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    iget v0, p0, Lorg/jsoup/select/d$n;->a:I

    if-nez v0, :cond_0

    .line 423
    const-string v0, ":%s(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/d$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/d$n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget v0, p0, Lorg/jsoup/select/d$n;->b:I

    if-nez v0, :cond_1

    .line 425
    const-string v0, ":%s(%dn)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/d$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/d$n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, ":%s(%dn%+d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/d$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/d$n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lorg/jsoup/select/d$n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method