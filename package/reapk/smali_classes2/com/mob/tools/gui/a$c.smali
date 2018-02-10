.class public Lcom/mob/tools/gui/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mob/tools/gui/a$b;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mob/tools/gui/a$f;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-boolean v0, p0, Lcom/mob/tools/gui/a$c;->c:Z

    .line 475
    iput-boolean v0, p0, Lcom/mob/tools/gui/a$c;->d:Z

    .line 476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/gui/a$c;->e:J

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/a$c;->h:J

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/a$c;->f:Ljava/util/ArrayList;

    .line 484
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;J)J
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # J

    .prologue
    .line 471
    iput-wide p1, p0, Lcom/mob/tools/gui/a$c;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$b;)Lcom/mob/tools/gui/a$b;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/a$c;->b:Lcom/mob/tools/gui/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$f;)Lcom/mob/tools/gui/a$f;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Lcom/mob/tools/gui/a$f;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/a$c;->g:Lcom/mob/tools/gui/a$f;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/a$c;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 493
    iget-object v1, p0, Lcom/mob/tools/gui/a$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/a$a;

    .line 494
    .local v0, "cb":Lcom/mob/tools/gui/a$a;
    iget-object v2, p0, Lcom/mob/tools/gui/a$c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/mob/tools/gui/a$a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 496
    .end local v0    # "cb":Lcom/mob/tools/gui/a$a;
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/mob/tools/gui/a$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/a$a;

    .line 488
    .local v0, "cb":Lcom/mob/tools/gui/a$a;
    iget-object v2, p0, Lcom/mob/tools/gui/a$c;->a:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/mob/tools/gui/a$a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 490
    .end local v0    # "cb":Lcom/mob/tools/gui/a$a;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/a$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$c;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/mob/tools/gui/a$c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/a$c;->b:Lcom/mob/tools/gui/a$b;

    return-object v0
.end method

.method static synthetic b(Lcom/mob/tools/gui/a$c;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;
    .param p1, "x1"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/mob/tools/gui/a$c;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/mob/tools/gui/a$c;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/a$c;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/tools/gui/a$c;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/mob/tools/gui/a$c;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/mob/tools/gui/a$c;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/mob/tools/gui/a$c;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/mob/tools/gui/a$c;)J
    .locals 2
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/mob/tools/gui/a$c;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/mob/tools/gui/a$c;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/mob/tools/gui/a$c;->a()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/a$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mob/tools/gui/a$c;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, "worker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/a$c;->g:Lcom/mob/tools/gui/a$f;

    invoke-virtual {v2}, Lcom/mob/tools/gui/a$f;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/a$c;->g:Lcom/mob/tools/gui/a$f;

    invoke-virtual {v2}, Lcom/mob/tools/gui/a$f;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
