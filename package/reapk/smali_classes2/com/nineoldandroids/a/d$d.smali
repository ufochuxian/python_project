.class Lcom/nineoldandroids/a/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/a/d;

.field private b:Lcom/nineoldandroids/a/d$e;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/d$e;I)V
    .locals 0
    .param p1, "animatorSet"    # Lcom/nineoldandroids/a/d;
    .param p2, "node"    # Lcom/nineoldandroids/a/d$e;
    .param p3, "rule"    # I

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/nineoldandroids/a/d$d;->a:Lcom/nineoldandroids/a/d;

    .line 676
    iput-object p2, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    .line 677
    iput p3, p0, Lcom/nineoldandroids/a/d$d;->c:I

    .line 678
    return-void
.end method

.method private a(Lcom/nineoldandroids/a/a;)V
    .locals 6
    .param p1, "dependencyAnimation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 720
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->a:Lcom/nineoldandroids/a/d;

    iget-boolean v4, v4, Lcom/nineoldandroids/a/d;->b:Z

    if-eqz v4, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const/4 v1, 0x0

    .line 725
    .local v1, "dependencyToRemove":Lcom/nineoldandroids/a/d$c;
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 726
    .local v3, "numDependencies":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 727
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$c;

    .line 728
    .local v0, "dependency":Lcom/nineoldandroids/a/d$c;
    iget v4, v0, Lcom/nineoldandroids/a/d$c;->d:I

    iget v5, p0, Lcom/nineoldandroids/a/d$d;->c:I

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    if-ne v4, p1, :cond_3

    .line 731
    move-object v1, v0

    .line 732
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/a/a;->b(Lcom/nineoldandroids/a/a$a;)V

    .line 736
    .end local v0    # "dependency":Lcom/nineoldandroids/a/d$c;
    :cond_2
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 737
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 739
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v4, v4, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/a;->a()V

    .line 740
    iget-object v4, p0, Lcom/nineoldandroids/a/d$d;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v4}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/nineoldandroids/a/d$d;->b:Lcom/nineoldandroids/a/d$e;

    iget-object v5, v5, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    .restart local v0    # "dependency":Lcom/nineoldandroids/a/d$c;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 686
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 692
    iget v0, p0, Lcom/nineoldandroids/a/d$d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 693
    invoke-direct {p0, p1}, Lcom/nineoldandroids/a/d$d;->a(Lcom/nineoldandroids/a/a;)V

    .line 695
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 701
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 707
    iget v0, p0, Lcom/nineoldandroids/a/d$d;->c:I

    if-nez v0, :cond_0

    .line 708
    invoke-direct {p0, p1}, Lcom/nineoldandroids/a/d$d;->a(Lcom/nineoldandroids/a/a;)V

    .line 710
    :cond_0
    return-void
.end method
