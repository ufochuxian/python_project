.class Lcom/nineoldandroids/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/a/d;

.field private b:Lcom/nineoldandroids/a/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/d;)V
    .locals 0
    .param p2, "animatorSet"    # Lcom/nineoldandroids/a/d;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p2, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    .line 864
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 4
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 867
    iget-object v2, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-boolean v2, v2, Lcom/nineoldandroids/a/d;->b:Z

    if-nez v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-object v2, v2, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-object v2, v2, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 873
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 874
    iget-object v2, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-object v2, v2, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/a/a$a;

    iget-object v3, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    invoke-interface {v2, v3}, Lcom/nineoldandroids/a/a$a;->onAnimationCancel(Lcom/nineoldandroids/a/a;)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 9
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 883
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/a/a;->b(Lcom/nineoldandroids/a/a$a;)V

    .line 884
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v7}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 885
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    invoke-static {v7}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 886
    .local v1, "animNode":Lcom/nineoldandroids/a/d$e;
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/nineoldandroids/a/d$e;->f:Z

    .line 887
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-boolean v7, v7, Lcom/nineoldandroids/a/d;->b:Z

    if-nez v7, :cond_3

    .line 890
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    invoke-static {v7}, Lcom/nineoldandroids/a/d;->c(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v5

    .line 891
    .local v5, "sortedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    const/4 v0, 0x1

    .line 892
    .local v0, "allDone":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 893
    .local v4, "numSortedNodes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 894
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/d$e;

    iget-boolean v7, v7, Lcom/nineoldandroids/a/d$e;->f:Z

    if-nez v7, :cond_1

    .line 895
    const/4 v0, 0x0

    .line 899
    :cond_0
    if-eqz v0, :cond_3

    .line 902
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-object v7, v7, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 903
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->a:Lcom/nineoldandroids/a/d;

    iget-object v7, v7, Lcom/nineoldandroids/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 904
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 905
    .local v3, "numListeners":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 906
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/a/a$a;

    iget-object v8, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    invoke-interface {v7, v8}, Lcom/nineoldandroids/a/a$a;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V

    .line 905
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 893
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :cond_2
    iget-object v7, p0, Lcom/nineoldandroids/a/d$a;->b:Lcom/nineoldandroids/a/d;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/d;Z)Z

    .line 912
    .end local v0    # "allDone":Z
    .end local v2    # "i":I
    .end local v4    # "numSortedNodes":I
    .end local v5    # "sortedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/d$e;>;"
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 916
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 920
    return-void
.end method
