.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->b:Ljava/lang/String;

    .line 466
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->c:Ljava/lang/String;

    .line 467
    return-void

    .line 466
    :cond_0
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .param p4, "x3"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;

    .prologue
    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    if-ne p0, p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 473
    :cond_1
    instance-of v3, p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    if-nez v3, :cond_2

    move v1, v2

    .line 474
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 476
    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    .line 478
    .local v0, "that":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 479
    goto :goto_0

    .line 481
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
