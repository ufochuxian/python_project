.class Lcom/nineoldandroids/a/d$1;
.super Lcom/nineoldandroids/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/a/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nineoldandroids/a/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/a/d;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/nineoldandroids/a/d$1;->c:Lcom/nineoldandroids/a/d;

    iput-object p2, p0, Lcom/nineoldandroids/a/d$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nineoldandroids/a/c;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/a/d$1;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/d$1;->a:Z

    .line 481
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 5
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 484
    iget-boolean v3, p0, Lcom/nineoldandroids/a/d$1;->a:Z

    if-nez v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/nineoldandroids/a/d$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 486
    .local v2, "numNodes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 487
    iget-object v3, p0, Lcom/nineoldandroids/a/d$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 488
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v3, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v3}, Lcom/nineoldandroids/a/a;->a()V

    .line 489
    iget-object v3, p0, Lcom/nineoldandroids/a/d$1;->c:Lcom/nineoldandroids/a/d;

    invoke-static {v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    .end local v2    # "numNodes":I
    :cond_0
    return-void
.end method
